Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.185?download=true
inline.NumInlined: 354
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXNvNtCslmvYCXbQjWR_6common10low_memory1__NtB5_13LowMemoryModeNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeQINtNtCs8O45qwFIwQX_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsl8OoimOLbh_6qdrant:bb.a
  %.not.i.i4 = icmp eq ptr %i.e, null
  br i1 %.not.i.i4, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit, label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit.sink.split, !prof !20

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit.sink.split: ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.b ], [ %i.e, %bb.d ]
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8O45qwFIwQX_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink)
  br label %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit

_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit.sink.split, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.d ], [ %i.f, %_RNvXs1_NtCs8O45qwFIwQX_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variantCsl8OoimOLbh_6qdrant.exit.sink.split ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCslmvYCXbQjWR_6common10low_memorys_1__NtB5_13LowMemoryModeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtNtCshE3sgg5Qsfb_6config5value5ValueECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXNtCshE3sgg5Qsfb_6config2deNtNtB5_5value5ValueNtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtCslmvYCXbQjWR_6common10low_memorys_1__NtB1W_13LowMemoryModeNtBO_11Deserialize11deserialize9___VisitorECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 13, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @30, i64 noundef 3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXNvNtCslmvYCXbQjWR_6common10low_memorys_1__NtB8_13LowMemoryModeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB18_7Visitor9visit_strNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  switch i64 %2, label %bb.g [
    i64 8, label %bb.b
    i64 11, label %bb.d
  ], !prof !647

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 1
  %i.b = icmp ne i64 %i.a, 7234307546238118244
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %0, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.e, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 1
  %i.g = xor i64 %i.f, 7235441155895160686
  %i.h = getelementptr i8, ptr %1, i64 3
  %i.i = load i64, ptr %i.h, align 1
  %i.j = xor i64 %i.i, 8389754637778118002
  %i.k = or i64 %i.g, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.o, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = load i64, ptr %1, align 1
  %i.q = xor i64 %i.p, 7815276352300347246
  %i.r = getelementptr i8, ptr %1, i64 3
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7310575213583822704
  %i.u = or i64 %i.q, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  tail call void @_RNvYNtNtCshE3sgg5Qsfb_6config5error11ConfigErrorNtNtCs4NSHK7GLW4I_10serde_core2de5Error15unknown_variantCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @30, i64 noundef 3)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i8 2, ptr %0, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.y, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NvXNvNtCslmvYCXbQjWR_6common10low_memorys_1__NtBb_13LowMemoryModeNtNtCs4NSHK7GLW4I_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1b_7Visitor10visit_enumNtNtCshE3sgg5Qsfb_6config2de10EnumAccessECsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 16 captures(address) dead_on_return dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %i.c = alloca [96 x i8], align 16               ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca [96 x i8], align 16               ; 6 uses
  %i.f = alloca [128 x i8], align 16              ; 5 uses
  %i.g = alloca [144 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvXs5_NtCshE3sgg5Qsfb_6config2deNtB6_10EnumAccessNtNtCs4NSHK7GLW4I_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCslmvYCXbQjWR_6common10low_memorys_1__NtB2z_13LowMemoryModeNtBP_11Deserialize11deserialize7___FieldEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(128) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load i64, ptr %i.h, align 16, !range !648, !noundef !10
  %i.j = icmp eq i64 %i.i, -2
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 16, !range !22, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  switch i8 %i.k, label %default.unreachable3 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

default.unreachable3:                             ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.f, ptr noundef nonnull align 16 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs6_NtCshE3sgg5Qsfb_6config2deNtB5_10EnumAccessNtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.e, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(128) %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.n = load i64, ptr %i.m, align 8, !range !24, !noundef !10
  %.not2 = icmp eq i64 %i.n, -2
  br i1 %.not2, label %bb.h, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 16 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs6_NtCshE3sgg5Qsfb_6config2deNtB5_10EnumAccessNtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(128) %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.p = load i64, ptr %i.o, align 8, !range !24, !noundef !10
  %.not1 = icmp eq i64 %i.p, -2
  br i1 %.not1, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %i.l, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs6_NtCshE3sgg5Qsfb_6config2deNtB5_10EnumAccessNtNtCs4NSHK7GLW4I_10serde_core2de13VariantAccess12unit_variant(ptr noalias nofree noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(128) %i.b)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.r = load i64, ptr %i.q, align 8, !range !24, !noundef !10
  %.not = icmp eq i64 %i.r, -2
  br i1 %.not, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.e, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 0, ptr %0, align 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 1, ptr %0, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 2, ptr %0, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -2, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.i, %bb.k, %bb.b, %bb.h, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs11_NtCsG258MDvU3F_3std4pathNtB7_7PathBufNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  switch i64 %i.e, label %.lr.ph.preheader.split.i.split [
    i64 0, label %.thread
    i64 1, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge
  ]

.lr.ph.preheader.split.i.split:                   ; preds = %bb.a
  %i.f = add i64 %i.e, -2                         ; 2 uses
  br label %.lr.ph.i

._crit_edge.loopexit.peel.begin.i.peel.begin:     ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !655, !noundef !10
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.b, label %.thread

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge: ; preds = %bb.a
  %2 = load i8, ptr %i.c, align 1, !alias.scope !655, !noundef !10
  %3 = icmp eq i8 %2, 47
  %spec.select = zext i1 %3 to i64
  br label %.thread

bb.b:                                             ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin
  %.not = icmp ult i64 %i.f, %.sroa.0.1.i
  br i1 %.not, label %_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sub nuw i64 %i.o, %.sroa.0.1.i           ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.1.i
  %i.l = add i64 %i.j, %.sroa.012.2.i             ; 2 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) #29
  br label %_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit

