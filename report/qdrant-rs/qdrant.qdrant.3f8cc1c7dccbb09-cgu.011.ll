Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.011?download=true
inline.NumInlined: 4847
inline.NumDeleted: 2086
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCs577yCKf7gy3_4http3uri3UriEE9next_implKb0_ECsl8OoimOLbh_6qdrant:bb.a
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [96 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted13, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val79 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val79, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -1536 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoEE9fold_implNCINvXsG_NtB8_3mapINtB1W_4IteryBW_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldTRyRBW_EBU_uNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBW_EyBW_E0NCINvNvB2m_8for_each4callBU_NCINvXs1i_B1W_INtB1W_7HashMapyBW_NtNtNtB5w_4hash6random11RandomStateEINtNtB2q_7collect6ExtendBU_E6extendINtB3s_3MapINtB5q_4IteryBW_EB48_EE0E0E0E0uECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted22 = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %2, align 8             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8
  %.pre = load i16, ptr %i.c, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit, %bb.a
  %i.f = phi i16 [ %i.k, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2126 = phi ptr [ %.lcssa2125, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2024 = phi ptr [ %.lcssa2023, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit ], [ %.promoted22, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.t, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit ], [ %1, %bb.a ] ; 2 uses
  %.not17 = icmp eq i16 %i.f, 0
  br i1 %.not17, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.g = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.g, label %bb.f, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.x, ptr %0, align 8
  store ptr %i.y, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2125 = phi ptr [ %i.y, %._crit_edge ], [ %.lcssa2126, %.outer ]
  %.lcssa2023 = phi ptr [ %i.x, %._crit_edge ], [ %.lcssa2024, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.f, %.outer ] ; 3 uses
  %i.h = add i16 %.lcssa, -1
  %i.i = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.j = zext nneg i16 %i.i to i64
  %i.k = and i16 %i.h, %.lcssa                    ; 2 uses
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [32 x i8], ptr %.lcssa2023, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -32
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -24
  %.val1.i = load i64, ptr %i.n, align 8, !alias.scope !3086, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs8_NtCsgGgPqgSfnMH_7storage5typesNtB5_8PeerInfoNtNtNtCs607s0NAIaWN_7segment6common9anonymize9Anonymize9anonymize(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
  store i64 %.val1.i, ptr %i.b, align 8, !noalias !3087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3088
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
  %i.p = load i64, ptr %i.a, align 8, !range !25, !alias.scope !3089, !noalias !3088, !noundef !16
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i unwind label %bb.d, !noalias !3090

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !3090

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !3090
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !3090
  br label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit

_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyBO_EuNCINvNtNtCs607s0NAIaWN_7segment6common9anonymize27anonymize_collection_valuesINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyBO_EyBO_E0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyBO_NtNtNtB4H_4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtB4B_4IteryBO_EB3j_EE0E0E0E0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = add i64 %.sroa.0.0.ph, -1
  br label %.outer

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.u = phi ptr [ %i.y, %.lr.ph.split ], [ %.lcssa2126, %.lr.ph ] ; 2 uses
  %i.v = phi ptr [ %i.x, %.lr.ph.split ], [ %.lcssa2024, %.lr.ph ]
  %.val913 = load <16 x i8>, ptr %i.u, align 16
  %i.w = icmp sgt <16 x i8> %.val913, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.w, ptr %i.c, align 8
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -512 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %.cast = bitcast <16 x i1> %i.w to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %.lr.ph.split, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTyNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoEE9fold_implNCINvXsG_NtB8_3mapINtB1W_4IteryBW_ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2s_8adapters3map8map_foldTRyRBW_ETyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEuNCNvB48_20aggregate_peers_info0NCINvNvB2m_8for_each4callB44_NCINvXs1i_B1W_INtB1W_7HashMapyB46_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB2q_7collect6ExtendB44_E6extendINtB3s_3MapINtNtNtNtB7g_11collections4hash3map4IteryBW_EB5E_EE0E0E0E0uEB4e_(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 8 uses
  %i.b = alloca [112 x i8], align 8               ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.66.i.i.i.i = alloca [12 x i8], align 8   ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.promoted26 = load ptr, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.i, align 8         ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load ptr, ptr %i.j, align 8        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.sroa.66.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.77.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val2.i.i = load ptr, ptr %2, align 8, !nonnull !16, !align !19
  %.sroa.4.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.4.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.4.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.4.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.4.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.4.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %.sroa.4.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.promoted = load ptr, ptr %i.h, align 8
  %.pre = load i16, ptr %i.g, align 8
  br label %.outer

.outer:                                           ; preds = %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEuNCNvB3g_20aggregate_peers_info0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyB3e_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtNtNtNtB6m_11collections4hash3map4IteryBO_EB4M_EE0E0E0E0B3m_.exit, %bb.a
  %i.q = phi i16 [ %i.v, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEuNCNvB3g_20aggregate_peers_info0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyB3e_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtNtNtNtB6m_11collections4hash3map4IteryBO_EB4M_EE0E0E0E0B3m_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.lcssa2530 = phi ptr [ %.lcssa2529, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEuNCNvB3g_20aggregate_peers_info0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyB3e_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtNtNtNtB6m_11collections4hash3map4IteryBO_EB4M_EE0E0E0E0B3m_.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.lcssa2428 = phi ptr [ %.lcssa2427, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEuNCNvB3g_20aggregate_peers_info0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyB3e_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtNtNtNtB6m_11collections4hash3map4IteryBO_EB4M_EE0E0E0E0B3m_.exit ], [ %.promoted26, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ %i.dt, %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEuNCNvB3g_20aggregate_peers_info0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyB3e_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtNtNtNtB6m_11collections4hash3map4IteryBO_EB4M_EE0E0E0E0B3m_.exit ], [ %1, %bb.a ] ; 2 uses
  %.not21 = icmp eq i16 %i.q, 0
  br i1 %.not21, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %.outer
  %i.r = icmp eq i64 %.sroa.0.0.ph, 0
  br i1 %i.r, label %bb.ad, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split
  store ptr %i.dx, ptr %0, align 8
  store ptr %i.dy, ptr %i.h, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %.outer
  %.lcssa2529 = phi ptr [ %i.dy, %._crit_edge ], [ %.lcssa2530, %.outer ]
  %.lcssa2427 = phi ptr [ %i.dx, %._crit_edge ], [ %.lcssa2428, %.outer ] ; 2 uses
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.q, %.outer ] ; 3 uses
  %i.s = add i16 %.lcssa, -1
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = and i16 %i.s, %.lcssa                    ; 2 uses
  store i16 %i.v, ptr %i.g, align 8
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [32 x i8], ptr %.lcssa2427, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -32 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3125
  call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z), !noalias !3126
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.aa = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyyEBW_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %bb.c unwind label %.loopexit.split-lp.i.i.i, !noalias !3127

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.k, %bb.g, %bb.b
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.u, %bb.n, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.dh, %bb.u ], [ %i.cr, %bb.n ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #36
          to label %common.resume.i.i unwind label %bb.x, !noalias !3127

bb.c:                                             ; preds = %bb.b
  br i1 %i.aa, label %bb.d, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.ab = load ptr, ptr %i.k, align 8, !noalias !3128, !nonnull !16, !noundef !16 ; 2 uses
  %i.ac = load i64, ptr %i.l, align 8, !noalias !3128, !noundef !16 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !3129 ; 9 uses
  %i.ad = and i64 %i.ac, 1152921504606846968      ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad ; 2 uses
  %.not.i.i.i.i52 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i52, label %._crit_edge55, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.e:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 64
  %i.ag = add nsw i64 %.sroa.5.0.i.i.i.i53, -8    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i, label %._crit_edge55, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i

._crit_edge55:                                    ; preds = %bb.e, %bb.d
  %i.ah = shl i64 %i.ac, 3
  %.idx = and i64 %i.ah, 56                       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %.not.not.not.i.not.not.i.i.i.i56 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i56, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i, label %.lr.ph58

bb.f:                                             ; preds = %.lr.ph58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i, label %.lr.ph58

.lr.ph58:                                         ; preds = %._crit_edge55, %bb.f
  %i.ak = phi ptr [ %i.aj, %bb.f ], [ %i.ae, %._crit_edge55 ] ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !3130, !noalias !3131, !noundef !16
  %i.al = icmp eq i64 %.val2.i.i.i.i.i, %.val.i.i.i
  br i1 %i.al, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i, label %bb.f

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.d, %bb.e
  %.sroa.0.05.i.i.i.i54 = phi ptr [ %i.af, %bb.e ], [ %i.ab, %bb.d ] ; 9 uses
  %.sroa.5.0.i.i.i.i53 = phi i64 [ %i.ag, %bb.e ], [ %i.ad, %bb.d ]
  %.val11.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i54, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.am = icmp eq i64 %.val11.i.i.i.i.i, %.val.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 8
  %.val11.i.1.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.ao = icmp eq i64 %.val11.i.1.i.i.i.i, %.val.i.i.i
  %i.ap = or i1 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 16
  %.val11.i.2.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.ar = icmp eq i64 %.val11.i.2.i.i.i.i, %.val.i.i.i
  %i.as = or i1 %i.ap, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 24
  %.val11.i.3.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.au = icmp eq i64 %.val11.i.3.i.i.i.i, %.val.i.i.i
  %i.av = or i1 %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 32
  %.val11.i.4.i.i.i.i = load i64, ptr %i.aw, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.ax = icmp eq i64 %.val11.i.4.i.i.i.i, %.val.i.i.i
  %i.ay = or i1 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 40
  %.val11.i.5.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.ba = icmp eq i64 %.val11.i.5.i.i.i.i, %.val.i.i.i
  %i.bb = or i1 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 48
  %.val11.i.6.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.bd = icmp eq i64 %.val11.i.6.i.i.i.i, %.val.i.i.i
  %i.be = or i1 %i.bb, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i54, i64 56
  %.val11.i.7.i.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !3130, !noalias !3132, !noundef !16
  %i.bg = icmp eq i64 %.val11.i.7.i.i.i.i, %.val.i.i.i
  %i.bh = or i1 %i.be, %i.bg
  br i1 %i.bh, label %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i, label %bb.e

_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.f, %.lr.ph58, %._crit_edge55, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ 0, %bb.c ], [ 0, %.lr.ph58 ], [ 1, %._crit_edge55 ], [ 1, %bb.f ], [ 0, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsC_NtB9_3cmpyNtB1L_13SliceContains14slice_contains0ECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %i.bi = load i64, ptr %i.m, align 8, !alias.scope !3133, !noalias !3128, !noundef !16
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info0B9_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i
  %i.bk = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRyECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3127 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  %i.bl = lshr i64 %i.bk, 57
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  %i.bn = load i64, ptr %i.o, align 8, !alias.scope !3136, !noalias !3128, !noundef !16 ; 2 uses
  %i.bo = load ptr, ptr %.val.i.i, align 8, !alias.scope !3136, !noalias !3128, !nonnull !16, !noundef !16 ; 2 uses
  %i.bp = insertelement <16 x i8> poison, i8 %i.bm, i64 0
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.noexc.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.ch, %bb.j ]
  %.pn.i.i.i.i.i = phi i64 [ %i.bk, %.noexc.i.i.i ], [ %i.ci, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.bn ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.br, align 1, !noalias !3137 ; 2 uses
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.bq
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.not30.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i.i.i.i = phi i16 [ %i.cg, %bb.i ], [ %i.bt, %bb.h ] ; 3 uses
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.bv
  %i.bx = and i64 %i.bw, %i.bn
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %i.cb = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ca)
          to label %.noexc9.i.i.i unwind label %.loopexit.i.i.i, !noalias !3127

.noexc9.i.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.cb, label %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i, label %bb.i, !prof !18

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.j, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info0B9_.exit.i.i, !prof !17

bb.i:                                             ; preds = %.noexc9.i.i.i
  %i.cf = add i16 %.sroa.06.0.i31.i.i.i.i.i, -1
  %i.cg = and i16 %i.cf, %.sroa.06.0.i31.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ch = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.ci = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ch
  br label %bb.h

_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i: ; preds = %.noexc9.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %.val6.i.i.i = load ptr, ptr %i.cj, align 8, !noalias !3127, !nonnull !16, !align !19, !noundef !16 ; 10 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 120
  %i.cl = load i64, ptr %i.ck, align 8, !range !28, !noalias !3138, !noundef !16
  %.not.i10.i.i.i = icmp eq i64 %i.cl, 2
  br i1 %.not.i10.i.i.i, label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info0B9_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3139
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cm)
          to label %.noexc11.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3127

.noexc11.i.i.i:                                   ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 456
  %i.co = load i64, ptr %i.cn, align 8, !range !28, !noalias !3138, !noundef !16
  %.not11.i.i.i.i = icmp eq i64 %i.co, 2
  br i1 %.not11.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc11.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 504
  %i.cq = load i64, ptr %i.cp, align 8, !range !28, !noalias !3138, !noundef !16
  %.not12.i.i.i.i = icmp eq i64 %i.cq, 2
  br i1 %.not12.i.i.i.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %.noexc11.i.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i unwind label %bb.n, !noalias !3138

bb.n:                                             ; preds = %bb.m
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i.i unwind label %bb.o, !noalias !3138

bb.o:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !3138
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.m
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !3127

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !3139
  %i.ct = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 577
  %i.cu = load i8, ptr %i.ct, align 1, !range !38, !noalias !3138, !noundef !16
  %i.cv = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 576
  %i.cw = load i8, ptr %i.cv, align 8, !range !23, !noalias !3138, !noundef !16
  %i.cx = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 552
  %i.cy = load <2 x i64>, ptr %i.cx, align 8, !noalias !3138
  %i.cz = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 568
  %i.da = load i64, ptr %i.cz, align 8, !noalias !3138, !noundef !16
  %i.db = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 520 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !range !39, !noalias !3138, !noundef !16 ; 2 uses
  %i.dd = xor i64 %i.dc, -9223372036854775808
  %i.de = icmp slt i64 %i.dc, 0
  %i.df = select i1 %i.de, i64 %i.dd, i64 2
  switch i64 %i.df, label %bb.q [
    i64 0, label %bb.r
    i64 1, label %bb.t
    i64 2, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %.val6.i.i.i, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.66.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.dg, i64 12, i1 false), !noalias !3140
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3139
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db)
          to label %bb.v unwind label %bb.u, !noalias !3138

bb.t:                                             ; preds = %bb.v, %bb.r, %bb.p
  %.sroa.77.0.i.i.i.i = phi i32 [ undef, %bb.r ], [ %.sroa.77.0.copyload.i.i.i.i, %bb.v ], [ undef, %bb.p ]
  %.sroa.04.0.i.i.i.i = phi i64 [ -9223372036854775808, %bb.r ], [ %.sroa.04.0.copyload.i.i.i.i, %bb.v ], [ -9223372036854775807, %bb.p ]
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.e, align 8, !noalias !3125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !3141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3139
  br label %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #36
          to label %.body.i.i.i unwind label %bb.w, !noalias !3138

bb.v:                                             ; preds = %bb.s
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !3139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.66.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.66.0..sroa_idx.i.i.i.i, i64 12, i1 false), !noalias !3141
  %.sroa.77.0.copyload.i.i.i.i = load i32, ptr %.sroa.77.0..sroa_idx.i.i.i.i, align 4, !noalias !3139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3139
  br label %bb.t

bb.w:                                             ; preds = %bb.u
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !3138
  unreachable

_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i: ; preds = %bb.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i
  %.sroa.12.0.ph.i.i.i = phi i8 [ %i.cu, %bb.t ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %.sroa.11.0.ph.i.i.i = phi i8 [ %i.cw, %bb.t ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.da, %bb.t ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %.sroa.7.0.ph.i.i.i = phi i32 [ %.sroa.77.0.i.i.i.i, %bb.t ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %.sroa.53.0.ph.i.i.i = phi i64 [ %.sroa.04.0.i.i.i.i, %bb.t ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %.sroa.0.04.ph.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.t ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  %i.dj = phi <2 x i64> [ %i.cy, %bb.t ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3139
  br label %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info0B9_.exit.i.i

bb.x:                                             ; preds = %.body.i.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !3127
  unreachable

common.resume.i.i:                                ; preds = %.body.i.i.i.i.i.i, %.body.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info0B9_.exit.i.i: ; preds = %._crit_edge.i.i.i.i.i, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i
  %.sroa.12.1.i.i.i = phi i8 [ %.sroa.12.0.ph.i.i.i, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i ], [ undef, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i ], [ undef, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.11.1.i.i.i = phi i8 [ %.sroa.11.0.ph.i.i.i, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i ], [ undef, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i ], [ undef, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.10.1.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i ], [ undef, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i ], [ undef, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.7.1.i.i.i = phi i32 [ %.sroa.7.0.ph.i.i.i, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i ], [ undef, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i ], [ undef, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.53.1.i.i.i = phi i64 [ %.sroa.53.0.ph.i.i.i, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i ], [ undef, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i ], [ undef, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.0.04.ph.i.i.i, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i ], [ -1, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i ], [ -1, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i ], [ -1, %._crit_edge.i.i.i.i.i ]
  %i.dl = phi <2 x i64> [ %i.dj, %_RNCNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info00Bb_.exit.sink.split.i.i.i ], [ undef, %_RNvXsC_NtNtCskKLDkoKarTP_4core5slice3cmpyNtB5_13SliceContains14slice_contains.exit.i.i.i ], [ undef, %_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyRNtNtNtCsl8OoimOLbh_6qdrant6common9telemetry13TelemetryDataNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getyEBW_.exit.i.i.i ], [ undef, %._crit_edge.i.i.i.i.i ]
  %i.dm = load i64, ptr %i.y, align 8, !alias.scope !3129, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3125
  store i64 %.sroa.0.1.i.i.i, ptr %.sroa.4.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !3141
  store i64 %.sroa.53.1.i.i.i, ptr %.sroa.4.sroa.6.0..sroa_idx.i.i, align 8, !noalias !3141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.66.i.i.i.i, i64 12, i1 false), !noalias !3141
  store i32 %.sroa.7.1.i.i.i, ptr %.sroa.4.sroa.8.0..sroa_idx.i.i, align 4, !noalias !3141
  store <2 x i64> %i.dl, ptr %.sroa.4.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3141
  store i64 %.sroa.10.1.i.i.i, ptr %.sroa.4.sroa.11.0..sroa_idx.i.i, align 8, !noalias !3141
  store i8 %.sroa.11.1.i.i.i, ptr %.sroa.4.sroa.12.0..sroa_idx.i.i, align 8, !noalias !3141
  store i8 %.sroa.12.1.i.i.i, ptr %.sroa.4.sroa.13.0..sroa_idx.i.i, align 1, !noalias !3141
  store i8 %.sroa.0.0.i.i.i, ptr %.sroa.4.sroa.15.0..sroa_idx.i.i, align 8, !noalias !3141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3142
  call void @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertBW_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val2.i.i, i64 noundef %i.dm, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.b), !noalias !3143
  %i.dn = load i64, ptr %i.a, align 8, !range !25, !alias.scope !3144, !noalias !3142, !noundef !16
  %i.do = icmp eq i64 %i.dn, -1
  br i1 %i.do, label %_RNCINvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB8_4IteryNtNtCsgGgPqgSfnMH_7storage5types8PeerInfoENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1A_8adapters3map8map_foldTRyRBO_ETyNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEuNCNvB3g_20aggregate_peers_info0NCINvNvB1u_8for_each4callB3c_NCINvXs1i_B8_INtB8_7HashMapyB3e_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtB1y_7collect6ExtendB3c_E6extendINtB2A_3MapINtNtNtNtB6m_11collections4hash3map4IteryBO_EB4M_EE0E0E0E0B3m_.exit, label %bb.y

bb.y:                                             ; preds = %_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry20aggregate_peers_info0B9_.exit.i.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i unwind label %bb.z, !noalias !3143

bb.z:                                             ; preds = %bb.y
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %.body.i.i.i.i.i.i unwind label %bb.aa, !noalias !3143

bb.aa:                                            ; preds = %bb.z
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #34, !noalias !3143
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops21distributed_telemetry19DistributedPeerInfoEBJ_.exit.i.i.i.i.i unwind label %bb.ab, !noalias !3143

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsl8OoimOLbh_6qdrant.exit.i.i.i.i.i.i.i
  %i.dr = landingpad { ptr, i32 }
end_hunk_0
