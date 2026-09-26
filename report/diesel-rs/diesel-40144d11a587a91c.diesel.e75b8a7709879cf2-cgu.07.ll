Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.07?download=true
inline.NumInlined: 362
inline.NumDeleted: 195
begin_hunk_0_@_RINvXs4_NtCsc61CYD6Y1ak_10serde_json6numberNtB6_6NumberNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB2e_5mysql7backend5MysqlEEEB2e_:bb.a
  %.sroa.07.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.l, i1 false)
  %i.n = call noundef i64 @_RNvXsu_Csg6Nh09qpG93_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i, ptr noalias noundef nonnull dereferenceable(20) %i.b) ; 2 uses
  br i1 %i.m, label %bb.e, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1o_5mysql7backend5MysqlEEB1o_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %i.n, -1                         ; 4 uses
  %i.p = icmp ult i64 %i.o, 20
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  store i8 45, ptr %i.q, align 1, !alias.scope !122
  br label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1o_5mysql7backend5MysqlEEB1o_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79) #22
  unreachable

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1o_5mysql7backend5MysqlEEB1o_.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ %i.o, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.r = sub nuw i64 20, %.sroa.0.0.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %_RNvXs1_NtCsc61CYD6Y1ak_10serde_json3serQINtB5_10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB10_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer13serialize_u64B10_.exit, label %bb.h, !prof !10

bb.h:                                             ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1o_5mysql7backend5MysqlEEB1o_.exit.i
  %i.u = call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.t)
  br label %_RNvXs1_NtCsc61CYD6Y1ak_10serde_json3serQINtB5_10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB10_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer13serialize_u64B10_.exit

bb.i:                                             ; preds = %bb.a
  %i.v = load double, ptr %i.e, align 8, !noundef !3 ; 2 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %cond.i = fcmp ueq double %i.w, +inf
  br i1 %cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.x = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.x, null
  br i1 %.not.i5, label %_RNvXs1_NtCsc61CYD6Y1ak_10serde_json3serQINtB5_10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB10_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer13serialize_u64B10_.exit, label %bb.l, !prof !10

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = call { ptr, i64 } @_RINvMs6_Cs4wuJnTqSSY0_4zmijNtB6_6Buffer13format_finitedECsjRvGck33osM_6diesel(ptr noalias noundef nonnull dereferenceable(24) %i.a, double noundef %i.v) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ab = call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.aa) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %_RNvXs1_NtCsc61CYD6Y1ak_10serde_json3serQINtB5_10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB10_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer13serialize_u64B10_.exit, label %bb.m, !prof !10

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.x)
  br label %_RNvXs1_NtCsc61CYD6Y1ak_10serde_json3serQINtB5_10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB10_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer13serialize_u64B10_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ab)
  br label %_RNvXs1_NtCsc61CYD6Y1ak_10serde_json3serQINtB5_10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB10_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer13serialize_u64B10_.exit

_RNvXs1_NtCsc61CYD6Y1ak_10serde_json3serQINtB5_10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB10_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer13serialize_u64B10_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1o_5mysql7backend5MysqlEEB1o_.exit.i, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1o_5mysql7backend5MysqlEEB1o_.exit.i ], [ null, %bb.b ], [ %i.k, %bb.c ], [ %i.u, %bb.h ], [ null, %bb.j ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ], [ null, %bb.k ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsc61CYD6Y1ak_10serde_json3ser8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_entryNtNtBR_6string6StringNtNtB8_5value5ValueECsjRvGck33osM_6diesel(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !129, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !11, !alias.scope !129, !noundef !3
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECsjRvGck33osM_6diesel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !129, !nonnull !3, !noundef !3
  tail call void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE17extend_from_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !129
  br label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECsjRvGck33osM_6diesel.exit

_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtBX_6string6StringECsjRvGck33osM_6diesel.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.d, align 8, !alias.scope !129
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.g = tail call noundef ptr @_RINvNtCsc61CYD6Y1ak_10serde_json3ser18format_escaped_strQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB2_16CompactFormatterECsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3), !noalias !129 ; 0 uses
  %.val.i4 = load ptr, ptr %i.c, align 8, !noalias !130, !nonnull !3, !align !4, !noundef !3
  tail call void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE17extend_from_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !130
  %i.h = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef align 8 dereferenceable(8) %i.c), !noalias !131, !inline_history !128
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCsc61CYD6Y1ak_10serde_json3ser8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBR_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_entryNtNtCs40k4W9msRzi_5alloc6string6StringNtNtB8_5value5ValueEBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !138, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !11, !alias.scope !138, !noundef !3
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.thread.i, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.i

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.i: ; preds = %bb.a
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !138, !nonnull !3, !noundef !3
  %i.g = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 1), !noalias !138 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.thread.i, label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit, !prof !13

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.thread.i: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.i, %bb.a
  store i8 2, ptr %i.d, align 8, !alias.scope !138
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = tail call noundef ptr @_RINvNtCsc61CYD6Y1ak_10serde_json3ser18format_escaped_strQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBY_2pg7backend2PgENtB2_16CompactFormatterEBY_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3), !noalias !138 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit, !prof !10