.thread:                                          ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge, %._crit_edge.loopexit.peel.begin.i.peel.begin, %bb.a
  %i.n = phi i64 [ %i.e, %bb.a ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge ], [ %.sroa.012.2.i, %._crit_edge.loopexit.peel.begin.i.peel.begin ] ; 2 uses
  %.sroa.012.3.i.peel = phi i64 [ %i.e, %bb.a ], [ %spec.select, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge ], [ %.sroa.0.1.i, %._crit_edge.loopexit.peel.begin.i.peel.begin ] ; 3 uses
  %4 = icmp ult i64 %.sroa.012.3.i.peel, %i.e
  br i1 %4, label %bb.d, label %_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.split.i.split
  %.sroa.0.032.i = phi i64 [ %.sroa.0.1.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split ] ; 4 uses
  %.sroa.012.031.i = phi i64 [ %.sroa.012.2.i, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split ] ; 3 uses
  %.sroa.019.030.i = phi i64 [ %i.o, %bb.e ], [ 0, %.lr.ph.preheader.split.i.split ] ; 5 uses
  %i.o = add nuw i64 %.sroa.019.030.i, 1          ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.019.030.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !655, !noundef !10
  %i.r = icmp eq i8 %i.q, 47
  br i1 %i.r, label %bb.f, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.s = sub nuw i64 %i.e, %.sroa.012.3.i.peel    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.012.3.i.peel
  %i.u = add i64 %i.s, %i.n                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.s) #29
  br label %_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit

bb.e:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.012.2.i = phi i64 [ %.sroa.012.3.i, %bb.k ], [ %.sroa.012.031.i, %.lr.ph.i ] ; 4 uses
  %.sroa.0.1.i = phi i64 [ %i.ag, %bb.k ], [ %.sroa.0.032.i, %.lr.ph.i ] ; 5 uses
  %exitcond.not.i = icmp eq i64 %.sroa.019.030.i, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin, label %.lr.ph.i, !llvm.loop !651

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = icmp ugt i64 %.sroa.019.030.i, %.sroa.0.032.i
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.012.3.i = phi i64 [ %i.af, %bb.h ], [ %.sroa.012.031.i, %bb.f ]
  %i.x = sub nuw i64 %i.e, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o ; 2 uses
  %i.z = icmp eq i64 %i.x, 1
  %i.aa = load i8, ptr %i.y, align 1, !alias.scope !655, !noundef !10
  %i.ab = icmp eq i8 %i.aa, 46                    ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nuw i64 %.sroa.019.030.i, %.sroa.0.032.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.032.i
  %i.ae = add i64 %i.ac, %.sroa.012.031.i         ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 62)
  tail call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.ac) #29
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j, %bb.i
  %.sroa.024.0.i = phi i64 [ 1, %bb.i ], [ 0, %bb.j ], [ 1, %bb.m ]
  %i.ag = add i64 %.sroa.024.0.i, %i.o
  br label %bb.e

bb.l:                                             ; preds = %bb.g
  br i1 %i.ab, label %bb.m, label %bb.j

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !655, !noundef !10
  %i.aj = icmp eq i8 %i.ai, 47
  br i1 %i.aj, label %bb.k, label %bb.j

_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.c, %bb.b, %.thread, %bb.d
  %.sroa.012.1.i = phi i64 [ %i.v, %bb.d ], [ %i.n, %.thread ], [ %.sroa.012.2.i, %bb.b ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !657
  store i64 %.sroa.012.1.i, ptr %i.a, align 8, !noalias !657
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8) #29, !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !657
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvXs2_Cs7jl31LXyA6d_3nixNtNtCsG258MDvU3F_3std4path4PathNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys6statfs6statfsBo_E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(120) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i32 } @_RINvXs1_Cs7jl31LXyA6d_3nixShNtB6_7NixPath13with_nix_pathlNCINvNtNtB6_3sys6statfs6statfsNtNtCsG258MDvU3F_3std4path4PathE0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %2)
  ret { i32, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMapINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [104 x i8], align 8               ; 15 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 3 uses
  %i.h = alloca [56 x i8], align 8                ; 11 uses
  %i.i = alloca [72 x i8], align 8                ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !791)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.01.0.copyload.i = load i64, ptr %i.j, align 8, !alias.scope !791
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !791, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.53.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !791 ; 4 uses
  %i.k = icmp ult i64 %.sroa.53.0.copyload.i, 88686269585142076
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [104 x i8], ptr %.sroa.42.0.copyload.i, i64 %.sroa.53.0.copyload.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !alias.scope !792
  store i64 0, ptr %i.i, align 8, !alias.scope !790
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %.sroa.42.0.copyload.i, ptr %i.o, align 8, !alias.scope !790
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 5 uses
  store ptr %.sroa.42.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !790
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.01.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !790
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !790
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val6.i = load i64, ptr %i.p, align 8, !alias.scope !791, !noundef !10 ; 2 uses
  %i.q = icmp eq i64 %.val6.i, 0
  br i1 %i.q, label %_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !791, !nonnull !10, !noundef !10
  %i.s = shl nuw nsw i64 %.val6.i, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef 2) #31, !noalias !792
  br label %_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant.exit

_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant.exit: ; preds = %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !10 ; 4 uses
  %i.v = icmp ult i64 %i.u, 88686269585142076
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.u, 0                      ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.53.0.copyload.i, 1
  %i.y = lshr i64 %i.x, 1
  %.sroa.0.0 = select i1 %i.w, i64 %.sroa.53.0.copyload.i, i64 %i.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.aa = tail call i64 @llvm.usub.sat.i64(i64 24576, i64 %i.u)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 %.sroa.0.0)
  %i.ab = add nuw nsw i64 %..i, %i.u              ; 2 uses
  %i.ac = udiv i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, %i.ab            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !793, !noundef !10
  %i.ah = icmp ugt i64 %i.ad, %i.ag
  br i1 %i.ah, label %bb.c, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtCs577yCKf7gy3_4http6header3map14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant.exit

