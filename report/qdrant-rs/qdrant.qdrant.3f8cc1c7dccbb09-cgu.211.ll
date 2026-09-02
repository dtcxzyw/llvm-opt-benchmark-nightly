Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.211?download=true
inline.NumInlined: 314
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtCs8O45qwFIwQX_10serde_json6numberNtB6_6NumberNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorEECsl8OoimOLbh_6qdrant:bb.a
  %i.u = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.t)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.a
  %i.v = load double, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %cond.i = fcmp ueq double %i.w, +inf
  br i1 %cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = tail call noundef ptr @_RNvYNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 4) ; 2 uses
  %.not.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i3, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant.exit, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  %i.y = call { ptr, i64 } @_RINvMs2_Cs1XVLCUuSBg0_4zmijNtB6_6Buffer13format_finitedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %i.v), !noalias !164 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = call noundef ptr @_RNvYNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.aa) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant.exit, label %bb.m, !prof !7

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.x)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ab)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerNtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_u64Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64NtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorECsl8OoimOLbh_6qdrant.exit.i, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %_RINvYNtNtCs8O45qwFIwQX_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64NtNtNtCs4hE0XgIM7pO_18tracing_subscriber3fmt6writer12WriteAdaptorECsl8OoimOLbh_6qdrant.exit.i ], [ null, %bb.b ], [ %i.k, %bb.c ], [ %i.u, %bb.h ], [ null, %bb.j ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ], [ null, %bb.k ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXs4_NtCs8O45qwFIwQX_10serde_json6numberNtB6_6NumberNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 8 uses
  switch i64 %i.d, label %default.unreachable3 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.g
  ]

default.unreachable3:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = call noundef i64 @_RNvXsu_Cs6kQH99PsUHL_4itoayNtB5_8Unsigned3fmt(i64 noundef %i.f, ptr noalias nofree noundef nonnull dereferenceable(20) %i.c) ; 2 uses
  %i.h = sub nuw i64 20, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f64Csl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = icmp slt i64 %i.j, 0
  %.sroa.07.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.j, i1 false)
  %i.l = call noundef i64 @_RNvXsu_Cs6kQH99PsUHL_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b) ; 2 uses
  br i1 %i.k, label %bb.d, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add i64 %i.l, -1                         ; 4 uses
  %i.n = icmp ult i64 %i.m, 20
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store i8 45, ptr %i.o, align 1, !alias.scope !167
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0.i.i.i = phi i64 [ %i.m, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = sub nuw i64 20, %.sroa.0.0.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef range(i64 0, -9223372036854775808) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f64Csl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.a
  %i.r = load double, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %cond.i = fcmp ueq double %i.s, +inf
  br i1 %cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f64Csl8OoimOLbh_6qdrant.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = call { ptr, i64 } @_RINvMs2_Cs1XVLCUuSBg0_4zmijNtB6_6Buffer13format_finitedECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %i.r) ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f64Csl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f64Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.i, %bb.h, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit, %bb.b
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtCs8O45qwFIwQX_10serde_json6numberNtB6_6NumberNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8jn5zD2RXga_10serde_cbor3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [5 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 2                 ; 4 uses
  %i.d = alloca [3 x i8], align 1                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [9 x i8], align 1                 ; 5 uses
  %i.i = load i64, ptr %1, align 8, !range !11, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i64 %i.i, label %default.unreachable5 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ]

default.unreachable5:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  tail call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u64Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 0, i64 noundef %i.k) #26
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.j, align 8, !noundef !5 ; 3 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u64Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 0, i64 noundef %i.l) #26
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.c
  %i.n = xor i64 %i.l, -1
  tail call fastcc void @_RNvMNtCs8jn5zD2RXga_10serde_cbor3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9write_u64Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, i8 noundef 1, i64 noundef %i.n) #26
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit

bb.f:                                             ; preds = %bb.a
  %i.o = load double, ptr %i.j, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.p = tail call double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp ueq double %i.p, +inf
  %.pre.i = fptrunc double %i.o to float          ; 4 uses
  %i.r = fpext float %.pre.i to double
  %i.s = fcmp oeq double %i.o, %i.r
  %or.cond.i = or i1 %i.q, %i.s
  br i1 %or.cond.i, label %._crit_edge.i, label %bb.at

._crit_edge.i:                                    ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !176
  %i.t = tail call float @llvm.fabs.f32(float %.pre.i)
  %i.u = fcmp oeq float %i.t, +inf
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.v = fcmp uno double %i.o, 0.000000e+00
  br i1 %i.v, label %bb.ab, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.w = bitcast double %i.o to i64
  %.not.i.i = icmp sgt i64 %i.w, -1
  br i1 %.not.i.i, label %bb.aq, label %bb.ap

