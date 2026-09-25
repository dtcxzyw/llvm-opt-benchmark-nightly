Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/api-06614bd479596541.api.cf22817590643bcf-cgu.000?download=true
inline.NumInlined: 2431
inline.NumDeleted: 607
begin_hunk_0_@_RNvXsiB_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21ListShardKeysResponseNtNtCs4J2qyOfMFpM_5prost7message7Message5clear:bb.a
bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshMzyYDJGtjv_3api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ShardKeyDescriptionEBH_.exit.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ShardKeyDescriptionEBH_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i.i.i, %.lr.ph.i
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ShardKeyDescriptionEBI_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph
  %i.m = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECshMzyYDJGtjv_3api.exit.i.i.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.j, %bb.c ]
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.e
  %.sroa.0.1.i22 = phi i64 [ %i.m, %bb.e ], [ %i.g, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i22
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ShardKeyDescriptionEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #20
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ShardKeyDescriptionEBI_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant19ShardKeyDescriptionEBH_.exit.i, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.s, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsiD_NtNtCshMzyYDJGtjv_3api4grpc6qdrantNtB6_21ListShardKeysResponseNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1253, i64 noundef 21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 10, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1254)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.a, align 8, !captures !45
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @260)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant9RawVectorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types7vectors17NamedVectorStructE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %.sroa.45.i = alloca [40 x i8], align 8         ; 7 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsB_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_17NamedVectorStruct9to_vector(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4656)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.b = load i64, ptr %i.a, align 8, !range !41, !alias.scope !4656, !noalias !4655, !noundef !8 ; 3 uses
  %i.c = icmp ne i64 %i.b, -9223372036854775807
  tail call void @llvm.assume(i1 %i.c)
  %i.d = xor i64 %i.b, -9223372036854775808
  %i.e = icmp slt i64 %i.b, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !4655
  br label %_RNvXsg_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant9RawVectorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalE4from.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.08.0.copyload.i = load i64, ptr %i.h, align 8, !alias.scope !4656, !noalias !4655
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.49.0..sroa_idx.i, i64 16, i1 false), !noalias !4655
  %.sroa.45.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.45.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 24, i1 false), !noalias !4655
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !4655
  br label %_RNvXsg_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant9RawVectorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalE4from.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @_RNvXse_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant16MultiDenseVectorINtNtCskKLDkoKarTP_4core7convert4FromINtNtNtCs607s0NAIaWN_7segment10data_types7vectors21TypedMultiDenseVectorfEE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.45.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.j), !noalias !4655
  br label %_RNvXsg_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant9RawVectorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalE4from.exit

