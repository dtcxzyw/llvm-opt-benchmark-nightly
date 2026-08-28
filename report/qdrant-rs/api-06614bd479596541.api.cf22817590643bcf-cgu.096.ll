Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.096?download=true
inline.NumInlined: 30
inline.NumDeleted: 20
begin_hunk_0_@_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8order_bys_1__NtB5_9DirectionNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api:bb.a
_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4: ; preds = %bb.d
  %i.s = load ptr, ptr %i.q, align 8, !noalias !31, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = icmp samesign ugt i64 %i.p, 2
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(3) @4, i64 range(i64 3, 5) 3, i1 false), !noalias !38
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit
  %.sink6 = phi i64 [ %i.p, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.h, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink5 = phi ptr [ %i.s, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ %i.k, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  %.sink = phi i64 [ 3, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit4 ], [ 4, %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit ]
  store i64 -9223372036854775805, ptr %0, align 8, !noalias !5
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink6, ptr %.sroa.4.0..sroa_idx.i1, align 8, !noalias !5
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink5, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i2, align 8, !noalias !5
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i3, align 8, !noalias !5
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB8_6qdrant7OrderByE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i32, ptr %i.i, align 8, !range !39, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.02.0.copyload = load i64, ptr %i.m, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.sroa.0.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.n = load <2 x i32>, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.6.sroa.5.0.copyload = load i32, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.o = trunc nuw i32 %i.j to i1
  %switch.selectcmp = icmp eq i32 %i.l, 1
  %switch.select = select i1 %switch.selectcmp, i8 1, i8 2
  %switch.selectcmp72 = icmp eq i32 %i.l, 0
  %switch.select73 = select i1 %switch.selectcmp72, i8 0, i8 %switch.select
  %.sroa.05.0 = select i1 %i.o, i8 %switch.select73, i8 2
  %switch = icmp ugt i64 %.sroa.02.0.copyload, -3
  br i1 %switch, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = xor i64 %.sroa.02.0.copyload, -9223372036854775808
  %i.q = icmp slt i64 %.sroa.02.0.copyload, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 3
  switch i64 %i.r, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  br label %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !40
  invoke void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions24try_date_time_from_proto(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.f, i64 noundef %.sroa.6.sroa.0.0.copyload, i32 noundef %.sroa.6.sroa.5.0.copyload)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.e
  %i.s = load i32, ptr %i.f, align 8, !range !39, !noalias !40, !noundef !5
  %i.t = trunc nuw i32 %i.s to i1
  br i1 %i.t, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40
  store i64 %.sroa.02.0.copyload, ptr %i.e, align 8, !noalias !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.6.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !44
  %.sroa.981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store <2 x i32> %i.n, ptr %.sroa.981.0..sroa_idx, align 8, !noalias !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40
  %.cast.a = inttoptr i64 %.sroa.6.sroa.0.0.copyload to ptr
  %.cast87 = bitcast <2 x i32> %i.n to i64
  invoke void @_RNvXs0_NtCs607s0NAIaWN_7segment5typesNtB5_15DateTimeWrapperNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.cast.a, i64 noundef %.cast87)
          to label %bb.j unwind label %bb.i, !noalias !40

bb.g:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !40, !nonnull !5, !align !45, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40
  br label %bb.z

bb.h:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.030.0.copyload.i = load i32, ptr %i.w, align 4, !noalias !40
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.431.0.copyload.i = load ptr, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !40
  %i.x = ptrtoint ptr %.sroa.431.0.copyload.i to i64
  br label %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread

bb.i:                                             ; preds = %.noexc.i, %bb.k, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #8
          to label %.body unwind label %bb.r, !noalias !40

bb.j:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.d, align 4, !noalias !40, !noundef !5 ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.ab, align 4, !range !46, !noalias !40, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40
  store i8 %i.ac, ptr %i.c, align 1, !noalias !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40
  store ptr %i.c, ptr %i.a, align 8, !noalias !40
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1_NtCs3bXQNzrqeHk_6chrono6formatNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !40
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @5, ptr noundef nonnull %i.a)
          to label %.noexc.i unwind label %bb.i, !noalias !40

