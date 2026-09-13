Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_server-2fd1ca6f98033a04.influxdb3_server.82104fd7176bce33-cgu.08?download=true
inline.NumInlined: 1716
inline.NumDeleted: 715
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs1_NtCs9h7Hq22ZyhR_15influxdb3_types5writeNtB6_14WriteLineErrorNtNtCs5CfTnloWo2c_10serde_core3ser9Serialize9serializeQINtNtCsdLkRf3gRIi6_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEECsbakdBCgU4AF_16influxdb3_server:bb.a
.preheader.split.2:                               ; preds = %.preheader.split.1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.n = load i8, ptr %i.m, align 1, !noundef !4
  %i.o = icmp sgt i8 %i.n, -65
  br i1 %i.o, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.3

.preheader.split.3:                               ; preds = %.preheader.split.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.q = load i8, ptr %i.p, align 1, !noundef !4
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.4

.preheader.split.4:                               ; preds = %.preheader.split.3
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i8, ptr %i.s, align 1, !noundef !4
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.5

.preheader.split.5:                               ; preds = %.preheader.split.4
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %i.w = load i8, ptr %i.v, align 1, !noundef !4
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.6

.preheader.split.6:                               ; preds = %.preheader.split.5
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.z = load i8, ptr %i.y, align 1, !noundef !4
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.7

.preheader.split.7:                               ; preds = %.preheader.split.6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !4
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.8

.preheader.split.8:                               ; preds = %.preheader.split.7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.af = load i8, ptr %i.ae, align 1, !noundef !4
  %i.ag = icmp sgt i8 %i.af, -65
  br i1 %i.ag, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.9

.preheader.split.9:                               ; preds = %.preheader.split.8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.10

.preheader.split.10:                              ; preds = %.preheader.split.9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.al = load i8, ptr %i.ak, align 1, !noundef !4
  %i.am = icmp sgt i8 %i.al, -65
  br i1 %i.am, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.11

.preheader.split.11:                              ; preds = %.preheader.split.10
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !noundef !4
  %i.ap = icmp sgt i8 %i.ao, -65
  br i1 %i.ap, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.12

.preheader.split.12:                              ; preds = %.preheader.split.11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !4
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.13

.preheader.split.13:                              ; preds = %.preheader.split.12
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.au = load i8, ptr %i.at, align 1, !noundef !4
  %i.av = icmp sgt i8 %i.au, -65
  br i1 %i.av, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.14

.preheader.split.14:                              ; preds = %.preheader.split.13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !4
  %i.ay = icmp sgt i8 %i.ax, -65
  br i1 %i.ay, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.15

.preheader.split.15:                              ; preds = %.preheader.split.14
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4
  %i.bb = icmp sgt i8 %i.ba, -65
  br i1 %i.bb, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.16

.preheader.split.16:                              ; preds = %.preheader.split.15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !4
  %i.be = icmp sgt i8 %i.bd, -65
  br i1 %i.be, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.17

.preheader.split.17:                              ; preds = %.preheader.split.16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !4
  %i.bh = icmp sgt i8 %i.bg, -65
  br i1 %i.bh, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.18

.preheader.split.18:                              ; preds = %.preheader.split.17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !4
  %i.bk = icmp sgt i8 %i.bj, -65
  br i1 %i.bk, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, label %.preheader.split.19

.preheader.split.19:                              ; preds = %.preheader.split.18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !4
  %i.bn = icmp sgt i8 %i.bm, -65
  %spec.select = zext i1 %i.bn to i64
  br label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %.preheader.split.19, %.preheader.split.preheader, %.preheader.split.1, %.preheader.split.2, %.preheader.split.3, %.preheader.split.4, %.preheader.split.5, %.preheader.split.6, %.preheader.split.7, %.preheader.split.8, %.preheader.split.9, %.preheader.split.10, %.preheader.split.11, %.preheader.split.12, %.preheader.split.13, %.preheader.split.14, %.preheader.split.15, %.preheader.split.16, %.preheader.split.17, %.preheader.split.18, %bb.a
  %.sroa.08.054 = phi i64 [ %spec.select, %.preheader.split.19 ], [ %i.e, %bb.a ], [ 20, %.preheader.split.preheader ], [ 19, %.preheader.split.1 ], [ 18, %.preheader.split.2 ], [ 17, %.preheader.split.3 ], [ 16, %.preheader.split.4 ], [ 15, %.preheader.split.5 ], [ 14, %.preheader.split.6 ], [ 13, %.preheader.split.7 ], [ 12, %.preheader.split.8 ], [ 11, %.preheader.split.9 ], [ 10, %.preheader.split.10 ], [ 9, %.preheader.split.11 ], [ 8, %.preheader.split.12 ], [ 7, %.preheader.split.13 ], [ 6, %.preheader.split.14 ], [ 5, %.preheader.split.15 ], [ 4, %.preheader.split.16 ], [ 3, %.preheader.split.17 ], [ 2, %.preheader.split.18 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo) ; 2 uses
  %.not38 = icmp eq ptr %i.bp, null
  br i1 %.not38, label %bb.b, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.b:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit
  %i.bq = load i8, ptr %i.a, align 8, !range !5, !alias.scope !2742, !noalias !2743, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryejECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bs) ; 2 uses
  %.not39 = icmp eq ptr %i.bt, null
  br i1 %.not39, label %bb.c, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.c:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit
  %i.bu = load i8, ptr %i.a, align 8, !range !5, !alias.scope !2744, !noalias !2745, !noundef !4
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.sink.split, label %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldeECsbakdBCgU4AF_16influxdb3_server.exit

