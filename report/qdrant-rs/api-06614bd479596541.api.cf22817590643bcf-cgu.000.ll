Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.000?download=true
inline.NumInlined: 2431
inline.NumDeleted: 607
begin_hunk_0_@_RNvXsDo_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_11PointStructNtNtCs4J2qyOfMFpM_5prost7message7Message5clear:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !13, !alias.scope !3539, !noundef !8
  %i.c = icmp ugt i64 %i.b, -4
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  store i64 -3, ptr %i.a, align 8
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i
  store i64 -3, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEE5clearB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = load i64, ptr %0, align 8, !range !16, !alias.scope !3540, !noundef !8
  switch i64 %i.h, label %bb.f [
    i64 -4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7VectorsEEB13_.exit
    i64 -3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7VectorsEEB13_.exit
    i64 -2, label %bb.g
  ]

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7VectorsEEB13_.exit unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant6VectorEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7VectorsEEB13_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  store i64 -4, ptr %0, align 8
  br label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7VectorsEEB13_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit, %bb.f, %bb.g
  store i64 -4, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.h, %.body
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsDp_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_11PointStructNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -3, ptr %i.a, align 8
  %i.b = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshMzyYDJGtjv_3api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @110)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #20
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.b, 0
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.d, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.e, ptr %.sroa.55.0..sroa_idx, align 8
  store i64 -4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsDq_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_11PointStructNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 2, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @596)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @597)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsDu_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_5UsageNtNtCs4J2qyOfMFpM_5prost7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(112) initializes((0, 8)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3543, !noundef !8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14InferenceUsageEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10ModelUsageEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14InferenceUsageEEB13_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8
  resume { ptr, i32 } %i.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant14InferenceUsageEEB13_.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsDw_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_5UsageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @598, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @600, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @599)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @602, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @601)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsE_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant12SearchParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types12SearchParamsE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) initializes((0, 34), (40, 57), (64, 170)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(176) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 3 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !31, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load i8, ptr %i.f, align 8, !range !49, !noundef !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.02.0.copyload = load i64, ptr %i.h, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.j = load i8, ptr %i.i, align 1, !range !49, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.04.0.copyload = load i64, ptr %i.k, align 8 ; 3 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.56.0.copyload = load double, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.67.0.copyload = load i8, ptr %.sroa.67.0..sroa_idx, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.09.0.copyload = load i64, ptr %i.l, align 8 ; 3 uses
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.not = icmp eq i64 %.sroa.02.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = icmp ult i8 %.sroa.6.0.copyload, 2
  tail call void @llvm.assume(i1 %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.517.sroa.5.0 = phi i8 [ %.sroa.7.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.517.sroa.4.0 = phi i8 [ %.sroa.6.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.517.sroa.0.0 = phi double [ %.sroa.5.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.not41 = icmp eq i64 %.sroa.04.0.copyload, 2
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = icmp ult i8 %.sroa.67.0.copyload, 2
  tail call void @llvm.assume(i1 %2)
  %3 = trunc nuw i64 %.sroa.04.0.copyload to i1
  %.sroa.56.0.copyload. = select i1 %3, double %.sroa.56.0.copyload, double undef
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.521.sroa.4.0 = phi i8 [ %.sroa.67.0.copyload, %bb.d ], [ undef, %bb.c ]
  %.sroa.521.sroa.0.0 = phi double [ %.sroa.56.0.copyload., %bb.d ], [ undef, %bb.c ]
  %.not42 = icmp eq i64 %.sroa.09.0.copyload, -3
  br i1 %.not42, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.09.0.copyload, ptr %i.b, align 8
  %.sroa.511.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.511.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.511.0..sroa_idx, i64 96, i1 false)
  %.not.i = icmp eq i64 %.sroa.09.0.copyload, -2
  br i1 %.not.i, label %_RNvXsG_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant9IdfParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types9IdfParamsE4from.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvXs1d_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB8_6qdrant6FilterINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types6FilterE4from(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.b)
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8
  br label %_RNvXsG_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant9IdfParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types9IdfParamsE4from.exit

_RNvXsG_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant9IdfParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types9IdfParamsE4from.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.copyload.sink.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.g ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_RNvXsG_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant9IdfParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types9IdfParamsE4from.exit
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.copyload.sink.i, %_RNvXsG_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant9IdfParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types9IdfParamsE4from.exit ], [ -2, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = trunc nuw i64 %i.c to i1
  %. = select i1 %i.o, i64 %i.e, i64 undef
  store i64 %i.c, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %., ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 %i.g, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.0.copyload, ptr %i.r, align 8
  %.sroa.517.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.517.sroa.0.0, ptr %.sroa.517.0..sroa_idx18, align 8
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx18.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.517.sroa.4.0, ptr %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx18.sroa_idx, align 8
  %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx18.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.517.sroa.5.0, ptr %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx18.sroa_idx, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.j, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.04.0.copyload, ptr %i.t, align 8
  %.sroa.521.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.521.sroa.0.0, ptr %.sroa.521.0..sroa_idx22, align 8
  %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx22.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.521.sroa.4.0, ptr %.sroa.521.sroa.4.0..sroa.521.0..sroa_idx22.sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.023.0, ptr %i.u, align 8
  %.sroa.525.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.525.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(96) %i.n, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsF_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB5_5ValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @603)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsG2_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_14PointStructRawNtNtCs4J2qyOfMFpM_5prost7message7Message5clear(ptr noalias nofree noundef align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !range !13, !alias.scope !3548, !noundef !8
  %i.c = icmp ugt i64 %i.b, -4
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  store i64 -3, ptr %i.a, align 8
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i
  store i64 -3, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VechEEE5clearCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant5ValueEE5clearB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.i = load i64, ptr %0, align 8, !range !7, !alias.scope !3549, !noundef !8
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10RawPayloadEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10RawPayloadEBH_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.body9 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10RawPayloadEBH_.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10RawPayloadEEB13_.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10RawPayloadEBH_.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body9

.body9:                                           ; preds = %bb.g, %bb.i
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.k, %bb.g ]
  store i64 -1, ptr %0, align 8
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10RawPayloadEEB13_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant10RawPayloadEBH_.exit.i
  store i64 -1, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %.body9, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body10, %.body9 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsG3_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_14PointStructRawNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -3, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshMzyYDJGtjv_3api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @110)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1z_3vec3VechEEECshMzyYDJGtjv_3api.exit: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.d, %bb.b ], [ %i.h, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant7PointIdEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.g unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1z_3vec3VechEEECshMzyYDJGtjv_3api.exit

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.c, 0
  %i.f = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.e, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECshMzyYDJGtjv_3api(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @110)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtBT_3vec3VechEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1z_3vec3VechEEECshMzyYDJGtjv_3api.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i64 } %i.g, 0
  %i.j = extractvalue { i64, i64 } %i.g, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.i, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.j, ptr %.sroa.58.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1z_3vec3VechEEECshMzyYDJGtjv_3api.exit
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringINtNtB1z_3vec3VechEEECshMzyYDJGtjv_3api.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsG4_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_14PointStructRawNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @604, i64 noundef 14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 2, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @515)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.h, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @605, ptr %i.i, align 8
end_hunk_0