_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.i, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.thread.i
  %.sink.i = phi ptr [ %i.g, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.i ], [ %i.h, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.thread.i ]
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink.i), !noalias !138
  br label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit

bb.b:                                             ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_2pg7backend2PgEEB1w_.exit.thread.i
  %.val.i4 = load ptr, ptr %i.c, align 8, !noalias !139, !nonnull !3, !align !4, !noundef !3
  %i.j = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 1), !noalias !139 ; 2 uses
  %.not.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i5, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j), !noalias !139, !inline_history !137
  br label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB2f_2pg7backend2PgEEEB2f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef align 8 dereferenceable(8) %i.c), !noalias !140, !inline_history !137
  br label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit

_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit: ; preds = %bb.d, %bb.c, %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit ], [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCsc61CYD6Y1ak_10serde_json3ser8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBR_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_entryNtNtCs40k4W9msRzi_5alloc6string6StringNtNtB8_5value5ValueEBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !147, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !11, !alias.scope !147, !noundef !3
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.thread.i, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.i

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.i: ; preds = %bb.a
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !147, !nonnull !3, !noundef !3
  %i.g = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 1), !noalias !147 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.thread.i, label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit, !prof !13

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.thread.i: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.i, %bb.a
  store i8 2, ptr %i.d, align 8, !alias.scope !147
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = tail call noundef ptr @_RINvNtCsc61CYD6Y1ak_10serde_json3ser18format_escaped_strQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBY_5mysql7backend5MysqlENtB2_16CompactFormatterEBY_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3), !noalias !147 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit, !prof !10

_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.i, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.thread.i
  %.sink.i = phi ptr [ %i.g, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.i ], [ %i.h, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.thread.i ]
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink.i), !noalias !147
  br label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit

bb.b:                                             ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1w_5mysql7backend5MysqlEEB1w_.exit.thread.i
  %.val.i4 = load ptr, ptr %i.c, align 8, !noalias !148, !nonnull !3, !align !4, !noundef !3
  %i.j = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 1), !noalias !148 ; 2 uses
  %.not.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i5, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j), !noalias !148, !inline_history !146
  br label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB2f_5mysql7backend5MysqlEEEB2f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef align 8 dereferenceable(8) %i.c), !noalias !149, !inline_history !146
  br label %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit

