Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/GainMap?download=true
inline.NumInlined: 6234
inline.NumDeleted: 2222
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN7nanogui5ArrayIiLm2EEEEEvPvRNS0_13parse_contextIcEERS3_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.2.0..sroa_idx.i17.i33.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.pre.i = load i32, ptr %0, align 4, !tbaa !130
  %i.i = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt3__19enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS7_bEE5valuentsr3std7is_sameIS7_T_EE5valueEiE4typeELi0EEET0_SB_S7_(ptr nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i32 noundef %.pre.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  store ptr @.str.114, ptr %3, align 8, !tbaa !71
  store i64 2, ptr %.sroa.2.0..sroa_idx.i16.i32.i, align 8, !tbaa !72
  store i32 0, ptr %i.e, align 8, !tbaa !75
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !77
  store i64 0, ptr %i.g, align 8, !tbaa !79
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i17.i33.i, align 8, !tbaa !63
  store ptr null, ptr %i.h, align 8, !tbaa !80
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.114, i64 2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !130
  %i.l = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt3__19enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS7_bEE5valuentsr3std7is_sameIS7_T_EE5valueEiE4typeELi0EEET0_SB_S7_(ptr nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i32 noundef %i.k) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr @.str.115, ptr %4, align 8, !tbaa !71
  %.sroa.2.0..sroa_idx.i16.i30.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %.sroa.2.0..sroa_idx.i16.i30.i, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.n, align 8, !tbaa !77
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.o, align 8, !tbaa !79
  %.sroa.2.0..sroa_idx.i17.i31.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %8, ptr %.sroa.2.0..sroa_idx.i17.i31.i, align 8, !tbaa !63
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.p, align 8, !tbaa !80
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.115, i64 1, ptr noundef nonnull align 8 dereferenceable(56) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  ret void
}

declare void @_ZN3tev10ThreadPoolC1Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN3tev10ThreadPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE13__assign_fromB8ne180100INS_27__optional_move_assign_baseIS3_Lb0EEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(145) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !96, !range !97, !noundef !98 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load i8, ptr %i.c, align 8, !tbaa !96, !range !97, !noundef !98
  %i.e = icmp eq i8 %i.b, %i.d
  %i.f = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ne ptr %1, %0
  %or.cond.not = and i1 %.not.i.i.i, %i.f
  br i1 %or.cond.not, label %bb.c, label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !121  ; 2 uses
  %i.i = icmp ugt i64 %i.h, 5
  %i.j = load ptr, ptr %1, align 8, !tbaa !120    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !119  ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !121  ; 2 uses
  %i.o = icmp ugt i64 %i.n, 5
  br i1 %i.o, label %bb.e, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !tbaa !120
  %i.q = mul i64 %i.n, 24
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.q) #36
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %0, align 8, !tbaa !120
  store i64 %i.h, ptr %i.m, align 8, !tbaa !121
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.r, align 8, !tbaa !119
  store i64 5, ptr %i.g, align 8, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.s, ptr %1, align 8, !tbaa !120
  store i64 0, ptr %i.k, align 8, !tbaa !119
  br label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds [24 x i8], ptr %i.j, i64 %i.l
  invoke void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE17assign_with_rangeINS2_13move_iteratorIPS6_EETnPNS2_9enable_ifIXsr3std13is_assignableIRS6_DTdeclsr3stdE7declvalIT_EEEEE5valueEvE4typeELPv0EEEvSF_SF_NS2_20forward_iterator_tagE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %i.j, ptr %i.t)
          to label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #39
  unreachable

bb.h:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !121  ; 2 uses
  %i.y = icmp ugt i64 %i.x, 5
  br i1 %i.y, label %bb.j, label %_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !120
  %i.aa = mul i64 %i.x, 24
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.aa) #36
  br label %_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit

