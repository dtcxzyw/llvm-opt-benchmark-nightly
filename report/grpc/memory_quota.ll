Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/memory_quota?download=true
inline.NumInlined: 3547
inline.NumDeleted: 2132
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !251
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #39
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.210, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, label %bb.b, !prof !66

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %i.g)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #42
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !37
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #39
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !267
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.p = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i, label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !251
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #39
  br label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit

_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl6ToJsonB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9grpc_core8channelz12PropertyList14TakeJsonObjectB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl9FillProtoEP19google_protobuf_AnyP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN9grpc_core8channelz12PropertyList7FillAnyEP19google_protobuf_AnyP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1, ptr noundef %2)
  ret void
}

declare void @_ZN9grpc_core8channelz12PropertyList14TakeJsonObjectB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map") align 8, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN9grpc_core8channelz12PropertyList7FillAnyEP19google_protobuf_AnyP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplEclEPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.210, align 1            ; 3 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !268  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !173
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c, !prof !66

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.h)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.d

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #42
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !37
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #39
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !14

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !267
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.q = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !251
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #39
  br label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit

_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #39
  br label %bb.f

bb.f:                                             ; preds = %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core19memory_quota_detail15PressureTracker27AddSampleAndGetControlValueEdE3$_0vJNS3_8DurationEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, i64 %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !157   ; 22 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !tbaa !742
  %.val1.val = load double, ptr %.val1, align 8, !tbaa !44
  %i.d = atomicrmw xchg ptr %.val, double %.val1.val monotonic, align 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.f = load double, ptr %i.e, align 8, !tbaa !153
  %i.g = fcmp ogt double %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 12 uses
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 51 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !83, !range !67, !noundef !68
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 1, !tbaa !83
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.h, align 8, !tbaa !288
  %i.m = add i8 %i.l, 1                           ; 2 uses
  store i8 %i.m, ptr %i.h, align 8, !tbaa !288
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 49
  %i.o = load i8, ptr %i.n, align 1, !tbaa !289
  %.not.i.i.i.i.i = icmp ult i8 %i.m, %i.o
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %.pre.i.i.i.i.i = load double, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !290 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fadd double %.pre.i.i.i.i.i, 1.000000e+00
  %i.q = fmul double %i.p, 5.000000e-01           ; 2 uses
  store double %i.q, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !290
  store i8 0, ptr %i.h, align 8, !tbaa !288
  br label %._crit_edge.i.i.i.i.i