_RNvXsg_NtNtCshMzyYDJGtjv_3api11conversions7vectorsNtNtNtB9_4grpc6qdrant9RawVectorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types7vectors14VectorInternalE4from.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ -9223372036854775808, %bb.c ], [ %.sroa.08.0.copyload.i, %bb.d ], [ -9223372036854775806, %bb.e ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !alias.scope !4655, !noalias !4656
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45.i, i64 24, i1 false), !noalias !4656
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !4656
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant18PayloadIndexParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types19PayloadSchemaParamsE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !32, !noundef !8 ; 3 uses
  %i.b = icmp ne i64 %i.a, 6
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %switch.lookup
    i64 4, label %bb.f
    i64 5, label %switch.lookup89
    i64 6, label %bb.g
    i64 7, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.039.0.copyload = load i40, ptr %i.f, align 8 ; 5 uses
  %.sroa.02.4.extract.shift.i = lshr i40 %.sroa.039.0.copyload, 32 ; 2 uses
  %.not.i = icmp ne i40 %.sroa.02.4.extract.shift.i, 255 ; 2 uses
  %trunc.i = trunc nuw nsw i40 %.sroa.02.4.extract.shift.i to i32
  %switch.offset.i = add nuw nsw i32 %trunc.i, 1
  %.sroa.018.0.i = zext i1 %.not.i to i32
  %.sroa.519.0.i = select i1 %.not.i, i32 %switch.offset.i, i32 undef
  %i.g = lshr i40 %.sroa.039.0.copyload, 24
  %i.h = trunc i40 %i.g to i8
  %..i = and i8 %i.h, 1
  %.sroa.02.2.extract.shift.i = lshr i40 %.sroa.039.0.copyload, 16
  %.sroa.02.2.extract.trunc.i = trunc i40 %.sroa.02.2.extract.shift.i to i8
  %.sroa.02.1.extract.shift.i = lshr i40 %.sroa.039.0.copyload, 8
  %.sroa.02.1.extract.trunc.i = trunc i40 %.sroa.02.1.extract.shift.i to i8
  %.sroa.02.0.extract.trunc.i = trunc i40 %.sroa.039.0.copyload to i8
  store i64 2, ptr %0, align 8, !alias.scope !4667
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.018.0.i, ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !4667
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.519.0.i, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !4667
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %..i, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4667
  %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.02.0.extract.trunc.i, ptr %.sroa.411.sroa.6.0..sroa.411.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !4667
  %.sroa.411.sroa.7.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.02.1.extract.trunc.i, ptr %.sroa.411.sroa.7.0..sroa.411.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !4667
  %.sroa.411.sroa.8.0..sroa.411.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.02.2.extract.trunc.i, ptr %.sroa.411.sroa.8.0..sroa.411.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !4667
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.042.0.copyload = load i48, ptr %i.i, align 8 ; 3 uses
  %.sroa.01.5.extract.shift.i = lshr i48 %.sroa.042.0.copyload, 40 ; 2 uses
  %.not.i47 = icmp ne i48 %.sroa.01.5.extract.shift.i, 255 ; 2 uses
  %trunc.i48 = trunc nuw nsw i48 %.sroa.01.5.extract.shift.i to i32
  %switch.offset.i49 = add nuw nsw i32 %trunc.i48, 1
  %.sroa.015.0.i = zext i1 %.not.i47 to i32
  %.sroa.516.0.i = select i1 %.not.i47, i32 %switch.offset.i49, i32 undef
  %.sroa.01.1.extract.shift.i = lshr i48 %.sroa.042.0.copyload, 32
  %.sroa.01.0.extract.trunc.i = trunc i48 %.sroa.01.1.extract.shift.i to i8
  store i64 3, ptr %0, align 8, !alias.scope !4668
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.015.0.i, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !4668
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.516.0.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !4668
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = bitcast i48 %.sroa.042.0.copyload to <6 x i8>
  %3 = shufflevector <6 x i8> %2, <6 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %3, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4668
  %.sroa.48.sroa.9.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.01.0.extract.trunc.i, ptr %.sroa.48.sroa.9.0..sroa.48.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !4668
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 8 ; 4 uses
  %.sroa.6.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload, 24 ; 2 uses
  %.not.i50 = icmp ne i32 %.sroa.6.0.extract.shift.i, 255 ; 2 uses
  %switch.offset.i51 = add nuw nsw i32 %.sroa.6.0.extract.shift.i, 1
  %.sroa.015.0.i52 = zext i1 %.not.i50 to i32
  %.sroa.516.0.i53 = select i1 %.not.i50, i32 %switch.offset.i51, i32 undef
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload, 16
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.42.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload, 8
  %.sroa.42.0.extract.trunc.i = trunc i32 %.sroa.42.0.extract.shift.i to i8
  %.sroa.01.0.extract.trunc.i54 = trunc i32 %.sroa.0.0.copyload to i8
  store i64 4, ptr %0, align 8, !alias.scope !4669
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.015.0.i52, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !4669
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.516.0.i53, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i, align 4, !alias.scope !4669
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.42.0.extract.trunc.i, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4669
  %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.01.0.extract.trunc.i54, ptr %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !4669
  %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.5.0.extract.trunc.i, ptr %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i, align 2, !alias.scope !4669
  br label %bb.i