_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit: ; preds = %bb.i, %bb.j
  store i8 0, ptr %i.a, align 8, !tbaa !96
  br label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !121 ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 5
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %1, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !119
  store ptr %i.ae, ptr %0, align 8, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !121
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !119
  store i64 5, ptr %i.ab, align 8, !tbaa !121
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.aj, ptr %1, align 8, !tbaa !120
  store i64 0, ptr %i.af, align 8, !tbaa !119
  br label %_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.ak, align 8, !tbaa !121
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !120
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i, label %.split8.i.i.i.i.i.i.i.i.i.i

.split8.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.m
  %.idx.i.i.i.i.i.i.i = mul nsw i64 %i.an, 24
  %i.ao = load ptr, ptr %1, align 8, !tbaa !120
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %i.ao, i64 %.idx.i.i.i.i.i.i.i, i1 false)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !119
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i: ; preds = %.split8.i.i.i.i.i.i.i.i.i.i, %bb.m
  %i.ap = phi i64 [ 0, %bb.m ], [ %.pre.i.i.i.i.i.i.i, %.split8.i.i.i.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !119
  br label %_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit

_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit: ; preds = %bb.l, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18uninitialized_moveIvS6_TnNS2_9enable_ifIXaasr29is_explicitly_move_insertableIT0_EE5valueoontsr3std7is_sameIT_NS8_23strong_exception_policyEEE5valuesr18relocate_with_moveISB_EE5valueEbE4typeELb1EEEPS6_SG_SG_SG_.exit.i.i.i.i.i.i.i
  store i8 1, ptr %i.a, align 8, !tbaa !96
  br label %_ZN3tev16MultiChannelViewIfEaSEOS1_.exit

_ZN3tev16MultiChannelViewIfEaSEOS1_.exit:         ; preds = %bb.f, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE19move_assign_pointerILj5EEERS8_RNS1_IS7_XT_EEE.exit.i.i.i.i.i, %_ZNSt3__124__optional_destruct_baseIN3tev16MultiChannelViewIfEELb0EE5resetB8ne180100Ev.exit, %_ZNSt3__123__optional_storage_baseIN3tev16MultiChannelViewIfEELb0EE11__constructB8ne180100IJS3_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE17assign_with_rangeINS2_13move_iteratorIPS6_EETnPNS2_9enable_ifIXsr3std13is_assignableIRS6_DTdeclsr3stdE7declvalIT_EEEEE5valueEvE4typeELPv0EEEvSF_SF_NS2_20forward_iterator_tagE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !121  ; 6 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27throw_allocation_size_errorEv() #35
  unreachable

_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit: ; preds = %bb.b
  %i.i = sub nuw i64 768614336404564650, %i.f
  %.not.i.i.i = icmp ugt i64 %i.i, %i.f
  %i.j = shl nuw i64 %i.f, 1
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.d)
  %.1.i.i.i = select i1 %.not.i.i.i, i64 %..i.i.i, i64 768614336404564650 ; 3 uses
  %i.k = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.k, label %bb.d, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit

bb.d:                                             ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit: ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  %i.l = mul nuw i64 %.1.i.i.i, 24
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37 ; 2 uses
  %.not.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit, label %.split8.i.i

.split8.i.i:                                      ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit, %.split8.i.i
  %i.n = load i64, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.o = icmp ugt i64 %i.n, 5
  br i1 %i.o, label %bb.e, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

bb.e:                                             ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !120
  %i.q = mul i64 %i.n, 24
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.q) #36
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit: ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit, %bb.e
  store ptr %i.m, ptr %0, align 8, !tbaa !120
  store i64 %.1.i.i.i, ptr %i.e, align 8, !tbaa !121
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.d, 6
  %i.s = icmp ugt i64 %i.f, 5
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i.i20 = icmp eq ptr %2, %1
  br i1 %.not.i.i20, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit23, label %.split8.i.i21