bb.i:                                             ; preds = %bb.g
  %i.x = bitcast float %.pre.i to i32             ; 8 uses
  %i.y = and i32 %i.x, -2147483648                ; 4 uses
  %i.z = and i32 %i.x, 2139095040                 ; 11 uses
  %i.aa = and i32 %i.x, 8388607                   ; 8 uses
  %i.ab = icmp eq i32 %i.z, 2139095040            ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = lshr exact i32 %i.y, 16
  %i.ae = lshr i32 %i.aa, 13
  %i.af = or disjoint i32 %i.ae, %i.ad
  %3 = trunc nuw i32 %i.af to i16
  %4 = select i1 %i.ac, i16 31744, i16 32256
  %i.ag = or i16 %4, %3
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ah = lshr exact i32 %i.y, 16                 ; 4 uses
  %i.ai = lshr exact i32 %i.z, 23                 ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.z, 1191182336
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp samesign ult i32 %i.z, 947912704
  br i1 %i.ak, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.al = trunc nuw i32 %i.ah to i16
  %i.am = or disjoint i16 %i.al, 31744
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.an = lshr exact i32 %i.z, 13
  %i.ao = add nuw nsw i32 %i.an, 16384
  %i.ap = lshr i32 %i.aa, 13
  %i.aq = and i32 %i.x, 4096
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = and i32 %i.x, 12287
  %i.at = icmp ne i32 %i.as, 0
  %or.cond.not.i.i.i = and i1 %i.ar, %i.at
  %i.au = or disjoint i32 %i.ao, %i.ap
  %i.av = or i32 %i.au, %i.ah
  %i.aw = trunc i32 %i.av to i16
  %i.ax = zext i1 %or.cond.not.i.i.i to i16
  %spec.select7.i.i.i = add i16 %i.aw, %i.ax
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i

bb.o:                                             ; preds = %bb.l
  %i.ay = icmp samesign ult i32 %i.z, 855638016
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = sub nsw i32 126, %i.ai
  %i.ba = or disjoint i32 %i.aa, 8388608          ; 3 uses
  %i.bb = lshr i32 %i.ba, %i.az                   ; 2 uses
  %i.bc = sub nsw i32 29, %i.ai
  %i.bd = and i32 %i.bc, 31                       ; 2 uses
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = and i32 %i.be, %i.ba
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bh = trunc nuw i32 %i.ah to i16
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.bi = shl i32 3, %i.bd
  %i.bj = add nuw i32 %i.bi, 16777215
  %i.bk = and i32 %i.bj, %i.ba
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %spec.select.i.i.i = add nuw nsw i32 %i.bb, %i.bm
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sroa.03.0.i.i.i = phi i32 [ %i.bb, %bb.p ], [ %spec.select.i.i.i, %bb.r ]
  %i.bn = or i32 %.sroa.03.0.i.i.i, %i.ah
  %i.bo = trunc nuw i32 %i.bn to i16
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i

_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i: ; preds = %bb.s, %bb.q, %bb.n, %bb.m, %bb.j
  %.sroa.0.0.i.i.i = phi i16 [ %i.ag, %bb.j ], [ %i.am, %bb.m ], [ %i.bh, %bb.q ], [ %i.bo, %bb.s ], [ %spec.select7.i.i.i, %bb.n ] ; 5 uses
  %i.bp = and i16 %.sroa.0.0.i.i.i, 32767
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i
  %i.br = zext i16 %.sroa.0.0.i.i.i to i32
  %i.bs = shl nuw i32 %i.br, 16
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i

bb.u:                                             ; preds = %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit.i.i
  %i.bt = and i16 %.sroa.0.0.i.i.i, -32768
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = and i16 %.sroa.0.0.i.i.i, 31744         ; 3 uses
  %i.bw = and i16 %.sroa.0.0.i.i.i, 1023          ; 3 uses
  %i.bx = zext nneg i16 %i.bw to i32              ; 3 uses
  %i.by = icmp eq i16 %i.bv, 31744
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = icmp eq i16 %i.bw, 0
  %i.ca = shl nuw i32 %i.bu, 16                   ; 2 uses
  br i1 %i.bz, label %bb.x, label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.cb = shl nuw i32 %i.bu, 16                   ; 2 uses
  %i.cc = icmp eq i16 %i.bv, 0
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.cd = or disjoint i32 %i.ca, 2139095040
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i

bb.y:                                             ; preds = %bb.v
  %i.ce = shl nuw nsw i32 %i.bx, 13
  %i.cf = or disjoint i32 %i.ca, %i.ce
  %i.cg = or i32 %i.cf, 2143289344
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i