bb.e:                                             ; preds = %bb.b
  store i8 0, ptr %i.h, align 8, !tbaa !288
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %4 = load <2 x double>, ptr %i.r, align 8, !tbaa !44
  %5 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %4)
  %i.s = fmul double %5, 5.000000e-01             ; 2 uses
  store double %i.s, ptr %i.r, align 8, !tbaa !290
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.i.i.i = phi double [ %i.q, %bb.d ], [ %.pre.i.i.i.i.i, %bb.c ], [ %i.s, %bb.e ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !182 ; 2 uses
  %i.v = fcmp olt double %.0.i.i.i.i.i, %i.u
  br i1 %i.v, label %bb.f, label %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 50
  %i.x = load i8, ptr %i.w, align 2, !tbaa !291
  %i.y = uitofp i8 %i.x to double
  %i.z = fdiv double %i.y, 1.000000e+03
  %i.aa = fsub double %i.u, %i.z                  ; 2 uses
  %i.ab = fcmp olt double %.0.i.i.i.i.i, %i.aa
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ab, double %i.aa, double %.0.i.i.i.i.i
  br label %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit.i.i.i.i

_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit.i.i.i.i: ; preds = %bb.f, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi double [ %.sroa.speculated.i.i.i.i.i, %bb.f ], [ %.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  store double %.1.i.i.i.i.i, ptr %i.t, align 8, !tbaa !182
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !183
  %i.ae = fcmp olt double %i.d, %i.ad             ; 4 uses
  %i.af = zext i1 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 51 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !83, !range !67, !noundef !68
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !83
  %or.cond.i.i.i.i.i = and i1 %i.ae, %i.ai
  br i1 %or.cond.i.i.i.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !182
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !287 ; 4 uses
  %i.an = fcmp oeq double %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %._crit_edge.i31.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i8, ptr %i.h, align 8, !tbaa !288
  %i.ap = add i8 %i.ao, 1                         ; 2 uses
  store i8 %i.ap, ptr %i.h, align 8, !tbaa !288
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 49
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !289
  %.not6.i.i.i.i.i = icmp ult i8 %i.ap, %i.ar
  br i1 %.not6.i.i.i.i.i, label %._crit_edge.i31.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = fmul double %i.am, 5.000000e-01         ; 2 uses
  store double %i.as, ptr %i.al, align 8, !tbaa !287
  store i8 0, ptr %i.h, align 8, !tbaa !288
  br label %._crit_edge.i31.i.i.i.i

bb.k:                                             ; preds = %bb.g
  %or.cond3.i.i.i.i.i = or i1 %i.ae, %i.ai
  br i1 %or.cond3.i.i.i.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load i8, ptr %i.h, align 8, !tbaa !288
  %i.au = add i8 %i.at, 1                         ; 2 uses
  store i8 %i.au, ptr %i.h, align 8, !tbaa !288
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 49
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !289
  %.not.i28.i.i.i.i = icmp ult i8 %i.au, %i.aw
  %.phi.trans.insert.i29.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %.pre.i30.i.i.i.i = load double, ptr %.phi.trans.insert.i29.i.i.i.i, align 8, !tbaa !290 ; 2 uses
  br i1 %.not.i28.i.i.i.i, label %._crit_edge.i31.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = fadd double %.pre.i30.i.i.i.i, 1.000000e+00
  %i.ay = fmul double %i.ax, 5.000000e-01         ; 2 uses
  store double %i.ay, ptr %.phi.trans.insert.i29.i.i.i.i, align 8, !tbaa !290
  store i8 0, ptr %i.h, align 8, !tbaa !288
  br label %._crit_edge.i31.i.i.i.i

bb.n:                                             ; preds = %bb.k
  store i8 0, ptr %i.h, align 8, !tbaa !288
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !290 ; 2 uses
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !287
  %i.bd = fadd double %i.ba, %i.bc
  %i.be = fmul double %i.bd, 5.000000e-01         ; 2 uses
  store double %i.be, ptr %i.bb, align 8, !tbaa !287
  br label %._crit_edge.i31.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !182
  %i.bh = fadd double %i.ba, %i.bg
  %i.bi = fmul double %i.bh, 5.000000e-01         ; 2 uses
  store double %i.bi, ptr %i.az, align 8, !tbaa !290
  br label %._crit_edge.i31.i.i.i.i

._crit_edge.i31.i.i.i.i:                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  %.0.i32.i.i.i.i = phi double [ %i.am, %bb.h ], [ %i.be, %bb.o ], [ %i.bi, %bb.p ], [ %i.am, %bb.i ], [ %i.as, %bb.j ], [ %i.ay, %bb.m ], [ %.pre.i30.i.i.i.i, %bb.l ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 72 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !182 ; 2 uses
  %i.bl = fcmp olt double %.0.i32.i.i.i.i, %i.bk
  br i1 %i.bl, label %bb.q, label %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit35.i.i.i.i

bb.q:                                             ; preds = %._crit_edge.i31.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 50
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !291
  %i.bo = uitofp i8 %i.bn to double
  %i.bp = fdiv double %i.bo, 1.000000e+03
  %i.bq = fsub double %i.bk, %i.bp                ; 2 uses
  %i.br = fcmp olt double %.0.i32.i.i.i.i, %i.bq
  %.sroa.speculated.i34.i.i.i.i = select i1 %i.br, double %i.bq, double %.0.i32.i.i.i.i
  br label %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit35.i.i.i.i

_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit35.i.i.i.i: ; preds = %bb.q, %._crit_edge.i31.i.i.i.i
  %.1.i33.i.i.i.i = phi double [ %.sroa.speculated.i34.i.i.i.i, %bb.q ], [ %.0.i32.i.i.i.i, %._crit_edge.i31.i.i.i.i ] ; 2 uses
  store double %.1.i33.i.i.i.i, ptr %i.bj, align 8, !tbaa !182
  br label %bb.r

bb.r:                                             ; preds = %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit35.i.i.i.i, %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit.i.i.i.i
  %.021.i.i.i.i = phi double [ %.1.i.i.i.i.i, %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit.i.i.i.i ], [ %.1.i33.i.i.i.i, %_ZN9grpc_core19memory_quota_detail18PressureController6UpdateEd.exit35.i.i.i.i ] ; 2 uses
  %i.bs = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core20resource_quota_traceE, i64 8) monotonic, align 8, !range !67, !noundef !68
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.s, label %"_ZSt6invokeIRKZN9grpc_core19memory_quota_detail15PressureTracker27AddSampleAndGetControlValueEdE3$_0JNS0_8DurationEEENSt13invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit", !prof !66

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 866) #40
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 13, ptr nonnull @.str.81)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i unwind label %bb.x

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.d, ptr %i.b, align 8, !tbaa !44
  %i.bu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.t unwind label %bb.x       ; 2 uses

