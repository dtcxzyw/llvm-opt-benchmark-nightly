Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-conversions?download=true
inline.NumInlined: 15054
inline.NumDeleted: 6219
loop-unroll.NumCompletelyUnrolled: 138
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 140
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail20from_json_array_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEES5_IbSaIbEETnNSt9enable_ifIXsr3std13is_assignableIRT0_SJ_EE5valueEiE4typeELi0EEEDTcmcmcldtfp0_7reserveclsr3stdE7declvalINSJ_9size_typeEEEEcldtfp_3getINSJ_10value_typeEEEcvv_EERKT_SK_NS1_12priority_tagILj1EEE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !92
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.t, %bb.c ] ; 3 uses
  %i.u = icmp ugt i64 %.0.i, 9223372036854775744
  br i1 %i.u, label %.noexc, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread

.noexc:                                           ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.299) #33
  unreachable

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %_ZNSt6vectorIbSaIbEE7reserveEm.exit, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread.thread: ; preds = %bb.a, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread
  %.0.i1721 = phi i64 [ %.0.i, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread ], [ 1, %bb.a ]
  %i.v = add nuw nsw i64 %.0.i1721, 63            ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.w, 1152921504606846968
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #32 ; 4 uses
  store ptr %i.y, ptr %2, align 8
  store i32 0, ptr %i.a, align 8
  store ptr %i.y, ptr %i.b, align 8
  store i32 0, ptr %i.c, align 8
  %i.z = lshr i64 %i.v, 6
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !244
  br label %_ZNSt6vectorIbSaIbEE7reserveEm.exit

_ZNSt6vectorIbSaIbEE7reserveEm.exit:              ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread.thread, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread
  %.sroa.0.0.copyload.i = phi ptr [ null, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread ], [ %i.y, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.thread.thread ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  store ptr %0, ptr %3, align 8, !tbaa !398, !alias.scope !2993
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !alias.scope !2993
  store i64 -9223372036854775808, ptr %i.ac, align 8, !tbaa !399, !alias.scope !2993
  switch i8 %i.e, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread18
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread19
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread18: ; preds = %_ZNSt6vectorIbSaIbEE7reserveEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !71, !noalias !2993 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90, !noalias !2993
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !100, !alias.scope !2993
  store ptr %0, ptr %4, align 8, !tbaa !398, !alias.scope !2994
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.aj, align 8
  store i64 -9223372036854775808, ptr %i.ai, align 8, !tbaa !399, !alias.scope !2994
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !100, !alias.scope !2995
  br label %bb.e

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread19: ; preds = %_ZNSt6vectorIbSaIbEE7reserveEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71, !noalias !2993 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !318, !noalias !2993
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !318, !alias.scope !2993
  store ptr %0, ptr %4, align 8, !tbaa !398, !alias.scope !2996
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.ap, align 8
  store i64 -9223372036854775808, ptr %i.aq, align 8, !tbaa !399, !alias.scope !2996
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !318, !noalias !2995
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !318, !alias.scope !2995
  br label %bb.e

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread: ; preds = %_ZNSt6vectorIbSaIbEE7reserveEm.exit.thread, %_ZNSt6vectorIbSaIbEE7reserveEm.exit
  %i.au = phi ptr [ %i.g, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.thread ], [ %i.ac, %_ZNSt6vectorIbSaIbEE7reserveEm.exit ]
  %.sroa.0.0.copyload.i29 = phi ptr [ null, %_ZNSt6vectorIbSaIbEE7reserveEm.exit.thread ], [ %.sroa.0.0.copyload.i, %_ZNSt6vectorIbSaIbEE7reserveEm.exit ]
  store i64 1, ptr %i.au, align 8, !tbaa !399, !alias.scope !2993
  br label %bb.d

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit: ; preds = %_ZNSt6vectorIbSaIbEE7reserveEm.exit
  store i64 0, ptr %i.ac, align 8, !tbaa !399, !alias.scope !2993
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread
  %.sroa.0.0.copyload.i28 = phi ptr [ %.sroa.0.0.copyload.i29, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread ], [ %.sroa.0.0.copyload.i, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit ]
  store ptr %0, ptr %4, align 8, !tbaa !398
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.aw, align 8, !tbaa !399, !alias.scope !2995
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread19, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread18
  %.sroa.0.0.copyload.i27 = phi ptr [ %.sroa.0.0.copyload.i28, %bb.d ], [ %.sroa.0.0.copyload.i, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread19 ], [ %.sroa.0.0.copyload.i, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit.thread18 ]
  store ptr %2, ptr %5, align 8, !tbaa !3001, !alias.scope !3002
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.0.0.copyload.i27, ptr %i.ax, align 8, !alias.scope !3002
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !3002
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZSt9transformIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEESt15insert_iteratorIS6_IbSaIbEEEZNS2_20from_json_array_implISG_SL_TnNSt9enable_ifIXsr3std13is_assignableIRT0_SP_EE5valueEiE4typeELi0EEEDTcmcmcldtfL0p0_7reserveclsr3stdE7declvalINSP_9size_typeEEEEcldtfL0p_3getINSP_10value_typeEEEcvv_EERKT_SQ_NS2_12priority_tagILj1EEEEUlRSH_E_ESP_SW_SW_SP_T1_(ptr dead_on_unwind nonnull writable sret(%"class.std::insert_iterator.1027") align 8 %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %3, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %4, ptr noundef nonnull byval(%"class.std::insert_iterator.1027") align 8 %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ay = load ptr, ptr %1, align 8, !tbaa !241   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !244 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bf
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bd) #29
  store ptr null, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.51.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %.sroa.51.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  store ptr null, ptr %i.az, align 8
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.h:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.pre = load ptr, ptr %2, align 8, !tbaa !241   ; 2 uses
  %.not.i.i11 = icmp eq ptr %.pre, null
  br i1 %.not.i.i11, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !244 ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.pre to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bn
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bl) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit12