bb.z:                                             ; preds = %bb.w
  %i.ch = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bw, i1 false)
  %i.ci = zext nneg i16 %i.ch to i32              ; 2 uses
  %i.cj = add nuw nsw i32 %i.ci, 8
  %i.ck = shl i32 %i.bx, %i.cj
  %i.cl = and i32 %i.ck, 8388607
  %reass.sub.i.i.i = or disjoint i32 %i.cb, 989855744
  %i.cm = shl nuw nsw i32 %i.ci, 23
  %i.cn = sub nuw nsw i32 %reass.sub.i.i.i, %i.cm
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i

bb.aa:                                            ; preds = %bb.w
  %i.cp = lshr exact i16 %i.bv, 10
  %narrow.i.i.i = add nuw nsw i16 %i.cp, 112
  %i.cq = zext nneg i16 %narrow.i.i.i to i32
  %i.cr = shl nuw nsw i32 %i.cq, 23
  %i.cs = shl nuw nsw i32 %i.bx, 13
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = or disjoint i32 %i.ct, %i.cb
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i

_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.t
  %.sroa.0.0.i2.i.i = phi i32 [ %i.bs, %bb.t ], [ %i.cd, %bb.x ], [ %i.cg, %bb.y ], [ %i.co, %bb.z ], [ %i.cu, %bb.aa ]
  %i.cv = bitcast i32 %.sroa.0.0.i2.i.i to float
  %i.cw = fcmp oeq float %.pre.i, %i.cv
  br i1 %i.cw, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.g
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 3), !noalias !177
  br label %bb.ao

bb.ac:                                            ; preds = %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !176
  store i8 -6, ptr %i.b, align 1, !noalias !176
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i32 0, ptr %i.cx, align 1, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !176
  %i.cy = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.cy, ptr %i.a, align 4, !noalias !176
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %i.cx, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !176
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 5), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !176
  br label %bb.ao

bb.ad:                                            ; preds = %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f16_to_f32_fallback.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !176
  store i8 -7, ptr %i.d, align 1, !noalias !176
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  store i8 0, ptr %i.cz, align 1, !noalias !176
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 0, ptr %i.da, align 1, !noalias !176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !176
  br i1 %i.ab, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.db = icmp eq i32 %i.aa, 0
  %i.dc = lshr exact i32 %i.y, 16
  %i.dd = lshr i32 %i.aa, 13
  %i.de = or disjoint i32 %i.dd, %i.dc
  %5 = trunc nuw i32 %i.de to i16
  %6 = select i1 %i.db, i16 31744, i16 32256
  %i.df = or i16 %6, %5
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit9.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dg = lshr exact i32 %i.y, 16                 ; 4 uses
  %i.dh = lshr exact i32 %i.z, 23                 ; 2 uses
  %i.di = icmp samesign ugt i32 %i.z, 1191182336
  br i1 %i.di, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = icmp samesign ult i32 %i.z, 947912704
  br i1 %i.dj, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dk = trunc nuw i32 %i.dg to i16
  %i.dl = or disjoint i16 %i.dk, 31744
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit9.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dm = lshr exact i32 %i.z, 13
  %i.dn = add nuw nsw i32 %i.dm, 16384
  %i.do = lshr i32 %i.aa, 13
  %i.dp = and i32 %i.x, 4096
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = and i32 %i.x, 12287
  %i.ds = icmp ne i32 %i.dr, 0
  %or.cond.not.i3.i.i = and i1 %i.dq, %i.ds
  %i.dt = or disjoint i32 %i.dn, %i.do
  %i.du = or i32 %i.dt, %i.dg
  %i.dv = trunc i32 %i.du to i16
  %i.dw = zext i1 %or.cond.not.i3.i.i to i16
  %spec.select7.i4.i.i = add i16 %i.dv, %i.dw
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit9.i.i

bb.aj:                                            ; preds = %bb.ag
  %i.dx = icmp samesign ult i32 %i.z, 855638016
  br i1 %i.dx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = sub nsw i32 126, %i.dh
  %i.dz = or disjoint i32 %i.aa, 8388608          ; 3 uses
  %i.ea = lshr i32 %i.dz, %i.dy                   ; 2 uses
  %i.eb = sub nsw i32 29, %i.dh
  %i.ec = and i32 %i.eb, 31                       ; 2 uses
  %i.ed = shl nuw i32 1, %i.ec
  %i.ee = and i32 %i.ed, %i.dz
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.eg = trunc nuw i32 %i.dg to i16
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit9.i.i

bb.am:                                            ; preds = %bb.ak
  %i.eh = shl i32 3, %i.ec
  %i.ei = add nuw i32 %i.eh, 16777215
  %i.ej = and i32 %i.ei, %i.dz
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %spec.select.i6.i.i = add nuw nsw i32 %i.ea, %i.el
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.sroa.03.0.i7.i.i = phi i32 [ %i.ea, %bb.ak ], [ %spec.select.i6.i.i, %bb.am ]
  %i.em = or i32 %.sroa.03.0.i7.i.i, %i.dg
  %i.en = trunc nuw i32 %i.em to i16
  br label %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit9.i.i

