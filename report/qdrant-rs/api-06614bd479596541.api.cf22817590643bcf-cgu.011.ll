Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.011?download=true
inline.NumInlined: 319
inline.NumDeleted: 191
begin_hunk_0_@_RINvXNvNtCs607s0NAIaWN_7segment5typess4v_1__NtB5_6FilterNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p
  br i1 %.not43, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %i.ab = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldNtNvXNvNtCs607s0NAIaWN_7segment5typess4v_1__NtB2g_6FilterNtB15_9Serialize9serializes0_15___SerializeWithECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.s unwind label %bb.z       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not51 = icmp eq ptr %i.ab, null
  br i1 %.not51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.x:                                             ; preds = %bb.t, %bb.o, %bb.k, %bb.f
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.f)
  br label %bb.w

bb.y:                                             ; preds = %bb.z
  resume { ptr, i32 } %lpad.thr_comm

bb.z:                                             ; preds = %bb.d, %bb.r, %bb.i, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.f) #15
          to label %bb.y unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs607s0NAIaWN_7segment5typess4y_1__NtB5_8ShardKeyNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !11, !noundef !5
  %i.b = trunc nuw i64 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  store i64 -9223372036854775806, ptr %0, align 8, !alias.scope !229
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !229
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !229
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvXNtNtCs9zPlAsQS9gd_4ecow6string5serdeNtB5_9EcoStringNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs607s0NAIaWN_7segment5typessi_1__NtB5_24QuantizationSearchParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !16, !noundef !5
  %.not = icmp eq i8 %i.e, 2                      ; 2 uses
  %. = select i1 %.not, i64 1, i64 2
  %i.f = load i64, ptr %1, align 8, !range !11, !noundef !5 ; 2 uses
  %.not30.not = icmp eq i64 %i.f, 0
  %i.g = add nuw nsw i64 %., %i.f
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 24, i64 noundef %i.g)
  %i.h = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldbECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.m)
          to label %bb.d unwind label %bb.o       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not31 = icmp eq ptr %i.n, null
  br i1 %.not31, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionbEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d)
          to label %bb.g unwind label %bb.o       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not32 = icmp eq ptr %i.o, null
  br i1 %.not32, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.g
  br i1 %.not30.not, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.k
  %.sink = phi ptr [ %i.q, %bb.k ], [ %i.n, %bb.d ], [ %i.o, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptiondEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.k unwind label %bb.o       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %.not33 = icmp eq ptr %i.q, null
  br i1 %.not33, label %bb.l, label %bb.i

bb.l:                                             ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.o:                                             ; preds = %bb.f, %bb.j, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #15
          to label %bb.n unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs607s0NAIaWN_7segment5typessl_1__NtB5_17AcornSearchParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %1, align 8, !range !11, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  %. = add nuw nsw i64 %i.d, 1
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 17, i64 noundef %.)
  %i.e = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.e, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldbECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j)
          to label %bb.d unwind label %bb.l       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %.not23 = icmp eq ptr %i.k, null
  br i1 %.not23, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionINtCs3EstPQUvMw7_13ordered_float12OrderedFloatdEEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.g unwind label %bb.l       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.l, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.l:                                             ; preds = %bb.c, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #15
          to label %bb.k unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs607s0NAIaWN_7segment5typesso_1__NtB5_12SearchParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 8 uses
  %i.c = alloca [96 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %1, align 8, !range !11, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noundef !5
  %.not47 = icmp ne i64 %i.f, 2                   ; 2 uses
  %.sroa.06.0 = zext i1 %.not47 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !14, !noundef !5
  %.not48 = icmp ne i64 %i.h, 2                   ; 2 uses
  %.sroa.07.0 = zext i1 %.not48 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !6, !noundef !5
  %.not49 = icmp ne i64 %i.j, -3                  ; 2 uses
  %.sroa.08.0 = zext i1 %.not49 to i64
  %2 = or disjoint i64 %i.d, 2
  %i.k = add nuw nsw i64 %2, %.sroa.06.0
  %i.l = add nuw nsw i64 %i.k, %.sroa.07.0
  %i.m = add nuw nsw i64 %i.l, %.sroa.08.0
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 12, i64 noundef %i.m)
  %i.n = load i64, ptr %i.b, align 8, !range !4, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %4 = load ptr, ptr %3, align 8, !nonnull !5, !align !8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %4, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.442.0.copyload = load ptr, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.543.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.442.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionjEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.e unwind label %bb.w       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.s = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldbECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r)
          to label %bb.g unwind label %bb.w       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not52 = icmp eq ptr %i.s, null
  br i1 %.not52, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  br i1 %.not47, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types24QuantizationSearchParamsEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.j unwind label %bb.w       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %.not54 = icmp eq ptr %i.t, null
  br i1 %.not54, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.v = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldbECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.u)
          to label %bb.l unwind label %bb.w       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %.not55 = icmp eq ptr %i.v, null
  br i1 %.not55, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  br i1 %.not48, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.w = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types17AcornSearchParamsEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.o unwind label %bb.w       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %.not57 = icmp eq ptr %i.w, null
  br i1 %.not57, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.o
  br i1 %.not49, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.x = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs607s0NAIaWN_7segment5types9IdfParamsEECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.i)
          to label %bb.r unwind label %bb.w       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not59 = icmp eq ptr %i.x, null
  br i1 %.not59, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.u:                                             ; preds = %bb.r, %bb.o, %bb.l, %bb.j, %bb.g, %bb.e
  %.sink = phi ptr [ %i.w, %bb.o ], [ %i.v, %bb.l ], [ %i.s, %bb.g ], [ %i.q, %bb.e ], [ %i.t, %bb.j ], [ %i.x, %bb.r ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c)
  br label %bb.t