_ZNSt13_Bvector_baseISaIbEED2Ev.exit12:           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt9transformIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEESt15insert_iteratorIS6_IbSaIbEEEZNS2_20from_json_array_implISG_SL_TnNSt9enable_ifIXsr3std13is_assignableIRT0_SP_EE5valueEiE4typeELi0EEEDTcmcmcldtfL0p0_7reserveclsr3stdE7declvalINSP_9size_typeEEEEcldtfL0p_3getINSP_10value_typeEEEcvv_EERKT_SQ_NS2_12priority_tagILj1EEEEUlRSH_E_ESP_SW_SW_SP_T1_(ptr dead_on_unwind noalias writable sret(%"class.std::insert_iterator.1027") align 8 %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %2, ptr noundef byval(%"class.std::insert_iterator.1027") align 8 %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = tail call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.b, label %bb.j, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8
  %.promoted2 = load i32, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit
  %i.k = phi i32 [ %.promoted2, %.lr.ph ], [ %spec.select, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ] ; 6 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %spec.select4, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ] ; 3 uses
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !162
  call void @_ZN8nlohmann16json_abi_v3_12_06detail9from_jsonINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEvRKT_RNSG_9boolean_tE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.n = load i8, ptr %i.a, align 1, !tbaa !162, !range !129, !noundef !130
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !241  ; 3 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !241  ; 7 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !244
  %.not.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.2.0.copyload.i.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.s = icmp eq ptr %i.l, %i.q
  %i.t = icmp eq i32 %i.k, %.sroa.2.0.copyload.i.i.i
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = add i32 %i.k, 1
  store i32 %i.v, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !498
  %i.w = icmp eq i32 %i.k, 63
  br i1 %i.w, label %bb.e, label %_ZNSt13_Bit_iteratorppEi.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !498
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.x, ptr %i.f, align 8, !tbaa !241
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i:                ; preds = %bb.e, %bb.d
  %i.y = zext i32 %i.k to i64                     ; 3 uses
  %i.z = shl nuw i64 1, %i.y                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !82
  %i.ab = or i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !82
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit.i

bb.g:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.ac = xor i64 %i.z, -1
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !82
  %i.ae = and i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !82
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit.i

.critedge.i.i:                                    ; preds = %bb.c, %bb.b
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr %i.l, i32 %i.k, i1 noundef zeroext %i.o)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !241
  %.pre58.i.i = zext i32 %i.k to i64
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit.i