_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap15serialize_valueNtNtB8_5value5ValueEBX_.exit: ; preds = %bb.d, %bb.c, %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RINvXs6_NtCsc61CYD6Y1ak_10serde_json3serINtB6_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlENtB6_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeMap13serialize_keyNtNtCs40k4W9msRzi_5alloc6string6StringEBX_.exit ], [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBR_NtNtB9_5value5ValueEECsjRvGck33osM_6diesel(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %.val10, 5
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !165, !noalias !166, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  tail call void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE17extend_from_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !167
  %.not = icmp eq i64 %.val10, 0
  br i1 %.not, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit.sink.split, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.peel

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.peel: ; preds = %bb.a
  %i.d = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !168, !inline_history !161 ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.d, null
  br i1 %.not.i.i.peel, label %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit.preheader, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit

_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit.preheader: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.peel
  %i.e = icmp eq i64 %.val10, 1
  %.val1344 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.e, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit.sink.split, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.lr.ph

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.lr.ph: ; preds = %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit.preheader
  %.sroa.0.02043 = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %.val13 = load ptr, ptr %0, align 8, !nonnull !3 ; 2 uses
  br label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i

_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %.sroa.0.02044, i64 32 ; 2 uses
  %i.f = icmp eq ptr %.sroa.0.020, %i.c
  br i1 %i.f, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit.sink.split, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i, !llvm.loop !162

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.lr.ph, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit
  %.val1346 = phi ptr [ %.val1344, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.lr.ph ], [ %.val13, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit ]
  %.sroa.0.02044 = phi ptr [ %.sroa.0.02043, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.lr.ph ], [ %.sroa.0.020, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit ] ; 2 uses
  tail call void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE17extend_from_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val1346, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !169, !inline_history !164
  %i.g = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEEECsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.02044, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !168, !inline_history !161 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit, !llvm.loop !162

_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit.sink.split: ; preds = %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit.preheader, %bb.a
  %.val.i.sink = phi ptr [ %.val.i, %bb.a ], [ %.val1344, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit.preheader ], [ %.val13, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCs40k4W9msRzi_5alloc3vec3VechEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsjRvGck33osM_6diesel.exit ]
  tail call void @_RNvMs1_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechE17extend_from_sliceCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.sink, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit

_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i, %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit.sink.split, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.peel
  %.sroa.0.0 = phi ptr [ %i.d, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i.peel ], [ null, %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCs40k4W9msRzi_5alloc3vec3VechENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endCsjRvGck33osM_6diesel.exit.sink.split ], [ %i.g, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs40k4W9msRzi_5alloc3vec3VechEECsjRvGck33osM_6diesel.exit.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBV_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB9_5value5ValueEEBV_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %.val10, 5
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !185, !noalias !186, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.d = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1), !noalias !187 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.val10, 0
  br i1 %.not, label %bb.c, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread.peel

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1), !noalias !187 ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !10

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread.peel: ; preds = %bb.b
  %i.f = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB2f_2pg7backend2PgEEEB2f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !188, !inline_history !181 ; 2 uses
  %.not8.i.i.peel = icmp eq ptr %i.f, null
  br i1 %.not8.i.i.peel, label %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit

_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread.peel
  %i.g = icmp eq i64 %.val10, 1
  %.val1371 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.g, label %.loopexit, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.lr.ph

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.lr.ph: ; preds = %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader
  %.sroa.0.02470 = getelementptr inbounds nuw i8, ptr %.val, i64 32
  br label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i

_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread
  %.sroa.0.024 = getelementptr inbounds nuw i8, ptr %.sroa.0.02472, i64 32 ; 2 uses
  %i.h = icmp eq ptr %.sroa.0.024, %i.c
  %.val13 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.h, label %.loopexit, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i, !llvm.loop !182

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.lr.ph, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit
  %.val1373 = phi ptr [ %.val1371, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.lr.ph ], [ %.val13, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit ]
  %.sroa.0.02472 = phi ptr [ %.sroa.0.02470, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.lr.ph ], [ %.sroa.0.024, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit ] ; 2 uses
  %i.i = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val1373, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 1), !noalias !189, !inline_history !184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !13

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i
  %i.j = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB2f_2pg7backend2PgEEEB2f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.02472, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !188, !inline_history !181 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.j, null
  br i1 %.not8.i.i, label %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit, !llvm.loop !182

.loopexit:                                        ; preds = %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader
  %.val13.lcssa = phi ptr [ %.val1371, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader ], [ %.val13, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_2pg7backend2PgEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit ]
  %i.k = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_2pg7backend2PgENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val13.lcssa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1) ; 2 uses
  %.not.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i14, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !10

_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i, %.loopexit, %bb.a, %bb.c
  %.lcssa.sink = phi ptr [ %i.e, %bb.c ], [ %i.k, %.loopexit ], [ %i.d, %bb.a ], [ %i.i, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i ]
  %i.l = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.lcssa.sink)
  br label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit

