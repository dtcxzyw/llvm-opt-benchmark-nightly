Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.032?download=true
inline.NumInlined: 880
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage:bb.a
  %i.dq = xor i64 %i.dp, 63
  %i.dr = mul nuw nsw i64 %i.dq, 9
  %i.ds = add nuw nsw i64 %i.dr, 73
  %i.dt = lshr i64 %i.ds, 6
  %i.du = add nuw i64 %.sroa.0.0.i.i9.i.i.i.i, 1
  %i.dv = add nuw i64 %i.du, %i.dt
  br label %_RNvXs1B_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9ConditionNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

bb.p:                                             ; preds = %bb.b
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i.i.i.i = load i32, ptr %i.dw, align 8, !alias.scope !326, !noundef !4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val6.i.i.i.i = load i32, ptr %i.dx, align 4, !alias.scope !326 ; 2 uses
  %i.dy = icmp eq i32 %.val5.i.i.i.i, 0
  br i1 %i.dy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dz = or i32 %.val5.i.i.i.i, 1
  %i.ea = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dz, i1 true)
  %i.eb = xor i32 %i.ea, 31
  %i.ec = mul nuw nsw i32 %i.eb, 9
  %i.ed = add nuw nsw i32 %i.ec, 73
  %i.ee = lshr i32 %i.ed, 6
  %narrow.i.i.i.i.i = add nuw nsw i32 %i.ee, 3
  %i.ef = zext nneg i32 %narrow.i.i.i.i.i to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0.i.i10.i.i.i.i = phi i64 [ %i.ef, %bb.q ], [ 2, %bb.p ]
  %i.eg = icmp eq i32 %.val6.i.i.i.i, 0
  br i1 %i.eg, label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SliceConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = or i32 %.val6.i.i.i.i, 1
  %i.ei = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.eh, i1 true)
  %i.ej = xor i32 %i.ei, 31
  %i.ek = mul nuw nsw i32 %i.ej, 9
  %i.el = add nuw nsw i32 %i.ek, 73
  %i.em = lshr i32 %i.el, 6
  %narrow.i3.i.i.i.i.i.i = add nuw nsw i32 %i.em, 1
  %i.en = zext nneg i32 %narrow.i3.i.i.i.i.i.i to i64
  br label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SliceConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i

_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SliceConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.en, %bb.s ], [ 0, %bb.r ]
  %i.eo = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i.i, %.sroa.0.0.i.i10.i.i.i.i
  br label %_RNvXs1B_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9ConditionNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

_RNvXs1B_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9ConditionNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit: ; preds = %bb.a, %bb.c, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16IsEmptyConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i, %bb.f, %bb.g, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15IsNullConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15NestedConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18HasVectorConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SliceConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ], [ %i.ag, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16IsEmptyConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.at, %bb.f ], [ %i.bd, %bb.g ], [ %i.bw, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15IsNullConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.dc, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15NestedConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.dv, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18HasVectorConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i ], [ %i.eo, %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14SliceConditionECsgGgPqgSfnMH_7storage.exit.i.i.i.i ]
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i64 noundef %.sroa.02.0.i.i, ptr %.val1) #15
  tail call void @_RINvXs1B_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB7_9ConditionNtNtCs4J2qyOfMFpM_5prost7message7Message10encode_rawNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9GeoRadiusNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i32 noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext i32 %i.b to i64
  %.val1 = load ptr, ptr %2, align 8              ; 2 uses
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i64 noundef %i.c, ptr %.val1) #15
  %i.d = load i64, ptr %1, align 8, !range !9, !alias.scope !332, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvXs3x_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9GeoRadiusNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load double, ptr %i.f, align 8, !alias.scope !333, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i.i = load double, ptr %i.g, align 8, !alias.scope !333, !noundef !4
  %i.h = fcmp une double %.val.i.i, 0.000000e+00
  %i.i = fcmp une double %.val4.i.i, 0.000000e+00
  %.sroa.01.0.i.i.i.i.i = select i1 %i.i, i64 9, i64 0
  %i.j = select i1 %i.h, i64 11, i64 2
  %i.k = add nuw nsw i64 %.sroa.01.0.i.i.i.i.i, %i.j
  br label %_RNvXs3x_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9GeoRadiusNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