_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit.i: ; preds = %.critedge.i.i, %bb.g, %bb.f
  %.pre-phi.i.i = phi i64 [ %i.y, %bb.g ], [ %i.y, %bb.f ], [ %.pre58.i.i, %.critedge.i.i ]
  %4 = phi ptr [ %i.p, %bb.g ], [ %i.p, %bb.f ], [ %.pre.i.i, %.critedge.i.i ]
  %i.af = ptrtoint ptr %i.l to i64
  %i.ag = ptrtoint ptr %i.p to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = add nsw i64 %.pre-phi.i.i, %i.ai        ; 3 uses
  %i.ak = sdiv i64 %i.aj, 64
  %i.al = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ak
  %i.am = and i64 %i.aj, -9223372036854775745
  %i.an = icmp ugt i64 %i.am, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.an, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.al, i64 %storemerge.idx.i.i.i.i.i
  %i.ao = trunc i64 %i.aj to i32
  %i.ap = and i32 %i.ao, 63                       ; 2 uses
  %i.aq = add nuw nsw i32 %i.ap, 1
  %i.ar = icmp eq i32 %i.ap, 63                   ; 2 uses
  %spec.select = select i1 %i.ar, i32 0, i32 %i.aq ; 2 uses
  %spec.select4.idx = select i1 %i.ar, i64 8, i64 0
  %spec.select4 = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 %spec.select4.idx ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !398
  %i.at = load i8, ptr %i.as, align 8, !tbaa !77
  switch i8 %i.at, label %bb.i [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.h
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit.i
  %.promoted11.i.i = load ptr, ptr %i.i, align 8, !tbaa !400
  %i.au = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #35
  store ptr %i.au, ptr %i.i, align 8, !tbaa !400
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit.i
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !401
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !401
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.i:                                             ; preds = %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit.i
  %i.ax = load i64, ptr %i.j, align 8, !tbaa !399
  %i.ay = add nsw i64 %i.ax, 1
  store i64 %i.ay, ptr %i.j, align 8, !tbaa !399
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.h, %bb.i
  %i.az = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.az, label %._crit_edge, label %bb.b, !llvm.loop !3003

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit
  store ptr %spec.select4, ptr %i.d, align 8
  store i32 %spec.select, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !241  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !244  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = ptrtoint ptr %i.b to i64                 ; 3 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.f to i64                     ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.g, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %2 to i64                       ; 2 uses
  %i.m = sub nsw i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.b
  %i.p = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 63
  %i.s = lshr i64 %i.p, 6
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.s
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.n, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.t, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.r, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.b, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.f, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.u = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.v = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0  ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.v, i32 63, i32 %i.u ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.v, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.w = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.z = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0   ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.z, i32 63, i32 %i.y ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.z, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.aa = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.ab = shl nuw i64 1, %i.aa                    ; 2 uses
  %i.ac = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !82
  %i.ad = and i64 %i.x, %i.ac
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ae = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !82
  %i.af = or i64 %i.ae, %i.ab
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.ag = xor i64 %i.ab, -1
  %i.ah = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !82
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.d, %bb.c
  %storemerge.i.i.i.i.i = phi i64 [ %i.af, %bb.c ], [ %i.ai, %bb.d ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !82
  %i.aj = add nsw i64 %.024.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.ak, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !3004

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.b
  %i.al = shl nuw i64 1, %i.l                     ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.am = load i64, ptr %1, align 8, !tbaa !82
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %1, align 8, !tbaa !82
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.e, %bb.f
  %storemerge = phi i64 [ %i.aq, %bb.f ], [ %i.an, %bb.e ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !82
  %i.ar = add i32 %i.f, 1
  store i32 %i.ar, ptr %i.e, align 8, !tbaa !498
  %i.as = icmp eq i32 %i.f, 63
  br i1 %i.as, label %bb.g, label %_ZNSt13_Bit_iteratorppEv.exit

bb.g:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit
  store i32 0, ptr %i.e, align 8, !tbaa !498
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.at, ptr %i.a, align 8, !tbaa !241
  br label %_ZNSt13_Bit_iteratorppEv.exit

bb.h:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %0, align 8, !tbaa !241   ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.g, %i.av                     ; 3 uses
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = zext i32 %i.f to i64
  %i.az = add nsw i64 %i.ax, %i.ay                ; 4 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775744
  br i1 %i.ba, label %bb.i, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.346) #33
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.bb = add i64 %.sroa.speculated.i, %i.az      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 9223372036854775744)
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = select i1 %i.bc, i64 9223372036854775807, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1152921504606846968
  %i.bi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #32 ; 5 uses
  %i.bj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bk = sub i64 %i.bj, %i.av                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !315

bb.j:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr align 8 %i.au, i64 %i.bk, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.l, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bn = load i64, ptr %i.au, align 8, !tbaa !82
end_hunk_0
