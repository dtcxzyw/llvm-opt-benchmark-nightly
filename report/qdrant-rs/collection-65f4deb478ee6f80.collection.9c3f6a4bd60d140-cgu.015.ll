Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.015?download=true
inline.NumInlined: 1805
inline.NumDeleted: 1262
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXsb_NtNtCsPYQCUnoTxQ_10collection9telemetry20internal_conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant20RemoteShardTelemetryINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB9_6shards9telemetry20RemoteShardTelemetryE4from:bb.a
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(104) %i.k) #19
          to label %common.resume.i unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEECsPYQCUnoTxQ_10collection.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsECsPYQCUnoTxQ_10collection.exit.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i64, ptr %i.l, align 8, !range !6, !alias.scope !3229, !noundef !5
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards9telemetry20RemoteShardTelemetryEBH_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEECsPYQCUnoTxQ_10collection.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTfjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsECsPYQCUnoTxQ_10collection.exit.i2.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTfjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume.i:                                  ; preds = %bb.g, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsECsPYQCUnoTxQ_10collection.exit.i2.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTfjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards9telemetry20RemoteShardTelemetryEBH_.exit

bb.i:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards9telemetry20RemoteShardTelemetryEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsEECsPYQCUnoTxQ_10collection.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment6common25operation_time_statistics27OperationDurationStatisticsECsPYQCUnoTxQ_10collection.exit.i2.i
  %i.s = insertvalue { i64, i32 } poison, i64 %i.d, 0
  %i.t = insertvalue { i64, i32 } %i.s, i32 %i.b, 1
  ret { i64, i32 } %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXse8_NtCs607s0NAIaWN_7segment5typesNtB6_6FilterNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = load i64, ptr %1, align 8, !range !4, !noundef !5
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !4, !noundef !5
  %.not4 = icmp eq i64 %i.i, -1
  br i1 %.not4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.j unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  store i64 -1, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !4, !noundef !5
  %.not5 = icmp eq i64 %i.k, -1
  br i1 %.not5, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.l, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #19
          to label %bb.v unwind label %bb.u

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3234, !noalias !3233, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.n, ptr %i.o, align 8, !alias.scope !3233, !noalias !3234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.p unwind label %bb.o