.split8.i.i21:                                    ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit23

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit23: ; preds = %bb.g, %.split8.i.i21
  %i.u = load ptr, ptr %0, align 8, !tbaa !120
  %i.v = mul i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #36
  store ptr %i.t, ptr %0, align 8, !tbaa !120
  store i64 5, ptr %i.e, align 8, !tbaa !121
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !119  ; 4 uses
  %i.y = icmp ult i64 %i.x, %i.d
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i24 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i24, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i, label %.split6.i.i.i

.split6.i.i.i:                                    ; preds = %bb.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !120
  %i.aa = mul i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %1, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds [24 x i8], ptr %1, i64 %i.x
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i: ; preds = %.split6.i.i.i, %bb.i
  %phi.call.i.i.i = phi ptr [ %i.ab, %.split6.i.i.i ], [ %1, %bb.i ] ; 3 uses
  %.not.i.i9.i = icmp eq ptr %2, %phi.call.i.i.i
  br i1 %.not.i.i9.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit, label %.split8.i.i.i

.split8.i.i.i:                                    ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !120
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !119
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %phi.call.i.i.i to i64
  %i.ag = sub i64 %i.a, %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %phi.call.i.i.i, i64 %i.ag, i1 false)
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp eq ptr %1, %2
  br i1 %i.ah, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !120
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %storemerge7.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.06.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge7.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.06.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1266
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge7.i.i.i.i.i.i.i, i64 24
  %i.al = icmp eq ptr %i.aj, %2
  br i1 %i.al, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1265

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsINS2_13move_iteratorIPS6_EEEEvT_SD_m.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j, %.split8.i.i.i, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEENS2_13move_iteratorISC_EESI_mSA_.exit.i, %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEESA_NS2_13move_iteratorISC_EESG_SA_.exit23, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.am, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27throw_allocation_size_errorEv() local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.116)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #35
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE17assign_with_rangeIPKS6_TnPNS2_9enable_ifIXsr3std13is_assignableIRS6_DTdeclsr3stdE7declvalIT_EEEEE5valueEvE4typeELPv0EEEvSE_SE_NS2_20forward_iterator_tagE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = sdiv exact i64 %i.c, 24                  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !121  ; 6 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 768614336404564650
  br i1 %i.h, label %bb.c, label %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27throw_allocation_size_errorEv() #35
  unreachable

_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit: ; preds = %bb.b
  %i.i = sub nuw i64 768614336404564650, %i.f
  %.not.i.i.i = icmp ugt i64 %i.i, %i.f
  %i.j = shl nuw i64 %i.f, 1
  %..i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.d)
  %.1.i.i.i = select i1 %.not.i.i.i, i64 %..i.i.i, i64 768614336404564650 ; 3 uses
  %i.k = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.k, label %bb.d, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit

bb.d:                                             ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #35
  unreachable

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit: ; preds = %_ZNK3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE30checked_calculate_new_capacityEm.exit
  %i.l = mul nuw i64 %.1.i.i.i, 24
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37 ; 2 uses
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit, label %.split8.i

.split8.i:                                        ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit: ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE18unchecked_allocateEm.exit, %.split8.i
  %i.n = load i64, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.o = icmp ugt i64 %i.n, 5
  br i1 %i.o, label %bb.e, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

bb.e:                                             ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !120
  %i.q = mul i64 %i.n, 24
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.q) #36
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit: ; preds = %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit, %bb.e
  store ptr %i.m, ptr %0, align 8, !tbaa !120
  store i64 %.1.i.i.i, ptr %i.e, align 8, !tbaa !121
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

bb.f:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.d, 6
  %i.s = icmp ugt i64 %i.f, 5
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not.i19 = icmp eq ptr %2, %1
  br i1 %.not.i19, label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22, label %.split8.i20

.split8.i20:                                      ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22

_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22: ; preds = %bb.g, %.split8.i20
  %i.u = load ptr, ptr %0, align 8, !tbaa !120
  %i.v = mul i64 %i.f, 24
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.v) #36
  store ptr %i.t, ptr %0, align 8, !tbaa !120
  store i64 5, ptr %i.e, align 8, !tbaa !121
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !119  ; 4 uses
  %i.y = icmp ult i64 %i.x, %i.d
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i, label %.split6.i.i

