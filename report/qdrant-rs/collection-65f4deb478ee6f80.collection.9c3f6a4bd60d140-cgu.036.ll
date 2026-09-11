Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.036?download=true
inline.NumInlined: 1227
inline.NumDeleted: 702
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterAtj2_ENCINvMNtNtCs9jZsDbilXxj_7roaring6bitmap13serializationNtB2U_13RoaringBitmap21deserialize_from_implRShNvYNtNtNtB2U_5store11array_store10ArrayStoreINtNtB1d_7convert7TryFromINtB4_3VectEE8try_fromNtB4u_5ErrorNvMNtB4w_12bitmap_storeNtB67_11BitmapStore8try_fromNtB67_5ErrorEs0_0EINtNtB1d_6result6ResultzNtNtNtB1d_2io5error9ErrorKindEENtNtB4w_14interval_store8IntervalECsPYQCUnoTxQ_10collection:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B41_INtB41_11VectorQueryB3Z_E16ids_into_vectorss0_0EINtNtB1d_6result6ResultzNtNtB45_5types15CollectionErrorEEIB2H_NtNtNtB2P_10data_types7vectors14VectorInternalEEB47_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3n_INtB3n_11VectorQueryB3l_E16ids_into_vectorss0_0EINtNtB7_6result6ResultzNtNtB3r_5types15CollectionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropIB23_NtNtNtB2b_10data_types7vectors14VectorInternalEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB8a_E0IB5Z_B7z_zEEB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3C_INtB3C_11VectorQueryB3A_E16ids_into_vectorss0_0EINtNtB4_6result6ResultzNtNtB3G_5types15CollectionErrorEEEB3I_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEE32forget_allocation_drop_remainingB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEIB1M_NtNtNtB1U_10data_types7vectors14VectorInternalEEEB3c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3C_INtB3C_11VectorQueryB3A_E16ids_into_vectorss0_0EINtNtB4_6result6ResultzNtNtB3G_5types15CollectionErrorEEEB3I_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B41_INtB41_11VectorQueryB3Z_E16ids_into_vectorss1_0EINtNtB1d_6result6ResultzNtNtB45_5types15CollectionErrorEEIB2H_NtNtNtB2P_10data_types7vectors14VectorInternalEEB47_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3n_INtB3n_11VectorQueryB3l_E16ids_into_vectorss1_0EINtNtB7_6result6ResultzNtNtB3r_5types15CollectionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropIB23_NtNtNtB2b_10data_types7vectors14VectorInternalEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB8a_E0IB5Z_B7z_zEEB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3C_INtB3C_11VectorQueryB3A_E16ids_into_vectorss1_0EINtNtB4_6result6ResultzNtNtB3G_5types15CollectionErrorEEEB3I_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEE32forget_allocation_drop_remainingB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEIB1M_NtNtNtB1U_10data_types7vectors14VectorInternalEEEB3c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3C_INtB3C_11VectorQueryB3A_E16ids_into_vectorss1_0EINtNtB4_6result6ResultzNtNtB3G_5types15CollectionErrorEEEB3I_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B43_INtB43_11VectorQueryB41_E16ids_into_vectorss4_0EINtNtB1d_6result6ResultzNtNtB47_5types15CollectionErrorEEIB2H_NtNtNtB2P_10data_types7vectors14VectorInternalEEB49_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3p_INtB3p_11VectorQueryB3n_E16ids_into_vectorss4_0EINtNtB7_6result6ResultzNtNtB3t_5types15CollectionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropIB23_NtNtNtB2b_10data_types7vectors14VectorInternalEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB8c_E0IB61_B7B_zEEB3v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3E_INtB3E_11VectorQueryB3C_E16ids_into_vectorss4_0EINtNtB4_6result6ResultzNtNtB3I_5types15CollectionErrorEEEB3K_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 56                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEE32forget_allocation_drop_remainingB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEIB1M_NtNtNtB1U_10data_types7vectors14VectorInternalEEEB3e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB2p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalEENCNvMs3_B3E_INtB3E_11VectorQueryB3C_E16ids_into_vectorss4_0EINtNtB4_6result6ResultzNtNtB3I_5types15CollectionErrorEEEB3K_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENvYNtNtNtB2M_10operations9point_ops20PointStructPersistedINtNtB1d_7convert7TryFromB2G_E8try_fromEINtNtB1d_6result6ResultzNtNtB6_6string6StringEEB3Q_ECsPYQCUnoTxQ_10collection(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 192                        ; 7 uses
  %i.h = udiv i64 %i.g, 152                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENvYNtNtNtB28_10operations9point_ops20PointStructPersistedINtNtB7_7convert7TryFromB22_E8try_fromEINtNtB7_6result6ResultzNtNtB1l_6string6StringEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB3c_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB3c_E0IB4I_B69_zEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENvYNtNtNtB2n_10operations9point_ops20PointStructPersistedINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtB1A_6string6StringEEECsPYQCUnoTxQ_10collection.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 152                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNtNtNtB1R_10operations9point_ops20PointStructPersistedEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 152                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNtNtNtB17_10operations9point_ops20PointStructPersistedECsPYQCUnoTxQ_10collection.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNtNtNtB17_10operations9point_ops20PointStructPersistedECsPYQCUnoTxQ_10collection.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 152
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNtNtNtB17_10operations9point_ops20PointStructPersistedECsPYQCUnoTxQ_10collection.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNtNtNtB17_10operations9point_ops20PointStructPersistedECsPYQCUnoTxQ_10collection.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNtNtNtB17_10operations9point_ops20PointStructPersistedECsPYQCUnoTxQ_10collection.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENvYNtNtNtB2n_10operations9point_ops20PointStructPersistedINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtB1A_6string6StringEEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3I_11RemoteShardNtNtB3K_11shard_trait14ShardOperation11query_batch0s_000EINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtCs607s0NAIaWN_7segment5types11ScoredPointEB3M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 232                        ; 7 uses
  %i.h = udiv i64 %i.g, 208                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB34_11RemoteShardNtNtB36_11shard_trait14ShardOperation11query_batch0s_000EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7p_E0IB57_B6O_zEEB38_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3j_11RemoteShardNtNtB3l_11shard_trait14ShardOperation11query_batch0s_000EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3n_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 208                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 208                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 208
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3j_11RemoteShardNtNtB3l_11shard_trait14ShardOperation11query_batch0s_000EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3n_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3G_11RemoteShardNtNtB3I_11shard_trait14ShardOperation11core_search0s1_0s_0EINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtCs607s0NAIaWN_7segment5types11ScoredPointEB3K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 232                        ; 7 uses
  %i.h = udiv i64 %i.g, 208                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB32_11RemoteShardNtNtB34_11shard_trait14ShardOperation11core_search0s1_0s_0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7p_E0IB57_B6O_zEEB36_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3h_11RemoteShardNtNtB3j_11shard_trait14ShardOperation11core_search0s1_0s_0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3l_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 208                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 208                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 208
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsPYQCUnoTxQ_10collection.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ScoredPointENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3h_11RemoteShardNtNtB3j_11shard_trait14ShardOperation11core_search0s1_0s_0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3H_11RemoteShardNtNtB3J_11shard_trait14ShardOperation8retrieve0s0_0EINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEB3L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 216                        ; 7 uses
  %i.h = udiv i64 %i.g, 192                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB33_11RemoteShardNtNtB35_11shard_trait14ShardOperation8retrieve0s0_0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7j_E0IB51_B6I_zEEB37_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3i_11RemoteShardNtNtB3k_11shard_trait14ShardOperation8retrieve0s0_0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3m_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 192                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 192                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 192
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3i_11RemoteShardNtNtB3k_11shard_trait14ShardOperation8retrieve0s0_0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3m_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3H_11RemoteShardNtNtB3J_11shard_trait14ShardOperation9scroll_by0s1_0EINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEB3L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 216                        ; 7 uses
  %i.h = udiv i64 %i.g, 192                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB33_11RemoteShardNtNtB35_11shard_trait14ShardOperation9scroll_by0s1_0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7k_E0IB52_B6J_zEEB37_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3i_11RemoteShardNtNtB3k_11shard_trait14ShardOperation9scroll_by0s1_0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3m_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 192                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 192                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 192
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsPYQCUnoTxQ_10collection.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14RetrievedPointENCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3i_11RemoteShardNtNtB3k_11shard_trait14ShardOperation9scroll_by0s1_0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3m_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions30try_discover_request_from_grpc0EINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtB3H_5types18ContextExamplePairEB3J_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions30try_discover_request_from_grpc0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtB33_5types18ContextExamplePairENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6K_E0IB4s_B69_zEEB35_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions30try_discover_request_from_grpc0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3k_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairNtNtNtCsPYQCUnoTxQ_10collection10operations5types18ContextExamplePairEEB2L_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %i.c, 2
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18ContextExamplePairENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions30try_discover_request_from_grpc0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3k_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3N_11RemoteShardNtNtB3P_11shard_trait14ShardOperation11query_batch0s_00EINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEINtB4_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEB3R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB39_11RemoteShardNtNtB3b_11shard_trait14ShardOperation11query_batch0s_00EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtB1j_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB7t_E0IB5b_B6S_zEEB3d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3o_11RemoteShardNtNtB3q_11shard_trait14ShardOperation11query_batch0s_00EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3s_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultINtBG_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18IntermediateResultENCNCNCNvXs0_NtNtCsPYQCUnoTxQ_10collection6shards12remote_shardNtB3o_11RemoteShardNtNtB3q_11shard_trait14ShardOperation11query_batch0s_00EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3s_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoINtNtB1d_7convert7TryFromB2G_E8try_fromEINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB3F_EB3L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 72                         ; 7 uses
  %i.h = udiv i64 %i.g, 56                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoINtNtB7_7convert7TryFromB22_E8try_fromEINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB31_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB31_E0IB4I_B6p_zEEB37_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3m_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 56                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEEB2M_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 56                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB22_.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB22_.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 56
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB22_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB22_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoEB22_.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ReshardingTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types14ReshardingInfoINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3m_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoINtNtB1d_7convert7TryFromB2G_E8try_fromEINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB3I_EB3O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 56                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoINtNtB7_7convert7TryFromB22_E8try_fromEINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB34_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB34_E0IB4O_B6v_zEEB3a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3p_.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 56                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoEEB2P_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 56                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !15

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant22ShardTransferTelemetryENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types17ShardTransferInfoINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types16RecommendExampleINtNtB1d_7convert7TryFromB2G_E8try_fromEINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB3r_EB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types16RecommendExampleINtNtB7_7convert7TryFromB22_E8try_fromEINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB2N_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB2N_E0IB4w_B6d_zEEB2T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types16RecommendExampleINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB38_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorNtNtNtCsPYQCUnoTxQ_10collection10operations5types16RecommendExampleEEB2y_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %i.c, 2
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorENvYNtNtNtCsPYQCUnoTxQ_10collection10operations5types16RecommendExampleINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB38_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions29try_points_selector_from_grpc0EINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions29try_points_selector_from_grpc0EINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6x_E0IB4f_B5W_zEEB2T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions29try_points_selector_from_grpc0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB38_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.j, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdEECsPYQCUnoTxQ_10collection.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.k = extractvalue { ptr, ptr } %i.g, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24
  store i64 %i.c, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.q, align 8
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdENCNvNtNtCsPYQCUnoTxQ_10collection10operations11conversions29try_points_selector_from_grpc0EINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB38_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs5_B2I_B2G_23try_into_shard_prefetchs_0EINtNtB1d_6result6ResultzNtNtB2M_5types15CollectionErrorEENtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 552                        ; 7 uses
  %i.h = udiv i64 %i.g, 504                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs5_B24_B22_23try_into_shard_prefetchs_0EINtNtB7_6result6ResultzNtNtB28_5types15CollectionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6A_E0IB4p_B5Z_zEEB2a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs5_B2j_B2h_23try_into_shard_prefetchs_0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 504                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchE32forget_allocation_drop_remainingB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 504                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 504
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs5_B2j_B2h_23try_into_shard_prefetchs_0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs6_B2I_NtB2I_22CollectionQueryRequest22try_into_shard_requests_0EINtNtB1d_6result6ResultzNtNtB2M_5types15CollectionErrorEENtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 552                        ; 7 uses
  %i.h = udiv i64 %i.g, 504                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs6_B24_NtB24_22CollectionQueryRequest22try_into_shard_requests_0EINtNtB7_6result6ResultzNtNtB28_5types15CollectionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6Z_E0IB4O_B6o_zEEB2a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs6_B2j_NtB2j_22CollectionQueryRequest22try_into_shard_requests_0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 504                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchE32forget_allocation_drop_remainingB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 504                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 504
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #12
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #12 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB19_.exit.thread, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #13
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query18CollectionPrefetchENCNvMs6_B2j_NtB2j_22CollectionQueryRequest22try_into_shard_requests_0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B2I_INtB2I_11VectorQueryB2G_E22resolve_reco_reference0EINtNtB1d_6result6ResultzNtNtB2M_5types15CollectionErrorEENtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B24_INtB24_11VectorQueryB22_E22resolve_reco_reference0EINtNtB7_6result6ResultzNtNtB28_5types15CollectionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6T_E0IB4I_B6i_zEEB2a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B2j_INtB2j_11VectorQueryB2h_E22resolve_reco_reference0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalE32forget_allocation_drop_remainingB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B2j_INtB2j_11VectorQueryB2h_E22resolve_reco_reference0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B2I_INtB2I_11VectorQueryB2G_E22resolve_reco_references_0EINtNtB1d_6result6ResultzNtNtB2M_5types15CollectionErrorEENtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B24_INtB24_11VectorQueryB22_E22resolve_reco_references_0EINtNtB7_6result6ResultzNtNtB28_5types15CollectionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalENCINvNtB1j_16in_place_collect24write_in_place_with_dropB6V_E0IB4K_B6k_zEEB2a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B2j_INtB2j_11VectorQueryB2h_E22resolve_reco_references_0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalE32forget_allocation_drop_remainingB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalEEB1T_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCsPYQCUnoTxQ_10collection10operations15universal_query16collection_query19VectorInputInternalENCNvMs3_B2j_INtB2j_11VectorQueryB2h_E22resolve_reco_references_0EINtNtB4_6result6ResultzNtNtB2n_5types15CollectionErrorEEEB2p_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB3w_10LocalShard28fill_with_payload_or_vectors0s0_00EB2z_EB3A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1N_8adapters10filter_map19filter_map_try_foldBX_BX_B2L_INtNtB1P_6result6ResultB2L_zENCNCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB58_10LocalShard28fill_with_payload_or_vectors0s0_00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4s_EB5c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNCNvMs_NtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard5queryNtB38_10LocalShard28fill_with_payload_or_vectors0s0_00EEB3c_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 208                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointE32forget_allocation_drop_remainingCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1L_EECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #11
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