bb.v:                                             ; preds = %bb.w
  resume { ptr, i32 } %lpad.thr_comm

bb.w:                                             ; preds = %bb.i, %bb.q, %bb.f, %bb.n, %bb.k, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #15
          to label %bb.v unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs607s0NAIaWN_7segment5typessr_1__NtB5_9IdfParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 9 uses
  %i.e = load i64, ptr %1, align 8, !range !17, !noundef !5
  %.not = icmp eq i64 %i.e, -2
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !239
  call void @_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 15, i64 noundef 1), !noalias !239
  %i.f = load i64, ptr %i.c, align 8, !range !4, !noalias !239, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !239 ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !239
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !238, !noalias !240
  store i64 -1, ptr %0, align 8, !alias.scope !238, !noalias !240
  br label %_RINvXNvNtCs607s0NAIaWN_7segment5typessx_1__NtB5_15IdfCorpusParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.512.0..sroa_idx.i, i64 80, i1 false), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !239
  store i64 %i.f, ptr %i.d, align 8, !noalias !239
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !239
  %i.k = invoke noundef align 8 ptr @_RINvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB6_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs607s0NAIaWN_7segment5types6FilterECshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
          to label %bb.e unwind label %bb.i, !noalias !238 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !238, !noalias !240
  store i64 -1, ptr %0, align 8, !alias.scope !238, !noalias !240
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.d), !noalias !238
  br label %_RINvXNvNtCs607s0NAIaWN_7segment5typessx_1__NtB5_15IdfCorpusParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !239
  call void @_RNvXs6_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB5_12SerializeMapNtNtCs4NSHK7GLW4I_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !239
  br label %_RINvXNvNtCs607s0NAIaWN_7segment5typessx_1__NtB5_15IdfCorpusParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.m

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs8O45qwFIwQX_10serde_json5value3ser12SerializeMapECshMzyYDJGtjv_3api(ptr noalias nofree noundef align 8 dereferenceable(96) %i.d) #15
          to label %bb.h unwind label %bb.j, !noalias !238

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !noalias !238
  unreachable

_RINvXNvNtCs607s0NAIaWN_7segment5typessx_1__NtB5_15IdfCorpusParamsNtNtCs4NSHK7GLW4I_10serde_core3ser9Serialize9serializeNtNtNtCs8O45qwFIwQX_10serde_json5value3ser10SerializerECshMzyYDJGtjv_3api.exit: ; preds = %bb.c, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !239
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !242
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !242
  %i.o = load i64, ptr %i.a, align 8, !range !11, !noalias !242, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !12, !noalias !242, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.l, label %_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.t = load i64, ptr %i.s, align 8, !noalias !242
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #18, !noalias !242
  unreachable

_RNvXs_NtNtCs8O45qwFIwQX_10serde_json5value3serNtB4_10SerializerNtNtCs4NSHK7GLW4I_10serde_core3ser10Serializer22serialize_unit_variant.exit: ; preds = %bb.k
  %i.u = load ptr, ptr %i.s, align 8, !noalias !242, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.r, 5
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !242
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.u, ptr noundef nonnull align 1 dereferenceable(6) @87, i64 6, i1 false), !noalias !243
  store i64 -9223372036854775805, ptr %0, align 8, !alias.scope !241
  %.sroa.4.0..sroa_idx.i1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i1, align 8, !alias.scope !241
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !241
end_hunk_0