_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread, %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, %bb.c, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread.peel, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ null, %bb.c ], [ %i.l, %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_2pg7backend2PgENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split ], [ %i.f, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread.peel ], [ %i.j, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_2pg7backend2PgEEB1x_.exit.i.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBV_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtB9_5value5ValueEEBV_(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.b, align 8, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %.val10, 5
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !205, !noalias !206, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.d = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1), !noalias !207 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !10

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.val10, 0
  br i1 %.not, label %bb.c, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread.peel

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1), !noalias !207 ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !10

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread.peel: ; preds = %bb.b
  %i.f = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB2f_5mysql7backend5MysqlEEEB2f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !208, !inline_history !201 ; 2 uses
  %.not8.i.i.peel = icmp eq ptr %i.f, null
  br i1 %.not8.i.i.peel, label %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit

_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread.peel
  %i.g = icmp eq i64 %.val10, 1
  %.val1371 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.g, label %.loopexit, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.lr.ph

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.lr.ph: ; preds = %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader
  %.sroa.0.02470 = getelementptr inbounds nuw i8, ptr %.val, i64 32
  br label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i

_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread
  %.sroa.0.024 = getelementptr inbounds nuw i8, ptr %.sroa.0.02472, i64 32 ; 2 uses
  %i.h = icmp eq ptr %.sroa.0.024, %i.c
  %.val13 = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.h, label %.loopexit, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i, !llvm.loop !202

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.lr.ph, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit
  %.val1373 = phi ptr [ %.val1371, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.lr.ph ], [ %.val13, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit ]
  %.sroa.0.02472 = phi ptr [ %.sroa.0.02470, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.lr.ph ], [ %.sroa.0.024, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit ] ; 2 uses
  %i.i = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val1373, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 1), !noalias !209, !inline_history !204 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !13

_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i
  %i.j = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsc61CYD6Y1ak_10serde_json5value3serNtB5_5ValueNtNtCseMV7gzmhUlG_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB2f_5mysql7backend5MysqlEEEB2f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.02472, ptr noalias noundef nonnull align 8 dereferenceable(8) %0), !noalias !208, !inline_history !201 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.j, null
  br i1 %.not8.i.i, label %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit, !llvm.loop !202

.loopexit:                                        ; preds = %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader
  %.val13.lcssa = phi ptr [ %.val1371, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit.preheader ], [ %.val13, %_RNCINvYQINtNtCsc61CYD6Y1ak_10serde_json3ser10SerializerQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBX_5mysql7backend5MysqlEENtNtCseMV7gzmhUlG_10serde_core3ser10Serializer11collect_seqRINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBb_5value5ValueEE0BX_.exit ]
  %i.k = tail call noundef ptr @_RNvXs_NtCsjRvGck33osM_6diesel9serializeINtB4_6OutputNtNtNtB6_5mysql7backend5MysqlENtNtCsgczF5crJ4sT_3std2io5Write9write_allB6_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val13.lcssa, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1) ; 2 uses
  %.not.i14 = icmp eq ptr %i.k, null
  br i1 %.not.i14, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit, label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, !prof !10

_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i, %.loopexit, %bb.a, %bb.c
  %.lcssa.sink = phi ptr [ %i.e, %bb.c ], [ %i.k, %.loopexit ], [ %i.d, %bb.a ], [ %i.i, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i ]
  %i.l = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsc61CYD6Y1ak_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.lcssa.sink)
  br label %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit

_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit: ; preds = %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread, %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split, %bb.c, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread.peel, %.loopexit
  %.sroa.0.0 = phi ptr [ null, %.loopexit ], [ null, %bb.c ], [ %i.l, %_RNvXs2_NtCsc61CYD6Y1ak_10serde_json3serINtB5_8CompoundQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtBW_5mysql7backend5MysqlENtB5_16CompactFormatterENtNtCseMV7gzmhUlG_10serde_core3ser12SerializeSeq3endBW_.exit.sink.split ], [ %i.f, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread.peel ], [ %i.j, %_RINvYNtNtCsc61CYD6Y1ak_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsjRvGck33osM_6diesel9serialize6OutputNtNtNtB1x_5mysql7backend5MysqlEEB1x_.exit.i.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i32 0, 16) i32 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection10get_status(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef i32 @PQstatus(ptr noundef nonnull %i.a) #24
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection11pq_notifies(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.l = tail call noundef i32 @PQconsumeInput(ptr noundef nonnull %i.k) #24
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call fastcc void @_RNvNtNtNtCsjRvGck33osM_6diesel2pg10connection3raw18last_error_message(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %i.k), !noalias !224
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !225
  %i.n = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) 24, i64 noundef range(i64 1, 9) 8) #24, !noalias !225 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtB4_6string6StringE3newCsjRvGck33osM_6diesel.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #25
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection9establish:bb.a

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, 0) %i.g, i64 noundef 1) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.e, align 1
  %i.n = icmp eq i64 %i.g, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, 0) %i.g, i64 noundef 1) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit35