bb.l:                                             ; preds = %bb.g
  store i64 -1, ptr %i.d, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !4, !noundef !5
  %.not6 = icmp eq i64 %i.q, -1
  br i1 %.not6, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.s, %bb.o
  %.pn = phi { ptr, i32 } [ %i.v, %bb.s ], [ %i.r, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types9MinShouldEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #19
          to label %bb.h unwind label %bb.u

bb.o:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types9ConditionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.t
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.t ], [ -1, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.0.0, ptr %i.u, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %bb.q
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types9ConditionEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.n unwind label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.u:                                             ; preds = %bb.s, %bb.n, %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.v:                                             ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsj_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5types18SparseVectorParamsE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #3 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !22, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.b, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 18
  %.sroa.5.sroa.6.0.copyload = load i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.4.0.copyload = load i8, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 17
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %switch.tableidx = add nsw i8 %.sroa.5.sroa.5.0.copyload, 1 ; 2 uses
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsj_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5types18SparseVectorParamsE4from, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep21 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsj_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5types18SparseVectorParamsE4from.203, i64 %i.d
  %switch.load22 = load i8, ptr %switch.gep21, align 1
  %switch.ext23 = zext i8 %switch.load22 to i32
  %switch.tableidx24 = add nsw i8 %.sroa.5.sroa.6.0.copyload, 1 ; 2 uses
  %i.e = zext nneg i8 %switch.tableidx24 to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsj_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5types18SparseVectorParamsE4from.204, i64 %i.e
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %switch.ext28 = zext i8 %switch.load27 to i32
  %i.f = zext nneg i8 %switch.tableidx24 to i64
  %switch.gep29 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsj_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant18SparseVectorParamsINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5types18SparseVectorParamsE4from.205, i64 %i.f
  %switch.load30 = load i8, ptr %switch.gep29, align 1
  %switch.ext31 = zext i8 %switch.load30 to i32
  %i.g = trunc nuw i64 %.sroa.0.0.copyload to i1
  %.sroa.5.0.i = select i1 %i.g, i64 %.sroa.5.sroa.0.0.copyload, i64 undef
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.57.sroa.8.0 = phi i8 [ undef, %bb.a ], [ %.sroa.5.sroa.4.0.copyload, %switch.lookup ]
  %.sroa.57.sroa.7.0 = phi i32 [ undef, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.sroa.57.sroa.6.0 = phi i32 [ undef, %bb.a ], [ %switch.ext23, %switch.lookup ]
  %.sroa.57.sroa.5.0 = phi i32 [ undef, %bb.a ], [ %switch.ext28, %switch.lookup ]
  %.sroa.57.sroa.4.0 = phi i32 [ undef, %bb.a ], [ %switch.ext31, %switch.lookup ]
  %.sroa.57.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %.sroa.5.0.i, %switch.lookup ]
  %switch.selectcmp = icmp eq i8 %i.b, 0
  %switch.select = select i1 %switch.selectcmp, <2 x i32> <i32 1, i32 0>, <2 x i32> splat (i32 1)
  %switch.selectcmp32 = icmp eq i8 %i.b, 2
  %switch.select33 = select i1 %switch.selectcmp32, <2 x i32> <i32 0, i32 undef>, <2 x i32> %switch.select
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.57.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.57.sroa.0.0, ptr %.sroa.57.0..sroa_idx8, align 8
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.57.sroa.4.0, ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx8.sroa_idx, align 8
  %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.57.sroa.5.0, ptr %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx8.sroa_idx, align 4
  %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.57.sroa.6.0, ptr %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx8.sroa_idx, align 8
  %.sroa.57.sroa.7.0..sroa.57.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.57.sroa.7.0, ptr %.sroa.57.sroa.7.0..sroa.57.0..sroa_idx8.sroa_idx, align 4
  %.sroa.57.sroa.8.0..sroa.57.0..sroa_idx8.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.57.sroa.8.0, ptr %.sroa.57.sroa.8.0..sroa.57.0..sroa_idx8.sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %switch.select33, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsm_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12UpdateResultINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5types12UpdateResultE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !35, !alias.scope !3238, !noalias !3239, !noundef !5
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsm_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant12UpdateResultINtNtCskKLDkoKarTP_4core7convert4FromNtNtB7_5types12UpdateResultE4from, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.d = load <2 x i64>, ptr %1, align 8, !alias.scope !3238, !noalias !3239
  store <2 x i64> %i.d, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %switch.ext, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXst_NtNtCsPYQCUnoTxQ_10collection10operations11conversionsNtNtNtCshMzyYDJGtjv_3api4grpc6qdrant16CoreSearchPointsINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB9_6shards12remote_shard27CollectionCoreSearchRequestE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([648 x i8]) align 8 captures(none) dereferenceable(648) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %.sroa.57.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.53.i = alloca [16 x i8], align 8         ; 4 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i33.i = alloca [16 x i8], align 8      ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i27.i = alloca [16 x i8], align 8      ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i19.i = alloca [16 x i8], align 8      ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i9.i = alloca [16 x i8], align 8       ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i1.i = alloca [16 x i8], align 8       ; 4 uses
  %i.y = alloca [48 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 10 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [176 x i8], align 8              ; 4 uses
  %i.ag = alloca [176 x i8], align 8              ; 13 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.723 = alloca [15 x i8], align 1          ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [104 x i8], align 8              ; 4 uses
  %i.am = alloca [104 x i8], align 8              ; 4 uses
  %i.an = alloca [104 x i8], align 8              ; 4 uses
  %i.ao = alloca [176 x i8], align 8              ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 8 uses
  %i.ar = alloca [104 x i8], align 8              ; 6 uses
  %i.as = alloca [112 x i8], align 8              ; 26 uses
  %i.at = alloca [216 x i8], align 8              ; 4 uses
  %i.au = alloca [216 x i8], align 8              ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !17, !noundef !5 ; 57 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 336 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i33.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i27.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i1.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.az = load i64, ptr %i.ay, align 8, !range !3307, !alias.scope !3306, !noalias !3305, !noundef !5 ; 2 uses
  %i.ba = xor i64 %i.az, -9223372036854775808
  %i.bb = icmp slt i64 %i.az, 0
  %i.bc = select i1 %i.bb, i64 %i.ba, i64 5
  switch i64 %i.bc, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.n
    i64 2, label %bb.u
    i64 3, label %bb.ab
    i64 4, label %bb.ao
    i64 5, label %bb.at
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 344 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3309
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3311)
  %i.bf = load i64, ptr %i.be, align 8, !range !16, !alias.scope !3312, !noalias !3313, !noundef !5 ; 3 uses
  %i.bg = icmp ne i64 %i.bf, -9223372036854775807
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = xor i64 %i.bf, -9223372036854775808
  %i.bi = icmp slt i64 %i.bf, 0
  %i.bj = select i1 %i.bi, i64 %i.bh, i64 1
  switch i64 %i.bj, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 376
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk)
          to label %.noexc unwind label %bb.bg

.noexc:                                           ; preds = %bb.e
  store i64 -9223372036854775808, ptr %i.ad, align 8, !alias.scope !3310, !noalias !3314
  br label %_RNvXsS_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_14VectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !3315
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.be)
          to label %.noexc56 unwind label %bb.bg

.noexc56:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3315
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 392
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
          to label %_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.g, !noalias !3316

bb.g:                                             ; preds = %.noexc56
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #19
          to label %.body unwind label %bb.h, !noalias !3316

bb.h:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !3316
  unreachable

_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !3317
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !noalias !3314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RNvXsS_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_14VectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 376
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecfENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq)
          to label %.noexc57 unwind label %bb.bg

.noexc57:                                         ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 400
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !3312, !noalias !3313, !noundef !5
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 %i.bt, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3310, !noalias !3314
  store i64 -9223372036854775806, ptr %i.ad, align 8, !alias.scope !3310, !noalias !3314
  br label %_RNvXsS_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_14VectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXsS_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_14VectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %.noexc57, %_RNvXs9_NtNtCs4ByaKcm8ifS_6sparse6common13sparse_vectorNtB5_12SparseVectorNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %.noexc
  %i.bu = load i64, ptr %i.bd, align 8, !range !4, !alias.scope !3318, !noalias !3319, !noundef !5
  %.not.i.i = icmp eq i64 %i.bu, -1
  br i1 %.not.i.i, label %_RNvXs1C_NtNtCs607s0NAIaWN_7segment10data_types7vectorsINtB6_10NamedQueryNtB6_14VectorInternalENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsPYQCUnoTxQ_10collection.exit.i, label %bb.j

bb.j:                                             ; preds = %_RNvXsS_NtNtCs607s0NAIaWN_7segment10data_types7vectorsNtB5_14VectorInternalNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3309
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bd)
          to label %bb.l unwind label %bb.k, !noalias !3319
end_hunk_0