_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldeECsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %bb.c
  %i.bw = call noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeeECsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.08.054) ; 2 uses
  %.not40 = icmp eq ptr %i.bw, null
  br i1 %.not40, label %bb.d, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

bb.d:                                             ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldeECsbakdBCgU4AF_16influxdb3_server.exit
  %.sroa.048.0.copyload = load i8, ptr %i.a, align 8
  %i.bx = trunc nuw i8 %.sroa.048.0.copyload to i1
  %.sroa.449.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %i.by = icmp eq i8 %.sroa.449.0.copyload, 0
  %or.cond = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond, label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.551.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.val.i.i44 = load ptr, ptr %.sroa.551.0.copyload, align 8, !noalias !2746, !nonnull !4, !align !16, !noundef !4
  call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i44, ptr noalias noundef nonnull readonly captures(address, read_provenance) @122, i64 noundef 1), !noalias !2746
  br label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit

_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit: ; preds = %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldeECsbakdBCgU4AF_16influxdb3_server.exit, %.sink.split, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ %i.bw, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldeECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.bt, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldjECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.bp, %_RINvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_6string6StringECsbakdBCgU4AF_16influxdb3_server.exit ], [ %i.bz, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.bz = call noundef nonnull align 8 ptr @_RNvNtCsdLkRf3gRIi6_10serde_json3ser17invalid_raw_value(), !noalias !4
  br label %_RNvXs7_NtCsdLkRf3gRIi6_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser15SerializeStruct3endCsbakdBCgU4AF_16influxdb3_server.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs9h7Hq22ZyhR_15influxdb3_types5write14WriteLineErrorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXse_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB2D_5ErrorNtB2D_12IntoResponse13into_response0EB2F_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not = icmp eq ptr %.promoted, %i.e
  br i1 %.not, label %_RNCNvXse_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_5ErrorNtB7_12IntoResponse13into_response0B9_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %.backedge ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 32
  %.val = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 13 uses
  %i.l = getelementptr i8, ptr %i.i, i64 40
  %.val3 = load i64, ptr %i.l, align 8, !noundef !4 ; 15 uses
  %i.m = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 39)
  br i1 %i.m, label %_RNCNvXse_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_5ErrorNtB7_12IntoResponse13into_response0B9_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @141, i64 noundef 43)
  br i1 %i.n, label %_RNCNvXse_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_5ErrorNtB7_12IntoResponse13into_response0B9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2763)
  %i.o = icmp ugt i64 %.val3, 29
  br i1 %i.o, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i, label %1

1:                                                ; preds = %bb.d
  %2 = icmp eq i64 %.val3, 29
  br i1 %2, label %.split36, label %.backedge

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i: ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  %i.p = icmp ult i64 %.val3, 44
  br i1 %i.p, label %.lr.ph.split.us.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2766
  store ptr %.val, ptr %i.a, align 8, !noalias !2766
  store i64 %.val3, ptr %i.f, align 8, !noalias !2766
  store ptr getelementptr inbounds nuw (i8, ptr @142, i64 1), ptr %i.g, align 8, !noalias !2766
  store i64 28, ptr %i.h, align 8, !noalias !2766
  %.not.i5.i = icmp ugt i64 %.val3, 92
  br i1 %.not.i5.i, label %.lr.ph.i8.i, label %.preheader.i6.i