bb.j:                                             ; preds = %bb.e
  %i.o = icmp eq ptr %i.h, null
  br i1 %i.o, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @PQfinish(ptr noundef nonnull %i.h) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit: ; preds = %bb.g, %bb.f, %bb.b
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str7CStringECsjRvGck33osM_6diesel.exit35: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult11column_name(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef ptr @PQfname(ptr noundef nonnull %i.a, i32 noundef %1) #24 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24
  %i.e = add i64 %i.d, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.e, %bb.b ], [ undef, %bb.a ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult11column_type(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef i32 @PQftype(ptr noundef nonnull %i.a, i32 noundef %1) #24
  ret i32 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult12column_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef i32 @PQnfields(ptr noundef nonnull %i.a) #24
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult13error_message(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = tail call noundef ptr @PQresultErrorMessage(ptr noundef nonnull %i.b) #24 ; 2 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #24
  %i.e = add i64 %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs3_NtNtCscI6d9CVNmLh_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.f = load i64, ptr %i.a, align 8, !range !16, !alias.scope !285, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !285, !nonnull !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !285
  %.sroa.3.0.i = select i1 %i.g, i64 0, i64 %i.k
  %.sroa.0.0.i = select i1 %i.g, ptr inttoptr (i64 1 to ptr), ptr %i.i
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef range(i32 0, 13) i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult13result_status(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef i32 @PQresultStatus(ptr noundef nonnull %i.a) #24
  ret i32 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult13rows_affected(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef ptr @PQcmdTuples(ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24
  %i.d = add i64 %i.c, 1
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult16get_result_field(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 67, 117) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = tail call noundef ptr @PQresultErrorField(ptr noundef nonnull %i.b, i32 noundef %1) #24 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #24
  %i.f = add i64 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs3_NtNtCscI6d9CVNmLh_4core3ffi5c_strNtB5_4CStr6to_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !16, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %.sroa.4.1 = select i1 %i.h, i64 undef, i64 %i.l
  %.sroa.0.1 = select i1 %i.h, ptr null, ptr %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %.sroa.4.1, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.b ], [ null, %bb.a ]
  %i.m = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult7is_null(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef i32 @PQgetisnull(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2) #24
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult9get_bytes(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = tail call noundef ptr @PQgetvalue(ptr noundef nonnull %i.b, i32 noundef %1, i32 noundef %2) #24 ; 2 uses
  %i.d = tail call noundef i32 @PQgetlength(ptr noundef nonnull %i.b, i32 noundef %1, i32 noundef %2) #24 ; 2 uses
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, -1
  br i1 %i.f, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit
  %.sroa.3.0 = phi i64 [ %i.i, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !288
  store i8 3, ptr %i.a, align 1, !noalias !288
  call void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 49, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !288
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsjRvGck33osM_6diesel.exit: ; preds = %bb.b
  %i.i = zext nneg i32 %i.d to i64
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult9row_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef i32 @PQntuples(ptr noundef nonnull %i.a) #24
  ret i32 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 9) %0, i64 noundef range(i64 1, 25) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24
  %i.a = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 1, 25) %1, i64 noundef range(i64 1, 9) %0) #24 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsjRvGck33osM_6diesel2pg10connection3raw18last_error_message(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = tail call noundef ptr @PQerrorMessage(ptr noundef %1) #24 ; 2 uses
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !range !16, !noundef !3
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !17, !noundef !3 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #22
          to label %bb.k unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = icmp ule i64 %i.h, %i.m
  tail call void @llvm.assume(i1 %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not5 = icmp eq i64 %i.h, 0
  br i1 %.not5, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.j, %bb.e
  store i64 %i.m, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8
  %i.r = load i64, ptr %i.b, align 8, !range !7, !alias.scope !291, !noundef !3
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsjRvGck33osM_6diesel.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i: ; preds = %bb.g
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsjRvGck33osM_6diesel.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECsjRvGck33osM_6diesel.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsjRvGck33osM_6diesel.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.k:                                             ; preds = %bb.d
  unreachable

bb.l:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsjRvGck33osM_6diesel9query_dsl10select_dslNtNtNtNtB6_2pg15metadata_lookup7pg_type5tableINtB2_9SelectDslTNtNtBP_7columns3oidNtB1P_8typarrayEE6selectB6_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs0_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableEE6simpleB9_()
  tail call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement9dsl_implsINtB7_15SelectStatementINtNtB9_11from_clause10FromClauseNtNtNtNtBb_2pg15metadata_lookup7pg_type5tableEEINtNtNtBb_9query_dsl10select_dsl9SelectDslTNtNtB29_7columns3oidNtB3B_8typarrayEE6selectBb_()
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtCsjRvGck33osM_6diesel2pg5types6floatsNtB2_18InvalidNumericSignNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias readonly align 2 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 55)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_implsNtB4_9PgNumericNtNtCs70TU8xnQNL4_10quickcheck9arbitrary9Arbitrary9arbitrary(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %i.d = tail call noundef i8 @_RNvXs1_NtCs70TU8xnQNL4_10quickcheck9arbitraryINtNtCscI6d9CVNmLh_4core6option6OptionbENtB5_9Arbitrary9arbitraryCsjRvGck33osM_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.e

bb.b:                                             ; preds = %bb.e
  %i.e = tail call noundef i16 @_RNvXsO_NtCs70TU8xnQNL4_10quickcheck9arbitrarytNtB5_9Arbitrary9arbitrary(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  %i.f = and i16 %i.e, 16383                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %.sroa.0.0.i.i = tail call noundef range(i16 0, 16384) i16 @llvm.umin.i16(i16 range(i16 0, 16384) %i.f, i16 range(i16 0, -32768) %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !296
  call void @_RNvXs4_NtCs70TU8xnQNL4_10quickcheck9arbitraryINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENtB5_9Arbitrary9arbitraryB1o_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %1), !noalias !295
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !296, !nonnull !3, !noundef !3 ; 3 uses
  %i.i = load i64, ptr %i.a, align 8, !range !5, !noalias !296, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !296, !noundef !3 ; 2 uses
  %i.l = icmp ult i64 %i.k, 4611686018427387904
  call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !296
  %i.n = zext nneg i16 %.sroa.0.0.i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.o, align 8, !noalias !296
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.h, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !296
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !296
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !noalias !296
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !296
  store i64 %i.n, ptr %i.b, align 8, !noalias !296
  call void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters4take4TakeINtNtB1b_10skip_while9SkipWhileINtNtB1b_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls5DigitENCNvB3b_42gen_vec_of_appropriate_length_valid_digits0ENCB4l_s_0EEsEB3j_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !296
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.promoted.i = load i64, ptr %i.p, align 8, !alias.scope !295, !noalias !297 ; 2 uses
  %.not8.i = icmp eq i64 %.promoted.i, 0
  br i1 %.not8.i, label %_RNvNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls42gen_vec_of_appropriate_length_valid_digits.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !295, !noalias !297, !nonnull !3, !noundef !3
  %i.s = load i64, ptr %i.c, align 8, !range !5
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.t = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.u, %bb.d ] ; 4 uses
  %i.u = add i64 %i.t, -1                         ; 4 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !noalias !295, !noundef !3
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = icmp samesign ult i64 %i.u, %i.s
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp ult i64 %i.t, 4611686018427387905
  call void @llvm.assume(i1 %i.z)
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_RNvNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls42gen_vec_of_appropriate_length_valid_digits.exit.thread, label %bb.c

_RNvNtNtNtNtCsjRvGck33osM_6diesel2pg5types6floats16quickcheck_impls42gen_vec_of_appropriate_length_valid_digits.exit.thread: ; preds = %bb.d, %bb.b
  store i64 0, ptr %i.p, align 8, !alias.scope !295, !noalias !297
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.e
  %i.aa = tail call noundef i16 @_RNvXsT_NtCs70TU8xnQNL4_10quickcheck9arbitrarysNtB5_9Arbitrary9arbitrary(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) ; 4 uses
  %i.ab = icmp slt i16 %i.aa, 0
end_hunk_1