_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit9.i.i: ; preds = %bb.an, %bb.al, %bb.ai, %bb.ah, %bb.ae
  %.sroa.0.0.i5.i.i = phi i16 [ %i.df, %bb.ae ], [ %i.dl, %bb.ah ], [ %i.eg, %bb.al ], [ %i.en, %bb.an ], [ %spec.select7.i4.i.i, %bb.ai ]
  %i.eo = tail call i16 @llvm.bswap.i16(i16 %.sroa.0.0.i5.i.i)
  store i16 %i.eo, ptr %i.c, align 2, !noalias !176
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %i.cz, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !176
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 3), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !176
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %bb.ap, %_RNvNtNtCsziJ2WEe1SN_4half8binary167convert19f32_to_f16_fallback.exit9.i.i, %bb.ac, %bb.ab
  %i.ep = load i64, ptr %i.e, align 8, !range !8, !noalias !176, !noundef !5
  %.not1.i.i = icmp eq i64 %i.ep, -1
  br i1 %.not1.i.i, label %bb.as, label %bb.ar

bb.ap:                                            ; preds = %bb.h
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 3), !noalias !177
  br label %bb.ao

bb.aq:                                            ; preds = %bb.h
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 3), !noalias !177
  br label %bb.ao

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !178
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f32Csl8OoimOLbh_6qdrant.exit.i

bb.as:                                            ; preds = %bb.ao
  store i64 -1, ptr %0, align 8, !alias.scope !177, !noalias !178
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f32Csl8OoimOLbh_6qdrant.exit.i

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f32Csl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !176
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit

bb.at:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !179
  store i8 -5, ptr %i.h, align 1, !noalias !179
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store i64 0, ptr %i.eq, align 1, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !179
  %i.er = bitcast double %i.o to i64
  %i.es = tail call i64 @llvm.bswap.i64(i64 %i.er)
  store i64 %i.es, ptr %i.g, align 8, !noalias !179
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull %i.eq, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !179
  call void @_RNvXNtCs8jn5zD2RXga_10serde_cbor5writeQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_5Write9write_allCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 9), !noalias !174
  %i.et = load i64, ptr %i.f, align 8, !range !8, !noalias !179, !noundef !5
  %.not.i = icmp eq i64 %i.et, -1
  br i1 %.not.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !180
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i64 -1, ptr %0, align 8, !alias.scope !174, !noalias !180
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !179
  br label %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit

_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.aw, %_RNvXs_NtCs8jn5zD2RXga_10serde_cbor3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_f32Csl8OoimOLbh_6qdrant.exit.i, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload4.i = load ptr, ptr %.sroa.5.0..sroa_idx3.i, align 8, !alias.scope !204, !noalias !202 ; 6 uses
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload6.i = load i64, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !204, !noalias !202 ; 3 uses
  %i.b = icmp eq i64 %.sroa.6.0.copyload6.i, 0
  br i1 %i.b, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit.thread.i, label %bb.b

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant.exit.thread.i: ; preds = %bb.a
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECsl8OoimOLbh_6qdrant.exit unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload2.i = load ptr, ptr %1, align 8, !alias.scope !204, !noalias !202, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload4.i) ]
  %i.c = ptrtoint ptr %.sroa.5.0.copyload4.i to i64
  %i.d = ptrtoint ptr %.sroa.0.0.copyload2.i to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = and i64 %i.e, 3
  %.not.i.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.f, %i.h
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.6.0.copyload6.i, i64 %.sroa.0.0.i.i.i)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %..i.i.i)
          to label %.noexc3 unwind label %.loopexit.split-lp

.noexc3:                                          ; preds = %bb.b, %_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i
  %i.i = phi ptr [ %i.cc, %_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.0.0.copyload2.i, %bb.b ] ; 6 uses
  %.sroa.01.0.i.in.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i, %_RNCINvNvXs7_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Csl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.6.0.copyload6.i, %bb.b ]
  %.sroa.01.0.i.i.i.i = add i64 %.sroa.01.0.i.in.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, %.sroa.5.0.copyload4.i
  br i1 %.not.i.i.i.i.i, label %_RINvXsd_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %.noexc3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.i, align 1, !noalias !205, !noundef !5 ; 5 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %.thread.i.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit12.i.i.i.i.i.i: ; preds = %bb.c
  %i.m = and i8 %i.k, 31
  %i.n = zext nneg i8 %i.m to i32                 ; 3 uses
  %i.o = icmp ne ptr %i.j, %.sroa.5.0.copyload4.i
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.j, align 1, !noalias !205, !noundef !5
  %i.r = shl nuw nsw i32 %i.n, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %i.k, -33
  br i1 %i.v, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit14.i.i.i.i.i.i, label %bb.d
end_hunk_0