.split6.i.i:                                      ; preds = %bb.i
  %i.z = load ptr, ptr %0, align 8, !tbaa !120
  %i.aa = mul i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %1, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds [24 x i8], ptr %1, i64 %i.x
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i: ; preds = %.split6.i.i, %bb.i
  %phi.call.i.i = phi ptr [ %i.ab, %.split6.i.i ], [ %1, %bb.i ] ; 3 uses
  %.not.i7.i = icmp eq ptr %2, %phi.call.i.i
  br i1 %.not.i7.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit, label %.split8.i.i

.split8.i.i:                                      ; preds = %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !120
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !119
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %phi.call.i.i to i64
  %i.ag = sub i64 %i.a, %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %phi.call.i.i, i64 %i.ag, i1 false)
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %0, align 8, !tbaa !120
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ah, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit

_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE27overwrite_existing_elementsIPKS6_EEvT_SC_m.exit: ; preds = %bb.k, %bb.j, %.split8.i.i, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE16copy_n_return_inIPKS6_TnPNS2_9enable_ifIXsr22is_memcpyable_iteratorIT_EE5valueEvE4typeELPv0EEESD_SD_mPS6_.exit.i, %_ZN3gch6detail19allocator_interfaceINSt3__19allocatorIN3tev11ChannelViewIfEEEEE18uninitialized_copyIPKS6_TnNS2_9enable_ifIXsr36is_uninitialized_memcpyable_iteratorIT_EE5valueEbE4typeELb1EEEPS6_SD_SD_SG_.exit22, %_ZN3gch6detail17small_vector_baseINSt3__19allocatorIN3tev11ChannelViewIfEEEELj5EE4wipeEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.ai, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @exp2f(float noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #3

; Function Attrs: nounwind
declare void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef float @_ZNSt3__14stofERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #26

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_30preprocessAndApplyAppleGainMapERNS_9ImageDataES7_RKNS2_8optionalINS_3IfdEEERKNS_15GainmapHeadroomEiE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESI_S4_S4_mSK_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task", align 8         ; 11 uses
  %10 = alloca %class.anon.359, align 8           ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #38 ; 24 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_30preprocessAndApplyAppleGainMapERNS_9ImageDataES7_RKNS2_8optionalINS_3IfdEEERKNS_15GainmapHeadroomEiE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESI_S4_S4_mSK_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS_15simdParallelForITkNS2_8integralEmZNS_30preprocessAndApplyAppleGainMapERNS_9ImageDataES7_RKNS2_8optionalINS_3IfdEEERKNS_15GainmapHeadroomEiE3$_0EENS_4TaskIvEERS0_S4_S4_mT0_iEUlmmE_EESI_S4_S4_mSK_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr180 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr180, align 8, !tbaa !80
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #37
          to label %bb.a unwind label %.body.from.172 ; 5 uses

.body.from.172:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #34
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !1280
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !83, !noalias !1280
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !1280
  store i32 2, ptr %i.g, align 8, !tbaa !85, !noalias !1280
  store ptr %i.f, ptr %i.d, align 8, !tbaa !89, !alias.scope !1281
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !90, !alias.scope !1281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !1282
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %bb.b unwind label %bb.d, !noalias !1282

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !80, !alias.scope !1282
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %7, align 8, !tbaa !93, !noalias !1282
  store ptr %i.j, ptr %i.i, align 8, !tbaa !93, !alias.scope !1282
  store ptr null, ptr %7, align 8, !tbaa !93, !noalias !1282
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !90, !noalias !1282 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !80, !noalias !1282
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !80, !alias.scope !1282
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1282 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #39, !noalias !1282
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #34, !noalias !1282
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !1282
  %i.s = sub i64 %3, %2                           ; 4 uses
end_hunk_0