_RNvXs3x_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9GeoRadiusNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load float, ptr %i.l, align 8, !alias.scope !332, !noundef !4
  %i.n = fcmp une float %i.m, 0.000000e+00
  %.sroa.01.0.i = select i1 %i.n, i64 5, i64 0
  %i.o = add nuw nsw i64 %.sroa.01.0.i, %.sroa.02.0.i.i
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i64 noundef %i.o, ptr %.val1) #15
  tail call void @_RINvXs3x_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB7_9GeoRadiusNtNtCs4J2qyOfMFpM_5prost7message7Message10encode_rawNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ListValueNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i32 noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext i32 %i.b to i64
  %.val1 = load ptr, ptr %2, align 8              ; 2 uses
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i64 noundef %i.c, ptr %.val1) #15
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %.val2, i64 %.val3
  %i.g = tail call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2f_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB37_5accumjNtB56_3Sum3sumIBO_BN_B41_EE0E0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull readonly align 8 %.val2, ptr noundef nonnull readonly %i.f, i64 noundef 0)
  %i.h = add i64 %i.g, %.val3
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i64 noundef %i.h, ptr %.val1) #15
  tail call void @_RINvXsJ_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9ListValueNtNtCs4J2qyOfMFpM_5prost7message7Message10encode_rawNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message6encodeNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9MinShouldNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i32 noundef %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %i.a = shl i32 %0, 3
  %i.b = or disjoint i32 %i.a, 2
  %i.c = zext i32 %i.b to i64
  %.val1 = load ptr, ptr %2, align 8              ; 2 uses
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i64 noundef %i.c, ptr %.val1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !336, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !336, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw [416 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2j_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3b_5accumjNtB5a_3Sum3sumIBO_BN_B45_EE0E0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly %i.h, i64 noundef 0), !noalias !336
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !336, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9MinShouldNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = or i64 %i.k, 1
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1
  br label %_RNvXs1t_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9MinShouldNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit

_RNvXs1t_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_9MinShouldNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.s, %bb.b ], [ 0, %bb.a ]
  %i.t = add i64 %i.i, %i.g
  %i.u = add i64 %i.t, %.sroa.0.0.i
  tail call fastcc void @_RINvNtNtCs4J2qyOfMFpM_5prost8encoding6varint13encode_varintNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(i64 noundef %i.u, ptr %.val1) #15
  tail call void @_RINvXs1t_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB7_9MinShouldNtNtCs4J2qyOfMFpM_5prost7message7Message10encode_rawNtNtNtCsgOCJwUSa4vG_5tonic5codec6buffer9EncodeBufECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message14merge_repeatedNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage(i8 noundef range(i8 0, 6) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 2, ptr %i.d, align 1
  store i8 %0, ptr %i.c, align 1
  %.not.i = icmp eq i8 %0, 2
  br i1 %.not.i, label %bb.b, label %_RNvNtCskQk6bzzE9jJ_5prost8encoding15check_wire_type.exit, !prof !342

_RNvNtCskQk6bzzE9jJ_5prost8encoding15check_wire_type.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsa_NtCskQk6bzzE9jJ_5prost8encodingNtB5_8WireTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsa_NtCskQk6bzzE9jJ_5prost8encodingNtB5_8WireTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef nonnull align 8 ptr @_RINvMNtCskQk6bzzE9jJ_5prost5errorNtB3_11DecodeError3newNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i32 0, ptr %i.h, align 8
  %i.i = icmp eq i32 %3, 0
  br i1 %i.i, label %_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.thread, label %_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.a, !prof !343

_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.thread: ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 ptr @_RINvMNtCskQk6bzzE9jJ_5prost5errorNtB3_11DecodeError3newReECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 23), !noalias !344
  br label %bb.c