bb.t:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 8, ptr nonnull @.str.82)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i unwind label %bb.x

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.021.i.i.i.i, ptr %i.a, align 8, !tbaa !44
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIdEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.u unwind label %bb.x       ; 2 uses

bb.u:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 12, ptr nonnull @.str.83)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit.i.i.i.i unwind label %bb.x

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit.i.i.i.i: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  invoke void @_ZNK9grpc_core19memory_quota_detail18PressureController11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit.i.i.i.i
  %i.bw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.critedge.i.i.i.i unwind label %bb.z

.critedge.i.i.i.i:                                ; preds = %bb.w
  %i.bx = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.critedge.i.i.i.i
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !37
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.critedge.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %"_ZSt6invokeIRKZN9grpc_core19memory_quota_detail15PressureTracker27AddSampleAndGetControlValueEdE3$_0JNS0_8DurationEEENSt13invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit"

bb.x:                                             ; preds = %bb.u, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi9EEERS2_RAT__Kc.exit.i.i.i.i, %bb.t, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit.i.i.i.i, %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i
end_hunk_0
begin_hunk_1_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core19memory_quota_detail15PressureTracker27AddSampleAndGetControlValueEdE3$_0vJNS3_8DurationEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i, %bb.x
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i.i.i.i ], [ %i.cc, %bb.x ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn.pn.i.i.i.i

"_ZSt6invokeIRKZN9grpc_core19memory_quota_detail15PressureTracker27AddSampleAndGetControlValueEdE3$_0JNS0_8DurationEEENSt13invoke_resultIT_JDpT0_EE4typeEOS8_DpOS9_.exit": ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store atomic double %.021.i.i.i.i, ptr %i.ck monotonic, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core23GrpcMemoryAllocatorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_16BasicMemoryQuotaEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN9grpc_core23GrpcMemoryAllocatorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !76
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !76
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN9grpc_core16BasicMemoryQuotaEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !65
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !65
  br label %_ZNSt10shared_ptrIN9grpc_core16BasicMemoryQuotaEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN9grpc_core16BasicMemoryQuotaEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN9grpc_core16BasicMemoryQuotaEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN9grpc_core23GrpcMemoryAllocatorImplC1ESt10shared_ptrINS_16BasicMemoryQuotaEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN9grpc_core16BasicMemoryQuotaEEC2ERKS2_.exit.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !61   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !64
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #38, !inline_history !743
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #38, !inline_history !743
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i3.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !65
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #38
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN9grpc_core16BasicMemoryQuotaEEC2ERKS2_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN9grpc_core16BasicMemoryQuotaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #38
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core23GrpcMemoryAllocatorImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core23GrpcMemoryAllocatorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN9grpc_core23GrpcMemoryAllocatorImplD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core23GrpcMemoryAllocatorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN9grpc_core23GrpcMemoryAllocatorImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN9grpc_core23GrpcMemoryAllocatorImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !301  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #38
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare extern_weak void @_ZTHN9grpc_core8Activity19g_current_activity_E() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #29

declare extern_weak void @_ZTHN9grpc_core10latent_see8Appender4bin_E() #2

declare extern_weak void @_ZTHN9grpc_core7ExecCtx9exec_ctx_E() #2

declare extern_weak void @_ZTHN9grpc_core9Timestamp25thread_local_time_source_E() #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #35

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nofree nounwind }
attributes #27 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { cold noreturn }
attributes #31 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { inlinehint uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #38 = { nounwind }
attributes #39 = { builtin nounwind }
attributes #40 = { cold }
attributes #41 = { cold nounwind }
attributes #42 = { noreturn nounwind }
attributes #43 = { builtin allocsize(0) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { noreturn }