.body:                                            ; preds = %.body34.thread225.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf, %bb.bj, %bb.bo, %.loopexit.split-lp248.loopexit.split-lp, %bb.ag, %bb.ak, %bb.al, %.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.h, %.body.i
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp837, %.loopexit.split-lp.loopexit.split-lp ], [ %i.hd, %bb.bf ], [ %eh.lpad-body.i, %.body.i ], [ %i.bd, %bb.h ], [ %i.ho, %bb.bj ], [ %i.dc, %bb.x ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp248.loopexit.split-lp ], [ %i.dz, %bb.ak ], [ %i.ds, %bb.ag ], [ %i.dz, %bb.al ], [ %i.hz, %bb.bo ], [ %lpad.loopexit.split-lp841, %.body34.thread225.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map8IntoIterNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #27
          to label %bb.bq unwind label %bb.y

bb.c:                                             ; preds = %_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant.exit
  %i.ai = icmp samesign ult i64 %i.ad, 2
  %i.aj = add nsw i64 %i.ad, -1
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aj, i1 true)
  %i.al = lshr i64 -1, %i.ak
  %.sroa.022.0.i = select i1 %i.ai, i64 0, i64 %i.al ; 3 uses
  %i.am = add nuw nsw i64 %.sroa.022.0.i, 1       ; 6 uses
  %or.cond.i = icmp samesign ugt i64 %.sroa.022.0.i, 32767
  br i1 %or.cond.i, label %_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap11try_reserveCsl8OoimOLbh_6qdrant.exit.thread.invoke, label %bb.d, !prof !794

bb.d:                                             ; preds = %bb.c
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap8try_growCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.am) #29
          to label %_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap11try_reserveCsl8OoimOLbh_6qdrant.exit unwind label %.body34.thread225.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.ao = trunc nuw i64 %i.am to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = add i16 %i.ao, -1
  store i16 %i.aq, ptr %i.ap, align 8, !alias.scope !793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !795
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.am, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4)
          to label %.noexc21 unwind label %.body34.thread225.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.f
  %i.ar = load i64, ptr %i.c, align 8, !range !9, !noalias !795, !noundef !10
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !11, !noalias !795, !noundef !10 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.as, label %bb.g, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i, !prof !12

bb.g:                                             ; preds = %.noexc21
  %i.aw = load i64, ptr %i.av, align 8, !noalias !795
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.g
  %i.ax = phi i64 [ %i.au, %bb.g ], [ %i.bp, %bb.k ]
  %i.ay = phi i64 [ %i.aw, %bb.g ], [ %i.br, %bb.k ]
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.ay) #26
          to label %.cont unwind label %.body34.thread225.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %.noexc21
  %i.az = load ptr, ptr %i.av, align 8, !noalias !795, !nonnull !10, !noundef !10
  %i.ba = icmp ult i64 %.sroa.022.0.i, %i.au
  tail call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !795
  store i64 %i.au, ptr %i.d, align 8, !noalias !795
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !noalias !795
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.bc, align 8, !noalias !795
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs577yCKf7gy3_4http6header3map3PosE11extend_withCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.am, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs577yCKf7gy3_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.h, !noalias !795

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs577yCKf7gy3_4http6header3map3PosEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #27
          to label %.body unwind label %bb.i, !noalias !795

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !795
  unreachable

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs577yCKf7gy3_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsl8OoimOLbh_6qdrant.exit.i: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !795
  %i.bf = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs577yCKf7gy3_4http6header3map3PosE16into_boxed_sliceCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc23 unwind label %.body34.thread225.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc23:                                         ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs577yCKf7gy3_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsl8OoimOLbh_6qdrant.exit.i
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !793
  %.val30.i = load i64, ptr %i.af, align 8, !alias.scope !793, !noundef !10 ; 2 uses
  %i.bi = icmp eq i64 %.val30.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs577yCKf7gy3_4http6header3map3PosEECsl8OoimOLbh_6qdrant.exit.i, label %bb.j