_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.a: ; preds = %bb.b
  %i.k = add i32 %3, -1
  %i.l = call noundef align 8 ptr @_RINvNtCskQk6bzzE9jJ_5prost8encoding10merge_loopNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleNCINvNtB2_7message5mergeBJ_QRShE0B2d_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.k) ; 2 uses
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.thread, %_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.a
  %.sroa.0.0.i914 = phi ptr [ %i.j, %_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.thread ], [ %i.l, %_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.d:                                             ; preds = %_RINvNtNtCskQk6bzzE9jJ_5prost8encoding7message5mergeNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleQRShECsgGgPqgSfnMH_7storage.exit.a
  %i.m = load i64, ptr %i.e, align 8, !noundef !4
  %i.n = load i32, ptr %i.h, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !345, !noundef !4 ; 3 uses
  %i.q = load i64, ptr %1, align 8, !range !5, !alias.scope !345, !noundef !4
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutCsgGgPqgSfnMH_7storage.exit

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #14
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutCsgGgPqgSfnMH_7storage.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutCsgGgPqgSfnMH_7storage.exit: ; preds = %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !345, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.p ; 2 uses
  store i64 %i.m, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.n, ptr %i.v, align 8
  %i.w = add i64 %i.p, 1
  store i64 %i.w, ptr %i.o, align 8, !alias.scope !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtCskQk6bzzE9jJ_5prost8encoding15check_wire_type.exit, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutCsgGgPqgSfnMH_7storage.exit, %bb.c
  %.sroa.0.0 = phi ptr [ null, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs5z4TqnZpI32_10raft_proto6protos7eraftpb16ConfChangeSingleE8push_mutCsgGgPqgSfnMH_7storage.exit ], [ %.sroa.0.0.i914, %bb.c ], [ %i.g, %_RNvNtCskQk6bzzE9jJ_5prost8encoding15check_wire_type.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs1l_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw [416 x i8], ptr %i.b, i64 %i.d
  %i.f = tail call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2j_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3b_5accumjNtB5a_3Sum3sumIBO_BN_B45_EE0E0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull readonly align 8 %i.b, ptr noundef nonnull readonly %i.e, i64 noundef 0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw [416 x i8], ptr %i.h, i64 %i.j
  %i.l = tail call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2j_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3b_5accumjNtB5a_3Sum3sumIBO_BN_B45_EE0E0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull readonly align 8 %i.h, ptr noundef nonnull readonly %i.k, i64 noundef 0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw [416 x i8], ptr %i.n, i64 %i.p
  %i.r = tail call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2j_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3b_5accumjNtB5a_3Sum3sumIBO_BN_B45_EE0E0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull readonly align 8 %i.n, ptr noundef nonnull readonly %i.q, i64 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i64, ptr %i.s, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %i.t, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  br i1 %.not, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9MinShouldE6map_orjNCNvXs1l_BL_NtBL_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsgGgPqgSfnMH_7storage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !358, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !358, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw [416 x i8], ptr %i.v, i64 %i.x
  %i.z = tail call noundef i64 @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9ConditionENvYB1n_NtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_lenENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldjjjNCINvNtNtB2j_8encoding7message20encoded_len_repeatedB1n_E0NCINvXsK_NtB3b_5accumjNtB5a_3Sum3sumIBO_BN_B45_EE0E0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull readonly align 8 %i.v, ptr noundef nonnull readonly %i.y, i64 noundef 0), !noalias !358
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !358, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNCNvXs1l_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0CsgGgPqgSfnMH_7storage.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = or i64 %i.ab, 1
  %i.ae = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = xor i64 %i.ae, 63
  %i.ag = mul nuw nsw i64 %i.af, 9
  %i.ah = add nuw nsw i64 %i.ag, 73
  %i.ai = lshr i64 %i.ah, 6
  %i.aj = add nuw nsw i64 %i.ai, 1
  br label %_RNCNvXs1l_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0CsgGgPqgSfnMH_7storage.exit.i

_RNCNvXs1l_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0CsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.aj, %bb.c ], [ 0, %bb.b ]
  %i.ak = add i64 %i.z, %i.x
  %i.al = add i64 %i.ak, %.sroa.0.0.i.i.i.i       ; 2 uses
  %i.am = or i64 %i.al, 1
  %i.an = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = xor i64 %i.an, 63
  %i.ap = mul nuw nsw i64 %i.ao, 9
  %i.aq = add nuw nsw i64 %i.ap, 73
  %i.ar = lshr i64 %i.aq, 6
  %i.as = add i64 %i.al, 1
  %i.at = add i64 %i.as, %i.ar
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9MinShouldE6map_orjNCNvXs1l_BL_NtBL_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsgGgPqgSfnMH_7storage.exit

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant9MinShouldE6map_orjNCNvXs1l_BL_NtBL_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0ECsgGgPqgSfnMH_7storage.exit: ; preds = %bb.a, %_RNCNvXs1l_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0CsgGgPqgSfnMH_7storage.exit.i
  %.sroa.02.0.i = phi i64 [ %i.at, %_RNCNvXs1l_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB8_6FilterNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len0CsgGgPqgSfnMH_7storage.exit.i ], [ 0, %bb.a ]
  %i.au = add i64 %i.f, %i.d
  %i.av = add i64 %i.au, %i.j
  %i.aw = add i64 %i.av, %i.l
  %i.ax = add i64 %i.aw, %i.p
  %i.ay = add i64 %i.ax, %i.r
  %i.az = add i64 %i.ay, %.sroa.02.0.i
  ret i64 %i.az
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef i64 @_RNvXs2C_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_5MatchNtNtCs4J2qyOfMFpM_5prost7message7Message11encoded_len(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !373, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.a, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  br i1 %.not, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5match10MatchValueE6map_orjNvMs3_BL_BJ_11encoded_lenECsgGgPqgSfnMH_7storage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5match10MatchValueE6map_orjNvMs3_BL_BJ_11encoded_lenECsgGgPqgSfnMH_7storage.exit
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val5.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !377, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %.val5.i.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = or i64 %.val5.i.i.i, 1
  %i.e = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = mul nuw nsw i64 %i.f, 9
  %i.h = add nuw nsw i64 %i.g, 73
  %i.i = lshr i64 %i.h, 6
  %i.j = add nuw i64 %.val5.i.i.i, 1
  %i.k = add nuw i64 %i.j, %i.i
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5match10MatchValueE6map_orjNvMs3_BL_BJ_11encoded_lenECsgGgPqgSfnMH_7storage.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !377, !noundef !4
  %i.m = or i64 %.val.i.i.i, 1
  %i.n = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.m, i1 true)
  %i.o = xor i64 %i.n, 63
  %i.p = mul nuw nsw i64 %i.o, 9
  %i.q = add nuw nsw i64 %i.p, 73
  %i.r = lshr i64 %i.q, 6
  %i.s = add nuw nsw i64 %i.r, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5match10MatchValueE6map_orjNvMs3_BL_BJ_11encoded_lenECsgGgPqgSfnMH_7storage.exit

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !377, !noundef !4 ; 3 uses
  %i.u = icmp sgt i64 %.val4.i.i.i, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = or i64 %.val4.i.i.i, 1
  %i.w = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = xor i64 %i.w, 63
  %i.y = mul nuw nsw i64 %i.x, 9
  %i.z = add nuw nsw i64 %i.y, 73
  %i.aa = lshr i64 %i.z, 6
  %i.ab = add nuw i64 %.val4.i.i.i, 1
  %i.ac = add nuw i64 %i.ab, %i.aa
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5match10MatchValueE6map_orjNvMs3_BL_BJ_11encoded_lenECsgGgPqgSfnMH_7storage.exit

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !377, !nonnull !4, !noundef !4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !377, !noundef !4 ; 6 uses
  %i.af = icmp eq i64 %.val9.i.i.i, 0
  br i1 %i.af, label %_RINvNtNtCs4J2qyOfMFpM_5prost8encoding7message11encoded_lenNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant15RepeatedStringsECsgGgPqgSfnMH_7storage.exit.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %xtraiter30 = and i64 %.val9.i.i.i, 1
  %i.ag = icmp eq i64 %.val9.i.i.i, 1
  br i1 %i.ag, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter34 = and i64 %.val9.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.bd, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.preheader.i.i.i.i.i.i ]
  %niter35 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter35.next.1, %.preheader.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val8.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !378, !noalias !377, !noundef !4 ; 3 uses
  %i.aj = icmp sgt i64 %.val.i.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = or i64 %.val.i.i.i.i.i.i.i, 1
  %i.al = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = xor i64 %i.al, 63
  %i.an = mul nuw nsw i64 %i.am, 9
  %i.ao = add nuw nsw i64 %i.an, 73
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = add i64 %.val.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i.i
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %.val8.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 40
  %.val.i.i.i.i.i.i.i.1 = load i64, ptr %i.at, align 8, !alias.scope !378, !noalias !377, !noundef !4 ; 3 uses
  %i.au = icmp sgt i64 %.val.i.i.i.i.i.i.i.1, -1
  tail call void @llvm.assume(i1 %i.au)
  %i.av = or i64 %.val.i.i.i.i.i.i.i.1, 1
  %i.aw = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = xor i64 %i.aw, 63
  %i.ay = mul nuw nsw i64 %i.ax, 9
  %i.az = add nuw nsw i64 %i.ay, 73
  %i.ba = lshr i64 %i.az, 6
  %i.bb = add i64 %.val.i.i.i.i.i.i.i.1, %i.ar
  %i.bc = add i64 %i.bb, %i.ba                    ; 3 uses
  %i.bd = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter35.next.1 = add nuw i64 %niter35, 2       ; 2 uses
  %niter35.ncmp.1 = icmp eq i64 %niter35.next.1, %unroll_iter34
end_hunk_0
