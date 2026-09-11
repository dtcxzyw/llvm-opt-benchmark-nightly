Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.015?download=true
inline.NumInlined: 568
inline.NumDeleted: 329
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalENCNvMNtNtNtCs5QaNqjAn6vc_5shard5query3mmr11lazy_matrixNtB3O_10LazyMatrix3new0EINtNtB1d_6result6ResultzNtNtNtB2M_6common15operation_error14OperationErrorEEINtNtB6_5boxed3BoxDNtNtNtB2M_14vector_storage10raw_scorer9RawScorerEL_EEB3U_:bb.a
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalE32forget_allocation_drop_remainingCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalINtNtBI_5boxed3BoxDNtNtNtB1R_14vector_storage10raw_scorer9RawScorerEL_EEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #12
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = mul nuw i64 %i.c, 3
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalENCNvMNtNtNtCs5QaNqjAn6vc_5shard5query3mmr11lazy_matrixNtB3p_10LazyMatrix3new0EINtNtB4_6result6ResultzNtNtNtB2n_6common15operation_error14OperationErrorEEEB3v_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB1d_7convert7TryFromB2G_E8try_fromEINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB3w_EB3C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 416                        ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB7_7convert7TryFromB22_E8try_fromEINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB2S_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB2S_E0IB4u_B6b_zEEB2Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3d_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionE32forget_allocation_drop_remainingCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalEEB2D_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #12
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 32
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 6
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -64                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #13
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.v) #13 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !294

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #15
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ExpressionENvYNtNtNtCs5QaNqjAn6vc_5shard5query7formula18ExpressionInternalINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3d_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairENvNtCs5QaNqjAn6vc_5shard6search26try_context_pair_from_grpcEINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtB5D_10data_types7vectors14VectorInternalEEB3y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairENvNtCs5QaNqjAn6vc_5shard6search26try_context_pair_from_grpcEINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtB6g_10data_types7vectors14VectorInternalEENCINvNtB1j_16in_place_collect24write_in_place_with_dropB67_E0IB3P_B5w_zEEB2U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairENvNtCs5QaNqjAn6vc_5shard6search26try_context_pair_from_grpcEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB39_.exit unwind label %bb.g

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
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairE32forget_allocation_drop_remainingCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query13context_query11ContextPairNtNtNtB2H_10data_types7vectors14VectorInternalEEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #12
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = shl nuw i64 %i.c, 2
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant11ContextPairENvNtCs5QaNqjAn6vc_5shard6search26try_context_pair_from_grpcEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB39_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENvYNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchINtNtB1d_7convert7TryFromB2G_E8try_fromEINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB3P_EB3T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 808                        ; 7 uses
  %i.h = udiv i64 %i.g, 504                       ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENvYNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchINtNtB7_7convert7TryFromB22_E8try_fromEINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB3b_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB3b_E0IB4y_B6f_zEEB3f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENvYNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3u_.exit unwind label %bb.l

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
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchE32forget_allocation_drop_remainingCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEEB2U_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #12
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 504                    ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB2a_.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB2a_.exit.thread: ; preds = %bb.h, %2, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 504
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB2a_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #13
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB2a_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #13 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchEB2a_.exit.thread, !prof !295

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #15
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18query_shard_points8PrefetchENvYNtNtCs5QaNqjAn6vc_5shard5query13ShardPrefetchINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEEB3u_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENvYINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB3W_10data_types7vectors14VectorInternalEINtNtB1d_7convert7TryFromB2G_E8try_fromEINtNtB1d_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEB3N_ECs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCskKLDkoKarTP_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENvYINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB3i_10data_types7vectors14VectorInternalEINtNtB7_7convert7TryFromB22_E8try_fromEINtNtB7_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB39_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB39_E0IB5T_B7A_zEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENvYINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB3x_10data_types7vectors14VectorInternalEINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECs5QaNqjAn6vc_5shard.exit unwind label %bb.g

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
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemE32forget_allocation_drop_remainingCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB2X_10data_types7vectors14VectorInternalEEECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #12
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9raw_query15RawFeedbackItemENvYINtNtNtNtCs607s0NAIaWN_7segment14vector_storage5query14feedback_query12FeedbackItemNtNtNtB3x_10data_types7vectors14VectorInternalEINtNtB4_7convert7TryFromB2h_E8try_fromEINtNtB4_6result6ResultzNtNtCsgOCJwUSa4vG_5tonic6status6StatusEEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters10filter_map9FilterMapINtNtB1b_7inspect7InspectINtNtB4_9into_iter8IntoIterTINtNtB1f_6option6OptionINtNtB6_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB1f_6marker4SendNtB4T_4SyncEL_EEINtB4_3VecjEEENCNvB3G_18plan_optimizations0ENCB5H_s_0ETB3m_B5r_EEB3K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !303
  store ptr %i.h, ptr %i.a, align 8, !noalias !303
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.i, align 8, !noalias !303
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.j, align 8, !noalias !303
  %i.k = invoke { ptr, ptr } @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterTINtNtCskKLDkoKarTP_4core6option6OptionINtNtBa_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB13_6marker4SendNtB37_4SyncEL_EEINtB8_3VecjEEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTB1A_B3F_EENCINvNtNtB3Z_8adapters7inspect16inspect_try_foldBX_B4I_INtNtB13_6result6ResultB4I_zENCNvB1U_18plan_optimizations0NCINvNtB5A_10filter_map19filter_map_try_foldBX_B5i_B4I_B6m_NCB6R_s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB5i_E0E0E0B6m_EB1Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.l, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtCskKLDkoKarTP_4core6option6OptionINtNtB9_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB12_6marker4SendNtB36_4SyncEL_EEINtB7_3VecjEEENtNtNtB12_3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7inspect7InspectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTINtNtB4_6option6OptionINtNtB1S_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB4_6marker4SendNtB4u_4SyncEL_EEINtB1Q_3VecjEEENCNvB3h_18plan_optimizations0ENCB5i_s_0EEB3l_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !303
  %i.m = extractvalue { ptr, ptr } %i.k, 1
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.s, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtCskKLDkoKarTP_4core6option6OptionINtNtB9_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB12_6marker4SendNtB36_4SyncEL_EEINtB7_3VecjEEE32forget_allocation_drop_remainingB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTINtNtB4_6option6OptionINtNtBI_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB4_6marker4SendNtB3F_4SyncEL_EEINtBG_3VecjEETB28_B4c_EEEB2w_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #12
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.d, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTINtNtCskKLDkoKarTP_4core6option6OptionINtNtB9_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB12_6marker4SendNtB36_4SyncEL_EEINtB7_3VecjEEENtNtNtB12_3ops4drop4Drop4dropB1X_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7inspect7InspectINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTINtNtB4_6option6OptionINtNtB1S_4sync3ArcDNtNtNtCs5QaNqjAn6vc_5shard10optimizers17segment_optimizer16SegmentOptimizerNtNtB4_6marker4SendNtB4u_4SyncEL_EEINtB1Q_3VecjEEENCNvB3h_18plan_optimizations0ENCB5i_s_0EEB3l_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1b_9enumerate9EnumerateINtNtB4_9into_iter8IntoIterNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB6_6string6StringB4A_EEs_0ETjINtNtB6_5boxed3BoxB2O_EEEB4G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1w_6string6StringB3Z_EEs_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1u_13in_place_drop11InPlaceDropTjINtNtB1w_5boxed3BoxB2d_EEENCINvNtB1u_16in_place_collect24write_in_place_with_dropB7J_E0INtNtBc_6result6ResultB78_zEEB45_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsEENCINvNtCslmvYCXbQjWR_6common10validation13validate_iterRNtNtNtCs5QaNqjAn6vc_5shard10operations9point_ops15VectorPersistedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtB1I_6string6StringB4b_EEs_0EEB4h_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1cB7FFWPEsq_9validator5types16ValidationErrorsE32forget_allocation_drop_remainingCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_0