switch.lookup:                                    ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !46, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.n = load i8, ptr %i.m, align 2, !range !24, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.p = load i8, ptr %i.o, align 1, !range !46, !noundef !8
  %switch.tableidx = add nsw i8 %i.n, 1           ; 2 uses
  %i.q = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsi_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant18PayloadIndexParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types19PayloadSchemaParamsE4from.140, i64 %i.q
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.r = zext nneg i8 %switch.tableidx to i64
  %switch.gep85 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsi_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant18PayloadIndexParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types19PayloadSchemaParamsE4from.141, i64 %i.r
  %switch.load86 = load i8, ptr %switch.gep85, align 1
  %switch.ext87 = zext i8 %switch.load86 to i32
  store i64 5, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %switch.ext87, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %switch.ext, ptr %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx, align 4
  %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.l, ptr %.sroa.419.sroa.5.0..sroa.419.0..sroa_idx.sroa_idx, align 8
  %.sroa.419.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.p, ptr %.sroa.419.sroa.6.0..sroa.419.0..sroa_idx.sroa_idx, align 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvXs8_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant18PayloadIndexParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCs607s0NAIaWN_7segment10data_types5index15TextIndexParamsE4from(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1)
  br label %bb.i

switch.lookup89:                                  ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !46, !noundef !8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.v = load i8, ptr %i.u, align 2, !range !24, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.x = load i8, ptr %i.w, align 1, !range !46, !noundef !8
  %switch.tableidx88 = add nsw i8 %i.v, 1         ; 2 uses
  %i.y = zext nneg i8 %switch.tableidx88 to i64
  %switch.gep90 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsi_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant18PayloadIndexParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types19PayloadSchemaParamsE4from.140, i64 %i.y
  %switch.load91 = load i8, ptr %switch.gep90, align 1
  %switch.ext92 = zext i8 %switch.load91 to i32
  %i.z = zext nneg i8 %switch.tableidx88 to i64
  %switch.gep93 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsi_NtNtCshMzyYDJGtjv_3api4grpc11conversionsNtNtB7_6qdrant18PayloadIndexParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtCs607s0NAIaWN_7segment5types19PayloadSchemaParamsE4from.141, i64 %i.z
  %switch.load94 = load i8, ptr %switch.gep93, align 1
  %switch.ext95 = zext i8 %switch.load94 to i32
  store i64 7, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %switch.ext95, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %switch.ext92, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx, align 4
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.t, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx, align 8
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.x, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.aa, align 8 ; 4 uses
  %.sroa.6.0.extract.shift.i55 = lshr i32 %.sroa.02.0.copyload, 24 ; 2 uses
  %.not.i56 = icmp ne i32 %.sroa.6.0.extract.shift.i55, 255 ; 2 uses
  %switch.offset.i57 = add nuw nsw i32 %.sroa.6.0.extract.shift.i55, 1
  %.sroa.015.0.i58 = zext i1 %.not.i56 to i32
  %.sroa.516.0.i59 = select i1 %.not.i56, i32 %switch.offset.i57, i32 undef
  %.sroa.5.0.extract.shift.i60 = lshr i32 %.sroa.02.0.copyload, 16
  %.sroa.5.0.extract.trunc.i61 = trunc i32 %.sroa.5.0.extract.shift.i60 to i8
  %.sroa.42.0.extract.shift.i62 = lshr i32 %.sroa.02.0.copyload, 8
  %.sroa.42.0.extract.trunc.i63 = trunc i32 %.sroa.42.0.extract.shift.i62 to i8
  %.sroa.01.0.extract.trunc.i64 = trunc i32 %.sroa.02.0.copyload to i8
  store i64 8, ptr %0, align 8, !alias.scope !4670
  %.sroa.49.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.015.0.i58, ptr %.sroa.49.0..sroa_idx.i65, align 8, !alias.scope !4670
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.516.0.i59, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i66, align 4, !alias.scope !4670
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.42.0.extract.trunc.i63, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i67, align 8, !alias.scope !4670
  %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.01.0.extract.trunc.i64, ptr %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i68, align 1, !alias.scope !4670
  %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.5.0.extract.trunc.i61, ptr %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i69, align 2, !alias.scope !4670
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.04.0.copyload = load i32, ptr %i.ab, align 8 ; 4 uses
  %.sroa.6.0.extract.shift.i70 = lshr i32 %.sroa.04.0.copyload, 24 ; 2 uses
  %.not.i71 = icmp ne i32 %.sroa.6.0.extract.shift.i70, 255 ; 2 uses
  %switch.offset.i72 = add nuw nsw i32 %.sroa.6.0.extract.shift.i70, 1
  %.sroa.015.0.i73 = zext i1 %.not.i71 to i32
  %.sroa.516.0.i74 = select i1 %.not.i71, i32 %switch.offset.i72, i32 undef
  %.sroa.5.0.extract.shift.i75 = lshr i32 %.sroa.04.0.copyload, 16
  %.sroa.5.0.extract.trunc.i76 = trunc i32 %.sroa.5.0.extract.shift.i75 to i8
  %.sroa.42.0.extract.shift.i77 = lshr i32 %.sroa.04.0.copyload, 8
  %.sroa.42.0.extract.trunc.i78 = trunc i32 %.sroa.42.0.extract.shift.i77 to i8
  %.sroa.01.0.extract.trunc.i79 = trunc i32 %.sroa.04.0.copyload to i8
  store i64 9, ptr %0, align 8, !alias.scope !4671
  %.sroa.49.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.015.0.i73, ptr %.sroa.49.0..sroa_idx.i80, align 8, !alias.scope !4671
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.516.0.i74, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i81, align 4, !alias.scope !4671
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.01.0.extract.trunc.i79, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i82, align 8, !alias.scope !4671
  %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.42.0.extract.trunc.i78, ptr %.sroa.49.sroa.6.0..sroa.49.0..sroa_idx.sroa_idx.i83, align 1, !alias.scope !4671
  %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.5.0.extract.trunc.i76, ptr %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i84, align 2, !alias.scope !4671
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup89, %switch.lookup, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsi_NtNtCshMzyYDJGtjv_3api4grpc8validateNtNtB7_6qdrant14FieldConditionNtNtCs1cB7FFWPEsq_9validator6traits8Validate8validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 3 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.g = load i8, ptr %i.f, align 8, !range !28, !noundef !8
  %.not = icmp eq i8 %i.g, -2
  %i.h = load i64, ptr %1, align 8, !range !12
  %.not2 = icmp eq i64 %i.h, 2
  %or.cond = select i1 %.not, i1 %.not2, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = load i64, ptr %i.i, align 8, !range !12
  %.not3 = icmp eq i64 %i.j, 2
  %or.cond13 = select i1 %or.cond, i1 %.not3, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !12
  %.not4 = icmp eq i64 %i.l, 2                    ; 2 uses
  %or.cond15 = select i1 %or.cond13, i1 %.not4, i1 false
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !12
  %.not5 = icmp eq i64 %i.n, 2                    ; 2 uses
  %or.cond17 = select i1 %or.cond15, i1 %.not5, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !7
  %.not6 = icmp eq i64 %i.p, -1                   ; 2 uses
  %or.cond19 = select i1 %or.cond17, i1 %.not6, i1 false
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load i64, ptr %i.q, align 8, !range !12
  %.not7 = icmp eq i64 %i.r, 2
  %or.cond21 = select i1 %or.cond19, i1 %.not7, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.t = load i8, ptr %i.s, align 8, !range !46
  %.not8 = icmp eq i8 %i.t, 2
  %or.cond23 = select i1 %or.cond21, i1 %.not8, i1 false
  br i1 %or.cond23, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 409
  %i.v = load i8, ptr %i.u, align 1, !range !46, !noundef !8
  %i.w = icmp eq i8 %i.v, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtCs1cB7FFWPEsq_9validator5typesNtB5_16ValidationErrors3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e)
  br i1 %i.w, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs0_NtCs1cB7FFWPEsq_9validator5typesNtB5_16ValidationErrors3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e)
  br i1 %.not4, label %.thread, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs1cB7FFWPEsq_9validator5typesNtB2_15ValidationError3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1255, i64 noundef 46)
          to label %bb.f unwind label %bb.e

end_hunk_0