.noexc.i:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40
  %i.ad = invoke noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.o unwind label %bb.i, !noalias !40

bb.l:                                             ; preds = %bb.j
  %.sroa.433.0.copyload.i = load ptr, ptr %i.ab, align 4, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40
  %i.ae = ptrtoint ptr %.sroa.433.0.copyload.i to i64
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i unwind label %bb.m, !noalias !40

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.n, !noalias !40

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7, !noalias !40
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc74 unwind label %bb.t

.noexc74:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40
  br label %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread

bb.o:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit40.i unwind label %bb.p, !noalias !40

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.q, !noalias !40

bb.q:                                             ; preds = %bb.p
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7, !noalias !40
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit40.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc75 unwind label %bb.t

.noexc75:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40
  br label %bb.z

bb.r:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7, !noalias !40
  unreachable

bb.s:                                             ; preds = %bb.a, %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread
  %.sroa.721.0 = phi ptr [ %i.ap, %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread ], [ undef, %bb.a ]
  %.sroa.7.0 = phi i32 [ %.sroa.9.0.ph, %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread ], [ undef, %bb.a ]
  %.sroa.014.0 = phi i32 [ %.sroa.0.0.ph, %_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread ], [ -1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  invoke void @_RNvNtNtCshMzyYDJGtjv_3api11conversions4json20json_path_from_proto(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.an)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit40.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i, %bb.e, %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.m, %bb.p, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %i.ah, %bb.p ], [ %i.af, %bb.m ], [ %i.y, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #8
          to label %common.resume unwind label %bb.ac

_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_.exit.thread: ; preds = %bb.d, %.noexc74, %bb.h, %bb.b
  %.sroa.12.0.ph = phi i64 [ %.sroa.6.sroa.0.0.copyload, %bb.b ], [ %i.x, %bb.h ], [ %i.ae, %.noexc74 ], [ %.sroa.6.sroa.0.0.copyload, %bb.d ]
  %.sroa.9.0.ph = phi i32 [ undef, %bb.b ], [ %.sroa.030.0.copyload.i, %bb.h ], [ %i.z, %.noexc74 ], [ undef, %bb.d ]
  %.sroa.0.0.ph = phi i32 [ 0, %bb.b ], [ 2, %bb.h ], [ 2, %.noexc74 ], [ 1, %bb.d ]
  %i.ap = inttoptr i64 %.sroa.12.0.ph to ptr
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  %i.aq = load i64, ptr %i.g, align 8, !range !4, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.035.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.563.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 %i.aq, ptr %0, align 8
  %.sroa.035.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %.sroa.035.sroa.5.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.014.0, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.sroa.7.0, ptr %.sroa.637.0..sroa_idx, align 4
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.721.0, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sroa.05.0, ptr %.sroa.8.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit77 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

common.resume:                                    ; preds = %.body, %bb.aa, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.aa ], [ %i.au, %bb.x ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit77: ; preds = %bb.w, %bb.z
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.z:                                             ; preds = %.noexc75, %bb.g, %bb.v
  %.sink = phi ptr [ %i.at, %bb.v ], [ %i.v, %bb.g ], [ %i.ad, %.noexc75 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.aw, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit77 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable

bb.ac:                                            ; preds = %.body
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #7
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsL_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB7_6qdrant10OrderValueE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  switch i64 %.sroa.0.0.copyload, label %3 [
    i64 2, label %bb.b
    i64 0, label %2
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 34, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !27, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !28, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.c, label %_RNCNvXsL_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB9_6qdrant10OrderValueE8try_from0Bb_.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #9
  unreachable

_RNCNvXsL_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB9_6qdrant10OrderValueE8try_from0Bb_.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = icmp samesign ugt i64 %i.f, 33
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.i, ptr noundef nonnull align 1 dereferenceable(34) @6, i64 34, i1 false)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 34, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.k = call noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(i8 noundef 3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %3, %_RNCNvXsL_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by10OrderValueINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtB9_6qdrant10OrderValueE8try_from0Bb_.exit
  ret void

2:                                                ; preds = %bb.a
  br label %3

3:                                                ; preds = %bb.a, %2
  %.sroa.015.0 = phi i64 [ 0, %2 ], [ 1, %bb.a ]
  store i64 %.sroa.015.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCshqfBqtY9aGF_8indexmap6BucketNtNtB7_6string6StringNtNtCs8O45qwFIwQX_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer11collect_strINtNvXNtNtCs3bXQNzrqeHk_6chrono8datetime5serdeINtB25_8DateTimepENtB12_9Serialize9serialize13FormatIso8601NtNtNtB27_6offset3utc3UtcEECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1_NtCs607s0NAIaWN_7segment9json_pathNtB6_8JsonPathNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer16serialize_struct(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs607s0NAIaWN_7segment9json_path8JsonPathECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9DirectionEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs607s0NAIaWN_7segment10data_types8order_by9StartFromEECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs3bXQNzrqeHk_6chrono6formatNtB5_10ParseErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtCsgOCJwUSa4vG_5tonic6statusNtB6_6Status3newNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api(i8 noundef range(i8 0, 17), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCshMzyYDJGtjv_3api4grpc11conversions24try_date_time_from_proto(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i64 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs607s0NAIaWN_7segment5typesNtB5_15DateTimeWrapperNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCshMzyYDJGtjv_3api11conversions4json20json_path_from_proto(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value4fromNtB6_5ValueINtNtCskKLDkoKarTP_4core7convert4FromdE4from(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCsjpNT60X9mgn_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtB8_5alloc5inner6GlobalECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshMzyYDJGtjv_3api: argument 0"}
!8 = distinct !{!8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECshMzyYDJGtjv_3api"}
!9 = !{i32 0, i32 3}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64: argument 0"}
!12 = distinct !{!12, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer13serialize_i64"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8order_bys8_1__NtB5_7OrderByNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api: argument 0"}
!15 = distinct !{!15, !"_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8order_bys8_1__NtB5_7OrderByNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api"}
!16 = !{!14, !17}
!17 = distinct !{!17, !15, !"_RINvXNvNtNtCs607s0NAIaWN_7segment10data_types8order_bys8_1__NtB5_7OrderByNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api: argument 1"}
!18 = !{!17}
!19 = !{i8 0, i8 2}
!20 = !{!21, !23, !24, !26}
!21 = distinct !{!21, !22, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api: argument 0"}
!22 = distinct !{!22, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api"}
!23 = distinct !{!23, !22, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api: argument 1"}
!24 = distinct !{!24, !25, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant: argument 0"}
!25 = distinct !{!25, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant"}
!26 = distinct !{!26, !25, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant: argument 1"}
!27 = !{i64 0, i64 2}
!28 = !{i64 0, i64 -9223372036854775807}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!21, !24}
!31 = !{!32, !34, !35, !37}
!32 = distinct !{!32, !33, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api: argument 0"}
!33 = distinct !{!33, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api"}
!34 = distinct !{!34, !33, !"_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECshMzyYDJGtjv_3api: argument 1"}
!35 = distinct !{!35, !36, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant: argument 0"}
!36 = distinct !{!36, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant"}
!37 = distinct !{!37, !36, !"_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant: argument 1"}
!38 = !{!32, !35}
!39 = !{i32 0, i32 2}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_: argument 0"}
!42 = distinct !{!42, !"_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_"}
!43 = distinct !{!43, !42, !"_RNCNvXs1L_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtNtCs607s0NAIaWN_7segment10data_types8order_by7OrderByINtNtCskKLDkoKarTP_4core7convert7TryFromNtNtBa_6qdrant7OrderByE8try_froms0_0Bc_: argument 1"}
!44 = !{!41}
!45 = !{i64 8}
!46 = !{i8 0, i8 8}
end_hunk_0