.lr.ph.split.us.i.i.i:                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsbakdBCgU4AF_16influxdb3_server.exit.i.i.i
  %i.q = load i128, ptr %.val, align 1
  %i.r = xor i128 %i.q, 134794381773450430570713059004532486007
  %i.s = getelementptr i8, ptr %.val, i64 13
  %i.t = load i128, ptr %i.s, align 1
  %i.u = xor i128 %i.t, 154737857816263848354071394202232907892
  %i.v = or i128 %i.r, %i.u
  %i.w = icmp ne i128 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_RNCNvXse_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_5ErrorNtB7_12IntoResponse13into_response0B9_.exit.thread, label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.us.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbakdBCgU4AF_16influxdb3_server.exit.backedge.us.i.i.i
  %.in.i.i43 = phi i64 [ %i.aj, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbakdBCgU4AF_16influxdb3_server.exit.backedge.us.i.i.i ], [ %.val3, %.lr.ph.split.us.i.i.i ] ; 2 uses
  %.pn.i.i42 = phi ptr [ %i.z, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbakdBCgU4AF_16influxdb3_server.exit.backedge.us.i.i.i ], [ %.val, %.lr.ph.split.us.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.i.i42, i64 1 ; 3 uses
  %i.aa = load i128, ptr %i.z, align 1
  %i.ab = xor i128 %i.aa, 134794381773450430570713059004532486007
  %i.ac = getelementptr i8, ptr %i.z, i64 13
  %i.ad = load i128, ptr %i.ac, align 1
  %i.ae = xor i128 %i.ad, 154737857816263848354071394202232907892
  %i.af = or i128 %i.ab, %i.ae
  %i.ag = icmp ne i128 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_RNCNvXse_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_5ErrorNtB7_12IntoResponse13into_response0B9_.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbakdBCgU4AF_16influxdb3_server.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsbakdBCgU4AF_16influxdb3_server.exit.backedge.us.i.i.i: ; preds = %.split.us.i.i.i
  %i.aj = add nsw i64 %.in.i.i43, -1
  %.not28.i.i.i = icmp ult i64 %.in.i.i43, 31
  br i1 %.not28.i.i.i, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit.thread7, label %.split.us.i.i.i

.preheader.i6.i:                                  ; preds = %bb.i, %bb.e
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.e ], [ %.sroa.014.2.3.i.i, %bb.i ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.e ], [ %i.ce, %bb.i ] ; 2 uses
  %i.ak = add i64 %.sroa.06.0.lcssa.i.i, 44
  %i.al = icmp uge i64 %i.ak, %.val3
  %i.am = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3105.i.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond3105.i.i, label %._crit_edge.i7.i, label %.lr.ph107.i.i

.lr.ph.i8.i:                                      ; preds = %bb.e, %bb.i
  %.sroa.06.0103.i.i = phi i64 [ %i.ce, %bb.i ], [ 0, %bb.e ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.0103.i.i ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.an, align 1, !alias.scope !2767, !noalias !2768
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %.sroa.02.0.copyload.i.i.i = load <16 x i8>, ptr %i.ao, align 1, !alias.scope !2767, !noalias !2768
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, splat (i8 119)
  %i.aq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i, splat (i8 116)
  %i.ar = and <16 x i1> %i.ap, %i.aq
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.at, align 1, !alias.scope !2767, !noalias !2768
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  %.sroa.02.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.au, align 1, !alias.scope !2767, !noalias !2768
  %i.av = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, splat (i8 119)
  %i.aw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i, splat (i8 116)
  %i.ax = and <16 x i1> %i.av, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.az, align 1, !alias.scope !2767, !noalias !2768
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 60
  %.sroa.02.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.ba, align 1, !alias.scope !2767, !noalias !2768
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, splat (i8 119)
  %i.bc = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i, splat (i8 116)
  %i.bd = and <16 x i1> %i.bb, %i.bc
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.bf, align 1, !alias.scope !2767, !noalias !2768
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 76
  %.sroa.02.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.bg, align 1, !alias.scope !2767, !noalias !2768
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, splat (i8 119)
  %i.bi = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i, splat (i8 116)
  %i.bj = and <16 x i1> %i.bh, %i.bi
  %i.bk = bitcast <16 x i1> %i.bj to i16          ; 2 uses
  %i.bl = icmp eq i16 %i.as, 0
  br i1 %i.bl, label %.preheader96.1.i.i, label %bb.j

.preheader96.1.i.i:                               ; preds = %bb.j, %.lr.ph.i8.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i8.i ], [ %i.cj, %bb.j ] ; 3 uses
  %i.bm = icmp eq i16 %i.ay, 0
  br i1 %i.bm, label %.preheader96.2.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader96.1.i.i
  %i.bn = or disjoint i64 %.sroa.06.0103.i.i, 16
  %i.bo = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.bp = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bn, i16 noundef %i.ay, i1 noundef zeroext %i.bo)
  %i.bq = zext i1 %i.bp to i8
  %i.br = or i8 %.sroa.014.2.i.i, %i.bq
  br label %.preheader96.2.i.i

.preheader96.2.i.i:                               ; preds = %bb.f, %.preheader96.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader96.1.i.i ], [ %i.br, %bb.f ] ; 3 uses
  %i.bs = icmp eq i16 %i.be, 0
  br i1 %i.bs, label %.preheader96.3.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader96.2.i.i
  %i.bt = or disjoint i64 %.sroa.06.0103.i.i, 32
  %i.bu = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.bv = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bt, i16 noundef %i.be, i1 noundef zeroext %i.bu)
  %i.bw = zext i1 %i.bv to i8
  %i.bx = or i8 %.sroa.014.2.1.i.i, %i.bw
  br label %.preheader96.3.i.i