!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}
!llvm.errno.tbaa = !{!29}

!0 = distinct !{null}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIN9grpc_core16BasicMemoryQuotaELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{null, null}
!3 = distinct !{null}
!4 = distinct !{!4, !144}
!5 = distinct !{ptr @_ZNSt10unique_ptrIN9grpc_core14ReclaimerQueue6HandleENS0_16OrphanableDeleteEED2Ev, null, ptr @_ZN9grpc_core14ReclaimerQueue6Handle6OrphanEv, null, null}
!6 = distinct !{!6, !144}
!7 = distinct !{!7, !144}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{ptr @_ZN9grpc_core13RefCountedPtrINS_17instrument_detail20InstrumentDomainImplINS_21HighContentionBackendELm1ENS_19ResourceQuotaDomainEE7StorageEED2Ev, null, null, null}
!12 = distinct !{!12, !144}
!13 = distinct !{ptr @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_, null, null, null, null, null, null, null, null}
!14 = distinct !{!14, !144}
!15 = distinct !{null, null}
!16 = distinct !{!16, !144}
!17 = distinct !{null, null, null, null, null, null}
!18 = distinct !{!18, !144}
!19 = distinct !{!19, !144}
!20 = distinct !{null, null}
!21 = distinct !{!21, !144}
!22 = !{i32 8, !"PIC Level", i32 2}
!23 = !{i32 7, !"uwtable", i32 2}
!24 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!25 = !{!"Simple C++ TBAA"}
!26 = !{!"omnipotent char", !25, i64 0}
!27 = !{!"int", !26, i64 0}
!28 = !{!"__libc_errno", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !{!"p1 omnipotent char", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"long", !26, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !34, i64 8, !26, i64 16}
!36 = !{!35, !34, i64 8}
!37 = !{!26, !26, i64 0}
!38 = !{!"vtable pointer", !25, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!35, !31, i64 0}
!41 = !{!"_ZTSN4absl12lts_202505126StatusE", !34, i64 0}
!42 = !{!41, !34, i64 0}
!43 = !{!"double", !26, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!"p1 _ZTSN9grpc_core16BasicMemoryQuotaE", !30, i64 0}
!46 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 0}
!47 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN9grpc_core16BasicMemoryQuotaELN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0, !47, i64 8}
!49 = !{!48, !45, i64 0}
!50 = !{!"_ZTSSt10shared_ptrIN9grpc_core16BasicMemoryQuotaEE", !48, i64 0}
!51 = !{!"p1 _ZTSN9grpc_core8WakeableE", !30, i64 0}
!52 = !{!"short", !26, i64 0}
!53 = !{!"_ZTSN9grpc_core5Waker14WakeableAndArgE", !51, i64 0, !52, i64 8}
!54 = !{!"_ZTSN9grpc_core5WakerE", !53, i64 0}
!55 = !{!"_ZTSN9grpc_core16ReclamationSweepE", !50, i64 0, !34, i64 16, !54, i64 24}
!56 = !{!55, !34, i64 16}
!57 = !{!51, !51, i64 0}
!58 = !{!52, !52, i64 0}
!59 = !{!53, !51, i64 0}
!60 = !{!53, !52, i64 8}
!61 = !{!47, !46, i64 0}
!62 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 8, !27, i64 12}
!63 = !{!62, !27, i64 8}
!64 = !{!62, !27, i64 12}
!65 = !{!27, !27, i64 0}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!"p1 _ZTSN9grpc_core8channelz8BaseNodeE", !30, i64 0}
!70 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_8channelz8BaseNodeEEE", !69, i64 0}
!71 = !{!70, !69, i64 0}
!72 = !{!34, !34, i64 0}
!73 = !{!"bool", !26, i64 0}
!74 = !{!"_ZTSSt22_Optional_payload_baseIN9grpc_core16ReclamationSweepEE", !26, i64 0, !73, i64 40}
!75 = !{!74, !73, i64 40}
!76 = !{!30, !30, i64 0}
!77 = !{!"p1 _ZTSN9grpc_core14ReclaimerQueue6HandleE", !30, i64 0}
!78 = !{!"_ZTSN9grpc_core13RefCountedPtrINS_14ReclaimerQueue6HandleEEE", !77, i64 0}
!79 = !{!78, !77, i64 0}
!80 = !{!"p1 _ZTSN9grpc_core14ReclaimerQueue5StateE", !30, i64 0}
!81 = !{!"_ZTSSt12__shared_ptrIN9grpc_core14ReclaimerQueue5StateELN9__gnu_cxx12_Lock_policyE2EE", !80, i64 0, !47, i64 8}
!82 = !{!81, !80, i64 0}
!83 = !{!73, !73, i64 0}
!84 = !{!"p1 _ZTSN9grpc_core14ReclaimerQueue10QueuedNodeE", !30, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!"p1 _ZTSN9grpc_core32MultiProducerSingleConsumerQueue4NodeE", !30, i64 0}
!87 = !{!"_ZTSSt13__atomic_baseIPN9grpc_core32MultiProducerSingleConsumerQueue4NodeEE", !86, i64 0}
!88 = !{!"_ZTSSt6atomicIPN9grpc_core32MultiProducerSingleConsumerQueue4NodeEE", !87, i64 0}
!89 = !{!"_ZTSN9grpc_core32MultiProducerSingleConsumerQueue4NodeE", !88, i64 0}
!90 = !{!"_ZTSN9grpc_core32MultiProducerSingleConsumerQueueE", !26, i64 0, !86, i64 64, !89, i64 72}
!91 = !{!90, !86, i64 64}
!92 = !{!"p1 _ZTSN9grpc_core8ActivityE", !30, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_ZTSN9grpc_core4PollINS_13RefCountedPtrINS_14ReclaimerQueue6HandleEEEEE", !73, i64 0, !26, i64 8}
!95 = !{!94, !73, i64 0}
!96 = !{!"_ZTSSt13__atomic_baseImE", !34, i64 0}
!97 = !{!96, !34, i64 0}
!98 = !{!"_ZTSSt13__atomic_baseIlE", !34, i64 0}
!99 = !{!98, !34, i64 0}
!100 = !{!"_ZTSSt6atomicIlE", !98, i64 0}
!101 = !{!"_ZTSN9grpc_core8DurationE", !34, i64 0}
!102 = !{!"_ZTSN9grpc_core9TimestampE", !34, i64 0}
!103 = !{!"_ZTSN9grpc_core14PeriodicUpdateE", !100, i64 0, !101, i64 8, !102, i64 16, !34, i64 24}
!104 = !{!103, !34, i64 24}
!105 = !{!"p1 _ZTSN17grpc_event_engine12experimental8internal19MemoryAllocatorImplE", !30, i64 0}
!106 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0}
!107 = !{!"_ZTSSt10__weak_ptrIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplELN9__gnu_cxx12_Lock_policyE2EE", !105, i64 0, !106, i64 8}
!108 = !{!"_ZTSSt8weak_ptrIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplEE", !107, i64 0}
!109 = !{!"_ZTSSt23enable_shared_from_thisIN17grpc_event_engine12experimental8internal19MemoryAllocatorImplEE", !108, i64 0}
!110 = !{!"_ZTSN17grpc_event_engine12experimental8internal19MemoryAllocatorImplE", !109, i64 8}
!111 = !{!"_ZTSSt6atomicImE", !96, i64 0}
!112 = !{!"_ZTSN4absl12lts_202505125MutexE", !100, i64 0}
!113 = !{!"_ZTSN9grpc_core23GrpcMemoryAllocatorImplE", !110, i64 0, !50, i64 24, !111, i64 40, !111, i64 48, !111, i64 56, !103, i64 64, !112, i64 96, !73, i64 104, !26, i64 112}
!114 = !{!113, !73, i64 104}
!115 = !{!"_ZTSSt10_Head_baseILm0EPN9grpc_core14ReclaimerQueue6HandleELb0EE", !77, i64 0}
!116 = !{!115, !77, i64 0}
!117 = !{!"p1 _ZTSN9grpc_core7ExecCtxE", !30, i64 0}
!118 = !{!117, !117, i64 0}
!119 = !{!"p1 _ZTS12grpc_closure", !30, i64 0}
!120 = !{!"_ZTS17grpc_closure_list", !119, i64 0, !119, i64 8}
!121 = !{!"p1 _ZTSN9grpc_core8CombinerE", !30, i64 0}
!122 = !{!"_ZTSN9grpc_core7ExecCtx12CombinerDataE", !121, i64 0, !121, i64 8}
!123 = !{!"_ZTSSt22_Optional_payload_baseIN9grpc_core15ScopedTimeCacheEE", !26, i64 0, !73, i64 32}
!124 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb1ELb0ELb0EE", !123, i64 0}
!125 = !{!"_ZTSSt17_Optional_payloadIN9grpc_core15ScopedTimeCacheELb0ELb0ELb0EE", !124, i64 0}
!126 = !{!"_ZTSSt14_Optional_baseIN9grpc_core15ScopedTimeCacheELb0ELb0EE", !125, i64 0}
!127 = !{!"_ZTSSt8optionalIN9grpc_core15ScopedTimeCacheEE", !126, i64 0}
!128 = !{!"_ZTSN9grpc_core7ExecCtxE", !120, i64 8, !122, i64 24, !34, i64 40, !127, i64 48, !117, i64 88}
!129 = !{!128, !34, i64 40}
!130 = !{!123, !73, i64 32}
!131 = !{!128, !117, i64 88}
!132 = !{ptr @_ZN9grpc_core7ExecCtxD2Ev}
!133 = !{!"_ZTSN9grpc_core9Timestamp6SourceE"}
!134 = !{!"p1 _ZTSN9grpc_core9Timestamp6SourceE", !30, i64 0}
!135 = !{!"_ZTSN9grpc_core9Timestamp12ScopedSourceE", !133, i64 0, !134, i64 8}
!136 = !{!135, !134, i64 8}
!137 = !{!134, !134, i64 0}
!138 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !34, i64 0}
!139 = !{!138, !34, i64 0}
!140 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !34, i64 0, !138, i64 8, !26, i64 16}
!141 = !{!140, !34, i64 0}
!142 = !{!"_ZTSN4absl12lts_2025051218container_internal6ctrl_tE", !26, i64 0}
!143 = !{!142, !142, i64 0}
!144 = !{!"llvm.loop.mustprogress"}
!145 = !{!"p1 _ZTSN9grpc_core23GrpcMemoryAllocatorImplE", !30, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!148 = !{!77, !77, i64 0}
end_hunk_1
