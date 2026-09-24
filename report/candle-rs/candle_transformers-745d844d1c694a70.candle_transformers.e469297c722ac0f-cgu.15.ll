Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.15?download=true
inline.NumInlined: 3310
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvMs3_NtCsltEA4u8Pgfu_11candle_core9streamingNtB6_12StreamTensor5splitNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.f

bb.w:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core9streaming12StreamTensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.q, %bb.r
  resume { ptr, i32 } %i.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtCsltEA4u8Pgfu_11candle_core9streamingNtB6_12StreamTensor6narrowNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef range(i64 0, 3) %2, i64 %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = load ptr, ptr %1, align 8, !noundef !4   ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %2, ptr %i.b, align 8, !noalias !4453
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.e, align 8, !noalias !4453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4453
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @_RNvXs8_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_1DNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 3), !noalias !4453
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noalias !4453, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !4453 ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4453
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noalias !4453, !noundef !4 ; 2 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !4453
  unreachable

bb.e:                                             ; preds = %bb.g, %bb.a, %bb.j
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.v, %bb.j ], [ null, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.m, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.511.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.424.0..sroa_idx, align 8
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !4453, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !4453, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not37 = icmp ugt i64 %i.q, %4
  br i1 %.not37, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = sub nuw i64 %i.q, %4
  %i.s = call i64 @llvm.umin.i64(i64 %5, i64 %i.r)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6narrowNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %2, i64 %3, i64 noundef %4, i64 noundef %i.s)
  %i.t = load i64, ptr %i.c, align 8, !range !10, !noundef !4 ; 2 uses
  %.not38 = icmp eq i64 %i.t, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  br i1 %.not38, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.531.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.t, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueAINtNtCsgCecv3eZDcN_5alloc3vec3VecjEj2_ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i.1 unwind label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i.1: ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.a
  %.lcssa16 = phi ptr [ %0, %bb.a ], [ %i.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i ]
  %.lcssa = phi i64 [ 1, %bb.a ], [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i ]
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.lcssa16)
          to label %.body.i unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.d
  %.lcssa15 = phi i64 [ 1, %bb.d ], [ 2, %bb.b ]
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.c
  %i.e = phi i64 [ %.lcssa15, %bb.f ], [ %.lcssa, %bb.c ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.b, %bb.c ]
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.body.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #24
          to label %.loopexit.i unwind label %bb.h

.loopexit.i:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.h:                                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerj1_ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4464)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !4465, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, 9223372036854775764
  %i.c = icmp ugt i64 %i.a, -9223372036854775765
  %i.d = select i1 %i.c, i64 %i.b, i64 3
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4468)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4469, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4470
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.b, %bb.d, %bb.a, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerj2_ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4485)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !4486, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, 9223372036854775764
  %i.c = icmp ugt i64 %i.a, -9223372036854775765
  %i.d = select i1 %i.c, i64 %i.b, i64 3
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4489)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4490, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4491
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4492)
  %i.j = load i64, ptr %i.i, align 8, !range !21, !alias.scope !4493, !noundef !4 ; 2 uses
  %i.k = add nsw i64 %i.j, 9223372036854775764
  %i.l = icmp ugt i64 %i.j, -9223372036854775765
  %i.m = select i1 %i.l, i64 %i.k, i64 3
  switch i64 %i.m, label %bb.g [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1
    i64 2, label %bb.e
  ]

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4494)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4496)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4497, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !4498
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1 unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1: ; preds = %bb.g, %bb.f, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %i.r = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ]
  %i.s = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(80) %i.t) #24
          to label %.critedge unwind label %bb.j

.critedge:                                        ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.s

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueANtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerj3_ECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4517)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !4518, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, 9223372036854775764
  %i.c = icmp ugt i64 %i.a, -9223372036854775765
  %i.d = select i1 %i.c, i64 %i.b, i64 3
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4521)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !4522, !nonnull !4, !noundef !4
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4523
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4524)
  %i.j = load i64, ptr %i.i, align 8, !range !21, !alias.scope !4525, !noundef !4 ; 2 uses
  %i.k = add nsw i64 %i.j, 9223372036854775764
  %i.l = icmp ugt i64 %i.j, -9223372036854775765
  %i.m = select i1 %i.l, i64 %i.k, i64 3
  switch i64 %i.m, label %bb.g [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1
    i64 2, label %bb.e
  ]

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4528)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4529, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !4530
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1 unwind label %bb.l

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1 unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1: ; preds = %bb.g, %bb.f, %bb.e, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4531)
  %i.s = load i64, ptr %i.r, align 8, !range !21, !alias.scope !4532, !noundef !4 ; 2 uses
  %i.t = add nsw i64 %i.s, 9223372036854775764
  %i.u = icmp ugt i64 %i.s, -9223372036854775765
  %i.v = select i1 %i.u, i64 %i.t, i64 3
  switch i64 %i.v, label %bb.j [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.2
    i64 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.2
    i64 2, label %bb.h
  ]

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4535)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !4536, !nonnull !4, !noundef !4
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !4537
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.2

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.2 unwind label %bb.l

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.r)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.2 unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.2: ; preds = %bb.j, %bb.i, %bb.h, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7indexer13TensorIndexerECs1dZk1kIfPhr_19candle_transformers.exit.i.1
  ret void

bb.k:                                             ; preds = %.lr.ph
  %i.aa = add nuw nsw i64 %.sroa.0.1.i3, 1        ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 3
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.b
  %i.ac = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.g ], [ true, %bb.i ], [ true, %bb.j ]
  %.lcssa = phi i64 [ 1, %bb.d ], [ 1, %bb.b ], [ 2, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 3, %bb.j ]
end_hunk_0