.preheader96.3.i.i:                               ; preds = %bb.g, %.preheader96.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader96.2.i.i ], [ %i.bx, %bb.g ] ; 3 uses
  %i.by = icmp eq i16 %i.bk, 0
  br i1 %i.by, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader96.3.i.i
  %i.bz = or disjoint i64 %.sroa.06.0103.i.i, 48
  %i.ca = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.cb = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.bz, i16 noundef %i.bk, i1 noundef zeroext %i.ca)
  %i.cc = zext i1 %i.cb to i8
  %i.cd = or i8 %.sroa.014.2.2.i.i, %i.cc
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.preheader96.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader96.3.i.i ], [ %i.cd, %bb.h ] ; 2 uses
  %i.ce = add i64 %.sroa.06.0103.i.i, 64          ; 2 uses
  %i.cf = add i64 %.sroa.06.0103.i.i, 156
  %i.cg = icmp uge i64 %i.cf, %.val3
  %i.ch = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond.i.i, label %.preheader.i6.i, label %.lr.ph.i8.i

bb.j:                                             ; preds = %.lr.ph.i8.i
  %i.ci = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i.i, i16 noundef %i.as, i1 noundef zeroext false)
  %i.cj = zext i1 %i.ci to i8
  br label %.preheader96.1.i.i

._crit_edge.i7.i:                                 ; preds = %bb.k, %.preheader.i6.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i6.i ], [ %.sroa.014.4.i.i, %bb.k ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.am, %.preheader.i6.i ], [ %i.dc, %bb.k ]
  %i.ck = add i64 %.val3, -44                     ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ck ; 2 uses
  %.sroa.0.0.copyload.i58.i.i = load <16 x i8>, ptr %i.cl, align 1, !alias.scope !2767, !noalias !2769
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %.sroa.02.0.copyload.i59.i.i = load <16 x i8>, ptr %i.cm, align 1, !alias.scope !2767, !noalias !2769
  %i.cn = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i, splat (i8 119)
  %i.co = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i, splat (i8 116)
  %i.cp = and <16 x i1> %i.cn, %i.co
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %i.cr = icmp eq i16 %i.cq, 0
  br i1 %i.cr, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.m

.lr.ph107.i.i:                                    ; preds = %.preheader.i6.i, %bb.k
  %.sroa.06.1106.i.i = phi i64 [ %i.cz, %bb.k ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i6.i ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.06.1106.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !2767, !noalias !2770
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 28
  %.sroa.02.0.copyload.i61.i.i = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !2767, !noalias !2770
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i, splat (i8 119)
  %i.cv = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i, splat (i8 116)
  %i.cw = and <16 x i1> %i.cu, %i.cv
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.lr.ph107.i.i
  %.sroa.014.4.i.i = phi i8 [ 0, %.lr.ph107.i.i ], [ %i.de, %bb.l ] ; 2 uses
  %i.cz = add i64 %.sroa.06.1106.i.i, 16
  %i.da = add i64 %.sroa.06.1106.i.i, 60
  %i.db = icmp uge i64 %i.da, %.val3
  %i.dc = trunc nuw i8 %.sroa.014.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.db, %i.dc
  br i1 %or.cond3.i.i, label %._crit_edge.i7.i, label %.lr.ph107.i.i

bb.l:                                             ; preds = %.lr.ph107.i.i
  %i.dd = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i.i, i16 noundef %i.cx, i1 noundef zeroext false)
  %i.de = zext i1 %i.dd to i8
  br label %bb.k

bb.m:                                             ; preds = %._crit_edge.i7.i
  %i.df = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsbakdBCgU4AF_16influxdb3_server(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ck, i16 noundef %i.cq, i1 noundef zeroext %.lcssa.i.i)
  %i.dg = zext i1 %i.df to i8
  %i.dh = or i8 %.sroa.014.3.lcssa.i.i, %i.dg
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

.split36:                                         ; preds = %1
  %i.di = load i128, ptr %.val, align 1
  %i.dj = xor i128 134794381773450430570713059004532486007, %i.di
  %i.dk = getelementptr i8, ptr %.val, i64 13
  %i.dl = load i128, ptr %i.dk, align 1
  %i.dm = xor i128 154737857816263848354071394202232907892, %i.dl
  %i.dn = or i128 %i.dj, %i.dm
  %i.do = icmp ne i128 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_RNCNvXse_NtCsbakdBCgU4AF_16influxdb3_server4httpNtB7_5ErrorNtB7_12IntoResponse13into_response0B9_.exit.thread, label %.backedge

end_hunk_0