bb.j:                                             ; preds = %.noexc23
  %.val.i19 = load ptr, ptr %i.ae, align 8, !alias.scope !793, !nonnull !10, !noundef !10
  %i.bj = shl nuw nsw i64 %.val30.i, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i19, i64 noundef range(i64 1, -9223372036854775808) %i.bj, i64 noundef 2) #31, !noalias !793
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs577yCKf7gy3_4http6header3map3PosEECsl8OoimOLbh_6qdrant.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs577yCKf7gy3_4http6header3map3PosEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.j, %.noexc23
  store ptr %i.bg, ptr %i.ae, align 8, !alias.scope !793
  store i64 %i.bh, ptr %i.af, align 8, !alias.scope !793
  %i.bk = lshr i64 %i.am, 2
  %i.bl = sub nuw nsw i64 %i.am, %i.bk            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !793
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bl, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc24 unwind label %.body34.thread225.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs577yCKf7gy3_4http6header3map3PosEECsl8OoimOLbh_6qdrant.exit.i
  %i.bm = load i64, ptr %i.e, align 8, !range !9, !noalias !793, !noundef !10
  %i.bn = trunc nuw i64 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !11, !noalias !793, !noundef !10 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bn, label %bb.k, label %bb.l, !prof !12

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!456 = distinct !{!456, !455, !"_RINvMsm_NtCskKLDkoKarTP_4core5arrayARNtNtCsG258MDvU3F_3std4path4Pathj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtBB_7PathBufENCINvMB1i_B1f_10wrap_mut_1By_NvYBz_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0ECsl8OoimOLbh_6qdrant: argument 1"}
!457 = distinct !{!457, !455, !"_RINvMsm_NtCskKLDkoKarTP_4core5arrayARNtNtCsG258MDvU3F_3std4path4Pathj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitNtBB_7PathBufENCINvMB1i_B1f_10wrap_mut_1By_NvYBz_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0ECsl8OoimOLbh_6qdrant: argument 0"}
!458 = distinct !{!458, i1 true, !"_RINvNtCskKLDkoKarTP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufEKj2_QINtNtB2_5drain5DrainRNtB1p_4PathNCINvMBJ_BG_10wrap_mut_1B2l_NvYB2m_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0EECsl8OoimOLbh_6qdrant"}
!459 = distinct !{!459, !458, !"_RINvNtCskKLDkoKarTP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufEKj2_QINtNtB2_5drain5DrainRNtB1p_4PathNCINvMBJ_BG_10wrap_mut_1B2l_NvYB2m_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0EECsl8OoimOLbh_6qdrant: argument 1"}
!460 = distinct !{!460, !458, !"_RINvNtCskKLDkoKarTP_4core5array11try_from_fnINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufEKj2_QINtNtB2_5drain5DrainRNtB1p_4PathNCINvMBJ_BG_10wrap_mut_1B2l_NvYB2m_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0EECsl8OoimOLbh_6qdrant: argument 0"}
!461 = distinct !{!461, i1 true, !"_RINvNtCskKLDkoKarTP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufEQINtNtB2_5drain5DrainRNtB1w_4PathNCINvMBQ_BN_10wrap_mut_1B2o_NvYB2p_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0EECsl8OoimOLbh_6qdrant"}
!462 = distinct !{!462, !461, !"_RINvNtCskKLDkoKarTP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufEQINtNtB2_5drain5DrainRNtB1w_4PathNCINvMBQ_BN_10wrap_mut_1B2o_NvYB2p_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0EECsl8OoimOLbh_6qdrant: argument 1"}
!463 = distinct !{!463, !461, !"_RINvNtCskKLDkoKarTP_4core5array18try_from_fn_erasedINtNtNtB4_3ops9try_trait17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufEQINtNtB2_5drain5DrainRNtB1w_4PathNCINvMBQ_BN_10wrap_mut_1B2o_NvYB2p_NtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_ownedE0EECsl8OoimOLbh_6qdrant: argument 0"}
!464 = distinct !{!464, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops9try_traitINtB4_17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufENtB4_3Try6branchCsl8OoimOLbh_6qdrant"}
!465 = distinct !{!465, !464, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops9try_traitINtB4_17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufENtB4_3Try6branchCsl8OoimOLbh_6qdrant: argument 1"}
!466 = distinct !{!466, !464, !"_RNvXs_NtNtCskKLDkoKarTP_4core3ops9try_traitINtB4_17NeverShortCircuitNtNtCsG258MDvU3F_3std4path7PathBufENtB4_3Try6branchCsl8OoimOLbh_6qdrant: argument 0"}
!467 = !{!457, !456}
!468 = !{!457}
!469 = !{!460, !459, !457, !456}
!470 = !{!463, !462, !460, !459, !457, !456}
!471 = !{!463, !460, !457, !456}
!472 = !{!460, !457, !456}
!473 = !{!466, !465}
!474 = !{!462, !460, !459, !457, !456}
!475 = distinct !{!475, i1 true, !"_RNCINvMs_NtNtCsibN4lybXtLQ_7reqwest10async_impl7requestNtB7_14RequestBuilder4jsonNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestE0Csl8OoimOLbh_6qdrant"}
!476 = distinct !{!476, !475, !"_RNCINvMs_NtNtCsibN4lybXtLQ_7reqwest10async_impl7requestNtB7_14RequestBuilder4jsonNtNtNtCs5QaNqjAn6vc_5shard9snapshots17snapshot_manifest16SnapshotManifestE0Csl8OoimOLbh_6qdrant: argument 0"}
!477 = distinct !{!477, i1 true, !"_RNvMNtNtCs577yCKf7gy3_4http6header5valueNtB2_11HeaderValue11from_static"}
!478 = distinct !{!478, !477, !"_RNvMNtNtCs577yCKf7gy3_4http6header5valueNtB2_11HeaderValue11from_static: argument 0"}
!479 = !{!478, !476}
!480 = distinct !{!480, i1 true, !"_RNCINvMs_NtNtCsibN4lybXtLQ_7reqwest10async_impl7requestNtB7_14RequestBuilder4jsonNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service16InferenceRequestE0B1p_"}
!481 = distinct !{!481, !480, !"_RNCINvMs_NtNtCsibN4lybXtLQ_7reqwest10async_impl7requestNtB7_14RequestBuilder4jsonNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service16InferenceRequestE0B1p_: argument 0"}
!482 = distinct !{!482, i1 true, !"_RNvMNtNtCs577yCKf7gy3_4http6header5valueNtB2_11HeaderValue11from_static"}
!483 = distinct !{!483, !482, !"_RNvMNtNtCs577yCKf7gy3_4http6header5valueNtB2_11HeaderValue11from_static: argument 0"}
!484 = !{!483, !481}
!485 = distinct !{!485, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map11VacantEntryNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant"}
!486 = distinct !{!486, !485, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map11VacantEntryNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant: argument 0"}
!487 = distinct !{!487, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant"}
!488 = distinct !{!488, !487, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant: argument 0"}
!489 = distinct !{!489, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant"}
!490 = distinct !{!490, !489, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant: argument 0"}
!491 = distinct !{!491, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant"}
!492 = distinct !{!492, !491, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant: argument 0"}
!493 = distinct !{!493, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant"}
!494 = distinct !{!494, !493, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant: argument 0"}
!495 = distinct !{!495, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!496 = distinct !{!496, !495, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!497 = distinct !{!497, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!498 = distinct !{!498, !497, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!499 = distinct !{null}
!500 = !{!486}
!501 = !{!488}
!502 = !{!490}
!503 = !{!490, !488, !486}
!504 = !{!492}
!505 = !{!494}
!506 = !{!496}
!507 = !{!498}
!508 = !{!498, !496, !494, !492, !490, !488, !486}
!509 = distinct !{!509, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB1r_"}
!510 = distinct !{!510, !509, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB1r_: argument 0"}
!511 = distinct !{!511, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB16_"}
!512 = distinct !{!512, !511, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEEB16_: argument 0"}
!513 = distinct !{!513, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEBH_"}
!514 = distinct !{!514, !513, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing6config12LoggerConfigEBH_: argument 0"}
!515 = distinct !{!515, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing7default6ConfigEBH_"}
!516 = distinct !{!516, !515, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsl8OoimOLbh_6qdrant7tracing7default6ConfigEBH_: argument 0"}
!517 = distinct !{!517, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant"}
!518 = distinct !{!518, !517, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant: argument 0"}
!519 = distinct !{!519, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_"}
!520 = distinct !{!520, !519, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_: argument 0"}
!521 = distinct !{!521, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_"}
!522 = distinct !{!522, !521, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_: argument 0"}
!523 = !{!518, !516, !514, !512, !510}
!524 = !{!520, !516, !514, !512, !510}
!525 = !{!522, !516, !514, !512, !510}
!526 = distinct !{!526, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant"}
!527 = distinct !{!527, !526, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant: argument 0"}
!528 = distinct !{!528, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant"}
!529 = distinct !{!529, !528, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant: argument 0"}
!530 = distinct !{!530, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant"}
!531 = distinct !{!531, !530, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant: argument 0"}
!532 = distinct !{!532, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant"}
!533 = distinct !{!533, !532, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant: argument 0"}
!534 = distinct !{!534, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!535 = distinct !{!535, !534, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!536 = distinct !{!536, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!537 = distinct !{!537, !536, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!538 = distinct !{!538, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!539 = distinct !{!539, !538, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!540 = distinct !{!540, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!541 = distinct !{!541, !540, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!542 = distinct !{!542, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!543 = distinct !{!543, !542, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!544 = distinct !{!544, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!545 = distinct !{!545, !544, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!546 = distinct !{!546, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!547 = distinct !{!547, !546, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!548 = distinct !{!548, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!549 = distinct !{!549, !548, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!550 = distinct !{null, null, null}
!551 = !{!527}
!552 = !{!529}
!553 = !{!529, !527}
!554 = !{!531}
!555 = !{!533}
!556 = !{!535}
!557 = !{!537}
!558 = !{!537, !535, !533, !531, !529, !527}
!559 = !{!539}
!560 = !{!541}
!561 = !{!543}
!562 = !{!543, !541, !539}
!563 = !{!545}
!564 = !{!547}
!565 = !{!549}
!566 = !{!549, !547, !545}
!567 = distinct !{!567, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwvynAR9gqy_2h23ext8ProtocolECsl8OoimOLbh_6qdrant"}
!568 = distinct !{!568, !567, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwvynAR9gqy_2h23ext8ProtocolECsl8OoimOLbh_6qdrant: argument 0"}
!569 = distinct !{!569, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25hpack6header8BytesStrECsl8OoimOLbh_6qdrant"}
!570 = distinct !{!570, !569, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25hpack6header8BytesStrECsl8OoimOLbh_6qdrant: argument 0"}
!571 = distinct !{!571, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!572 = distinct !{!572, !571, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!573 = distinct !{!573, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!574 = distinct !{!574, !573, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!575 = distinct !{ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgwvynAR9gqy_2h23ext8ProtocolECsl8OoimOLbh_6qdrant, null, null, null}
!576 = !{!568}
!577 = !{!570}
!578 = !{!572}
!579 = !{!574}
!580 = !{!574, !572, !570, !568}
!581 = distinct !{!581, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25hpack6header8BytesStrECsl8OoimOLbh_6qdrant"}
!582 = distinct !{!582, !581, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgwvynAR9gqy_2h25hpack6header8BytesStrECsl8OoimOLbh_6qdrant: argument 0"}
!583 = distinct !{!583, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!584 = distinct !{!584, !583, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!585 = distinct !{!585, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!586 = distinct !{!586, !585, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!587 = distinct !{null, null, null}
!588 = !{!582}
!589 = !{!584}
!590 = !{!586}
!591 = !{!586, !584, !582}
!592 = distinct !{!592, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant"}
!593 = distinct !{!593, !592, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant: argument 0"}
!594 = distinct !{!594, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant"}
!595 = distinct !{!595, !594, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant: argument 0"}
!596 = distinct !{!596, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_"}
!597 = distinct !{!597, !596, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_: argument 0"}
!598 = distinct !{!598, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_"}
!599 = distinct !{!599, !598, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant7tracing6config9SpanEventEEEB1X_: argument 0"}
!600 = !{!593}
!601 = !{!595}
!602 = !{!597}
!603 = !{!599}
!604 = distinct !{!604, i1 true, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path7PathBufINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant"}
!605 = distinct !{!605, !604, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertRNtNtCsG258MDvU3F_3std4path7PathBufINtB5_4IntoBz_E4intoCsl8OoimOLbh_6qdrant: argument 0"}
!606 = distinct !{!606, i1 true, !"_RNvXsz_NtCsG258MDvU3F_3std4pathNtB5_7PathBufINtNtCskKLDkoKarTP_4core7convert4FromRBt_E4fromCsl8OoimOLbh_6qdrant"}
!607 = distinct !{!607, !606, !"_RNvXsz_NtCsG258MDvU3F_3std4pathNtB5_7PathBufINtNtCskKLDkoKarTP_4core7convert4FromRBt_E4fromCsl8OoimOLbh_6qdrant: argument 0"}
!608 = distinct !{!608, i1 true, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant"}
!609 = distinct !{!609, !608, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant: argument 1"}
!610 = distinct !{!610, !608, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsl8OoimOLbh_6qdrant: argument 0"}
!611 = !{!605}
!612 = !{!607}
!613 = !{!610, !609, !607, !605}
!614 = !{!610, !607, !605}
!615 = !{!607, !605}
!616 = distinct !{!616, i1 true, !"_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant"}
!617 = distinct !{!617, !616, !"_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant: argument 0"}
!618 = distinct !{!618, i1 true, !"_RINvXsH_NtNtCs577yCKf7gy3_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant"}
!619 = distinct !{!619, !618, !"_RINvXsH_NtNtCs577yCKf7gy3_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant: argument 0"}
!620 = distinct !{!620, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCsl8OoimOLbh_6qdrant"}
!621 = distinct !{!621, !620, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCsl8OoimOLbh_6qdrant: argument 0"}
!622 = distinct !{!622, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsl8OoimOLbh_6qdrant"}
!623 = distinct !{!623, !622, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsl8OoimOLbh_6qdrant: argument 0"}
!624 = distinct !{!624, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCsl8OoimOLbh_6qdrant"}
!625 = distinct !{!625, !624, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_isizeCsl8OoimOLbh_6qdrant: argument 0"}
!626 = distinct !{!626, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsl8OoimOLbh_6qdrant"}
!627 = distinct !{!627, !626, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsl8OoimOLbh_6qdrant: argument 0"}
!628 = distinct !{!628, i1 true, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsl8OoimOLbh_6qdrant"}
!629 = distinct !{!629, !628, !"_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher6finishCsl8OoimOLbh_6qdrant: argument 0"}
!630 = distinct !{!630, i1 true, !"_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsl8OoimOLbh_6qdrant"}
!631 = distinct !{!631, !630, !"_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsl8OoimOLbh_6qdrant: argument 0"}
!632 = distinct !{!632, i1 true, !"_RINvXsH_NtNtCs577yCKf7gy3_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsl8OoimOLbh_6qdrant"}
!633 = distinct !{!633, !632, !"_RINvXsH_NtNtCs577yCKf7gy3_4http6header4nameINtB6_4ReprNtB6_6CustomENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsl8OoimOLbh_6qdrant: argument 0"}
!634 = distinct !{!634, i1 true, !"_RNvXs18_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!635 = distinct !{!635, !634, !"_RNvXs18_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!636 = distinct !{!636, i1 true, !"_RINvXst_NtNtCs577yCKf7gy3_4http6header4nameNtB6_6CustomNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsl8OoimOLbh_6qdrant"}
!637 = distinct !{!637, !636, !"_RINvXst_NtNtCs577yCKf7gy3_4http6header4nameNtB6_6CustomNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtB8_3map9FnvHasherECsl8OoimOLbh_6qdrant: argument 0"}
!638 = distinct !{!638, !646}
!639 = !{!619, !617}
!640 = !{!623, !621, !619, !617}
!641 = !{!627, !625, !619, !617}
!642 = !{!629}
!643 = !{!633, !631}
!644 = !{!635}
!645 = !{!637, !633, !631}
!646 = !{!"llvm.loop.unroll.disable"}
!647 = !{!"branch_weights", i32 1, i32 1, i32 1}
!648 = !{i64 -2, i64 -9223372036854775808}
!649 = distinct !{!649, i1 true, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant"}
!650 = distinct !{!650, !649, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant: argument 0"}
!651 = distinct !{!651, !656}
!652 = distinct !{!652, !649, !"_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtB9_4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant: argument 1"}
!653 = distinct !{!653, i1 true, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsl8OoimOLbh_6qdrant"}
!654 = distinct !{!654, !653, !"_RNvYNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usizeCsl8OoimOLbh_6qdrant: argument 0"}
!655 = !{!650}
!656 = !{!"llvm.loop.peeled.count", i32 1}
!657 = !{!654, !650, !652}
!658 = distinct !{!658, i1 true, !"_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant"}
!659 = distinct !{!659, !658, !"_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant: argument 0"}
!660 = distinct !{!660, !658, !"_RNvXs3_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMapNtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsl8OoimOLbh_6qdrant: argument 1"}
!661 = distinct !{!661, i1 true, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap11try_reserveCsl8OoimOLbh_6qdrant"}
!662 = distinct !{!662, !661, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap11try_reserveCsl8OoimOLbh_6qdrant: argument 0"}
!663 = distinct !{!663, i1 true, !"_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs577yCKf7gy3_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsl8OoimOLbh_6qdrant"}
!664 = distinct !{!664, !663, !"_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs577yCKf7gy3_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsl8OoimOLbh_6qdrant: argument 0"}
!665 = distinct !{!665, i1 true, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!666 = distinct !{!666, !665, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1"}
!667 = distinct !{!667, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!668 = distinct !{!668, !667, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1"}
!669 = distinct !{!669, !665, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 0"}
!670 = distinct !{!670, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!671 = distinct !{!671, !670, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!672 = distinct !{!672, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!673 = distinct !{!673, !672, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!674 = distinct !{!674, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!675 = distinct !{!675, !674, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!676 = distinct !{!676, i1 true, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCs577yCKf7gy3_4http6header3map5EntryNtNtBM_5value11HeaderValueENtBK_14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant"}
!677 = distinct !{!677, !676, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCs577yCKf7gy3_4http6header3map5EntryNtNtBM_5value11HeaderValueENtBK_14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant: argument 0"}
!678 = distinct !{!678, !676, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtCs577yCKf7gy3_4http6header3map5EntryNtNtBM_5value11HeaderValueENtBK_14MaxSizeReachedE6expectCsl8OoimOLbh_6qdrant: argument 1"}
!679 = distinct !{!679, i1 true, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsl8OoimOLbh_6qdrant"}
!680 = distinct !{!680, !679, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsl8OoimOLbh_6qdrant: argument 0"}
!681 = distinct !{!681, i1 true, !"_RNvMsy_NtNtCs577yCKf7gy3_4http6header3mapINtB5_11VacantEntryNtNtB7_5value11HeaderValueE16try_insert_entryCsl8OoimOLbh_6qdrant"}
!682 = distinct !{!682, !681, !"_RNvMsy_NtNtCs577yCKf7gy3_4http6header3mapINtB5_11VacantEntryNtNtB7_5value11HeaderValueE16try_insert_entryCsl8OoimOLbh_6qdrant: argument 2"}
!683 = distinct !{!683, !681, !"_RNvMsy_NtNtCs577yCKf7gy3_4http6header3mapINtB5_11VacantEntryNtNtB7_5value11HeaderValueE16try_insert_entryCsl8OoimOLbh_6qdrant: argument 1"}
!684 = distinct !{!684, !681, !"_RNvMsy_NtNtCs577yCKf7gy3_4http6header3mapINtB5_11VacantEntryNtNtB7_5value11HeaderValueE16try_insert_entryCsl8OoimOLbh_6qdrant: argument 0"}
!685 = distinct !{!685, i1 true, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsl8OoimOLbh_6qdrant"}
!686 = distinct !{!686, !685, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsl8OoimOLbh_6qdrant: argument 0"}
!687 = distinct !{!687, !685, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsl8OoimOLbh_6qdrant: argument 2"}
!688 = distinct !{!688, !685, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap16try_insert_entryCsl8OoimOLbh_6qdrant: argument 1"}
!689 = distinct !{!689, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant"}
!690 = distinct !{!690, !689, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant: argument 0"}
!691 = distinct !{!691, !689, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant: argument 1"}
!692 = distinct !{!692, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!693 = distinct !{!693, !692, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!694 = distinct !{!694, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!695 = distinct !{!695, !694, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!696 = distinct !{!696, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!697 = distinct !{!697, !696, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!698 = distinct !{!698, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant"}
!699 = distinct !{!699, !698, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant: argument 0"}
!700 = distinct !{!700, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant"}
!701 = distinct !{!701, !700, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant: argument 0"}
!702 = distinct !{!702, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant"}
!703 = distinct !{!703, !702, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant: argument 0"}
!704 = distinct !{!704, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant"}
!705 = distinct !{!705, !704, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant: argument 0"}
!706 = distinct !{!706, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!707 = distinct !{!707, !706, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!708 = distinct !{!708, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!709 = distinct !{!709, !708, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!710 = distinct !{null}
!711 = distinct !{!711, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant"}
!712 = distinct !{!712, !711, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant: argument 0"}
!713 = distinct !{!713, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant"}
!714 = distinct !{!714, !713, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header4name4ReprNtBE_6CustomEECsl8OoimOLbh_6qdrant: argument 0"}
!715 = distinct !{!715, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant"}
!716 = distinct !{!716, !715, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name6CustomECsl8OoimOLbh_6qdrant: argument 0"}
!717 = distinct !{!717, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant"}
!718 = distinct !{!718, !717, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs577yCKf7gy3_4http8byte_str7ByteStrECsl8OoimOLbh_6qdrant: argument 0"}
!719 = distinct !{!719, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!720 = distinct !{!720, !719, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!721 = distinct !{!721, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!722 = distinct !{!722, !721, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!723 = distinct !{!723, !679, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsl8OoimOLbh_6qdrant: argument 2"}
!724 = distinct !{!724, !679, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsl8OoimOLbh_6qdrant: argument 1"}
!725 = distinct !{!725, i1 true, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15insert_occupiedCsl8OoimOLbh_6qdrant"}
!726 = distinct !{!726, !725, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15insert_occupiedCsl8OoimOLbh_6qdrant: argument 1"}
!727 = distinct !{!727, !725, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15insert_occupiedCsl8OoimOLbh_6qdrant: argument 2"}
!728 = distinct !{!728, !725, !"_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap15insert_occupiedCsl8OoimOLbh_6qdrant: argument 0"}
!729 = distinct !{!729, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!730 = distinct !{!730, !729, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!731 = distinct !{!731, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!732 = distinct !{!732, !731, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!733 = distinct !{!733, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!734 = distinct !{!734, !733, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!735 = distinct !{!735, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!736 = distinct !{!736, !735, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!737 = distinct !{!737, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!738 = distinct !{!738, !737, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!739 = distinct !{!739, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!740 = distinct !{!740, !739, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!741 = distinct !{!741, i1 true, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!742 = distinct !{!742, !741, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1:pre.rot"}
!743 = distinct !{!743, i1 true, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!744 = distinct !{!744, !743, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1"}
!745 = distinct !{!745, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!746 = distinct !{!746, !745, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1"}
!747 = distinct !{!747, !743, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 0"}
!748 = distinct !{!748, i1 true, !"_RNvMsO_NtNtCs577yCKf7gy3_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsl8OoimOLbh_6qdrant"}
!749 = distinct !{!749, !748, !"_RNvMsO_NtNtCs577yCKf7gy3_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsl8OoimOLbh_6qdrant: argument 0"}
!750 = distinct !{!750, i1 true, !"_RINvNtNtCs577yCKf7gy3_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!751 = distinct !{!751, !750, !"_RINvNtNtCs577yCKf7gy3_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!752 = distinct !{!752, !750, !"_RINvNtNtCs577yCKf7gy3_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 1"}
!753 = distinct !{!753, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant"}
!754 = distinct !{!754, !753, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant: argument 0"}
!755 = distinct !{!755, !750, !"_RINvNtNtCs577yCKf7gy3_4http6header3map12append_valueNtNtB4_5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 2"}
!756 = distinct !{!756, !753, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant: argument 1"}
!757 = distinct !{!757, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant"}
!758 = distinct !{!758, !757, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant: argument 0"}
!759 = distinct !{!759, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!760 = distinct !{!760, !759, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!761 = distinct !{!761, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!762 = distinct !{!762, !761, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!763 = distinct !{!763, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!764 = distinct !{!764, !763, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!765 = distinct !{!765, i1 true, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant"}
!766 = distinct !{!766, !765, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant: argument 0"}
!767 = distinct !{!767, !765, !"_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsl8OoimOLbh_6qdrant: argument 1"}
!768 = distinct !{!768, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant"}
!769 = distinct !{!769, !768, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant: argument 0"}
!770 = distinct !{!770, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!771 = distinct !{!771, !770, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!772 = distinct !{!772, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!773 = distinct !{!773, !772, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!774 = distinct !{!774, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!775 = distinct !{!775, !774, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!776 = distinct !{!776, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!777 = distinct !{!777, !776, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!778 = distinct !{!778, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!779 = distinct !{!779, !778, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!780 = distinct !{!780, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!781 = distinct !{!781, !780, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!782 = distinct !{!782, i1 true, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant"}
!783 = distinct !{!783, !782, !"_RNvXsL_NtNtCs577yCKf7gy3_4http6header3mapINtB5_8IntoIterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant: argument 1:h.rot"}
!784 = distinct !{!784, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant"}
!785 = distinct !{!785, !784, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant: argument 0"}
!786 = distinct !{!786, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant"}
!787 = distinct !{!787, !786, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs14kzo5Se9zC_5bytes5bytes5BytesECsl8OoimOLbh_6qdrant: argument 0"}
!788 = distinct !{!788, i1 true, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop"}
!789 = distinct !{!789, !788, !"_RNvXs1_NtCs14kzo5Se9zC_5bytes5bytesNtB5_5BytesNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop: argument 0"}
!790 = !{!659}
!791 = !{!660}
!792 = !{!659, !660}
!793 = !{!662}
!794 = !{!"branch_weights", i32 2002, i32 2000}
!795 = !{!664, !662}
!796 = !{!666}
!797 = !{!668}
!798 = !{!668, !666}
!799 = !{!668, !669, !666}
!800 = !{!669, !666}
!801 = !{!675, !673, !671}
!802 = !{!677}
!803 = !{i8 -1, i8 3}
!804 = !{!678}
!805 = !{!677, !678}
!806 = !{!680}
!807 = !{!684, !683, !682}
!808 = !{!686}
!809 = !{!686, !688, !687, !684, !683, !682}
!810 = !{!686, !687, !684, !683, !682}
!811 = !{!686, !688, !684, !683}
!812 = !{!690, !686}
!813 = !{!691, !688, !687, !684, !683, !682}
!814 = !{!688, !687, !684, !683, !682}
!815 = !{!697, !695, !693, !686, !688, !687, !684, !683, !682}
!816 = !{!709, !707, !705, !703, !701, !699, !686, !688, !687, !684, !683, !682}
!817 = !{!722, !720, !718, !716, !714, !712, !686, !688, !687, !684, !683, !682}
!818 = !{!724, !723, !684, !683, !682}
!819 = !{!726}
!820 = !{!728, !726, !727}
!821 = !{!734, !732, !730, !728, !726, !727}
!822 = !{!728, !727}
!823 = !{!726, !727}
!824 = !{!728, !726}
!825 = !{!740, !738, !736}
!826 = !{!742}
!827 = !{!744}
!828 = !{!746}
!829 = !{!746, !744}
!830 = !{!746, !747, !744}
!831 = !{!747, !744}
!832 = !{!749}
!833 = !{!751}
!834 = !{!752}
!835 = !{!754, !752}
!836 = !{!756, !751, !755, !749}
!837 = !{!764, !762, !760, !758, !756, !751, !755, !749}
!838 = !{!751, !755, !749}
!839 = !{!766, !752}
!840 = !{!767, !751, !755, !749}
!841 = !{!775, !773, !771, !769, !767, !751, !755, !749}
!842 = !{!781, !779, !777, !749}
!843 = !{!783}
!844 = !{!789, !787, !785}
!845 = distinct !{!845, i1 true, !"_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls14PathBufVisitorECsl8OoimOLbh_6qdrant"}
!846 = distinct !{!846, !845, !"_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls14PathBufVisitorECsl8OoimOLbh_6qdrant: argument 0"}
!847 = distinct !{!847, !845, !"_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls14PathBufVisitorECsl8OoimOLbh_6qdrant: argument 1"}
!848 = distinct !{!848, i1 true, !"_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtB1d_5impls14PathBufVisitorECsl8OoimOLbh_6qdrant"}
!849 = distinct !{!849, !848, !"_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtB1d_5impls14PathBufVisitorECsl8OoimOLbh_6qdrant: argument 0"}
!850 = distinct !{!850, !848, !"_RINvXsh_NtCs8O45qwFIwQX_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs4NSHK7GLW4I_10serde_core2de12Deserializer15deserialize_anyNtNtB1d_5impls14PathBufVisitorECsl8OoimOLbh_6qdrant: argument 1"}
!851 = distinct !{!851, i1 true, !"_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read7discard"}
!852 = distinct !{!852, !851, !"_RNvXs5_NtCs8O45qwFIwQX_10serde_json4readNtB5_9SliceReadNtB5_4Read7discard: argument 0"}
!853 = !{!846}
!854 = !{!847}
!855 = !{!849}
!856 = !{!850}
end_hunk_1
