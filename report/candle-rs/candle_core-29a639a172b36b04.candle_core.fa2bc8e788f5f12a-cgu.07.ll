Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.07?download=true
inline.NumInlined: 1702
inline.NumDeleted: 830
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs2_NtNtCs7fP0opQOXdx_5rayon4iter10try_reduceINtB5_17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB1X_7default7Default7defaultEINtNtB7_8plumbing7ReducerB1S_E6reduceB2z_:bb.a
  br i1 %.not.i13, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB12_.exit, label %bb.f

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB12_.exit: ; preds = %bb.f, %.thread25, %.thread, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %bb.e
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEEB12_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewNtB5_4Load4load(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsltEA4u8Pgfu_11candle_core11safetensors7convert(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !noundef !6 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775793
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 15
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 1, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 2, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 3, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 4, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 5, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 6, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 7, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 8, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 9, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 10, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 11, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 12, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 13, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 14, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 15, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 16, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 17, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 18, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 19, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 20, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 21, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 22, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 23, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 24, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 25, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 26, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 27, label %bb.c
    i64 28, label %bb.d
    i64 29, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 30, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 31, label %bb.e
    i64 32, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 33, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 34, label %bb.f
    i64 35, label %bb.g
    i64 36, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 37, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 38, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 39, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 40, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 41, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 42, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
    i64 43, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !6, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !13, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !6, !nonnull !6
  %i.l = tail call { ptr, ptr } %i.k(ptr noundef nonnull %i.g) #35 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0
  %i.n = extractvalue { ptr, ptr } %i.l, 1
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !26, !alias.scope !4068, !noundef !6 ; 2 uses
  %i.r = icmp ne i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.q, -9223372036854775808
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.i = select i1 %i.s, ptr %i.t, ptr null
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = tail call { ptr, ptr } @_RNvXs4_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noundef nonnull %i.u) #35 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0
  %i.x = extractvalue { ptr, ptr } %i.v, 1
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !28, !alias.scope !4069, !noundef !6 ; 3 uses
  %i.aa = icmp ne i64 %i.z, -9223372036854775798
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = xor i64 %i.z, -9223372036854775808
  %i.ac = icmp slt i64 %i.z, 0
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 10
  switch i64 %i.ad, label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

_RNvXs1_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.45.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.n, %bb.c ], [ @59, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ @45, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ], [ %i.x, %bb.f ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @49, %bb.k ], [ @47, %bb.h ], [ @49, %bb.i ], [ @45, %bb.j ], [ undef, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.m, %bb.c ], [ %i.o, %bb.d ], [ null, %bb.a ], [ null, %bb.a ], [ %.sroa.0.0.i, %bb.e ], [ null, %bb.a ], [ null, %bb.a ], [ %i.w, %bb.f ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.ah, %bb.k ], [ %i.ae, %bb.h ], [ %i.af, %bb.i ], [ %i.ag, %bb.j ], [ null, %bb.g ]
  %i.ai = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.aj = insertvalue { ptr, ptr } %i.ai, ptr %.sroa.45.0, 1
  ret { ptr, ptr } %i.aj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6pickleNtNtB7_5error5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6ObjectE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsb_NtCsltEA4u8Pgfu_11candle_core6pickleNtB5_6ObjectNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @60, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #31
          to label %bb.d unwind label %bb.c

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 -9223372036854775766, ptr %0, align 8
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtCshigRrDowciq_6float86F8E4M3Es_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtCshigRrDowciq_6float86F8E4M3Es_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4072)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4072, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4072
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtCshigRrDowciq_6float86F8E4M3Es_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtNtCsdsILkMb8ZHY_4half6bfloat4bf16Es_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtNtCsdsILkMb8ZHY_4half6bfloat4bf16Es_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4075)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4075, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4075
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtNtCsdsILkMb8ZHY_4half6bfloat4bf16Es_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtNtCsdsILkMb8ZHY_4half8binary163f16Es_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtNtCsdsILkMb8ZHY_4half8binary163f16Es_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4078)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4078, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4078
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1NtNtCsdsILkMb8ZHY_4half8binary163f16Es_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1dEs_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1dEs_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4081, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4081
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1dEs_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1fEs_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1fEs_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4084)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4084, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4084
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1fEs_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1hEs_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1hEs_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4087)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4087, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4087
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1hEs_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1lEs_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1lEs_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4090, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4090
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1lEs_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1mEs_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1mEs_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4093)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4093, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4093
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1mEs_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1sEs_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1sEs_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4096)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4096, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4096
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1sEs_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1xEs_0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1xEs_0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4099)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4099, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4099
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d10conv2d_1x1xEs_0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtCshigRrDowciq_6float86F8E4M3E0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtCshigRrDowciq_6float86F8E4M3E0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4102)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4102, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4102
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtCshigRrDowciq_6float86F8E4M3E0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half6bfloat4bf16E0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half6bfloat4bf16E0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4105)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4105, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4105
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half6bfloat4bf16E0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half8binary163f16E0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half8binary163f16E0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4108)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4108, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4108
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half8binary163f16E0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tileddE0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tileddE0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4111)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4111, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4111
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tileddE0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledfE0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledfE0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4114, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4114
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledfE0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledhE0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledhE0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4117)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4117, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4117
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledhE0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledlE0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledlE0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4120, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4120
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledlE0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledmE0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledmE0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4123)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4123, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4123
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledmE0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledsE0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledsE0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4126)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4126, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4126
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledsE0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledxE0EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledxE0EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4129)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4129, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4129
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledxE0EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtCshigRrDowciq_6float86F8E4M3E00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtCshigRrDowciq_6float86F8E4M3E00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4132)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4132, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4132
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtCshigRrDowciq_6float86F8E4M3E00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half6bfloat4bf16E00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half6bfloat4bf16E00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4135)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4135, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4135
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half6bfloat4bf16E00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half8binary163f16E00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half8binary163f16E00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4138)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4138, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4138
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledNtNtCsdsILkMb8ZHY_4half8binary163f16E00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tileddE00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tileddE00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4141, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4141
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tileddE00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledfE00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledfE00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4144)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4144, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4144
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledfE00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledhE00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledhE00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4147)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4147, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4147
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledhE00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledlE00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledlE00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4150)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4150, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4150
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledlE00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledmE00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledmE00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4153, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4153
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledmE00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledsE00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledsE00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4156, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4156
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledsE00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledxE00EINtNtB7_8plumbing8ConsumerjE11into_folderB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 8), (80, 104)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !13, !noundef !6
  store i64 -1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.c, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledxE00EINtNtB7_8plumbing8ConsumerjE4fullB2Y_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4159)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4159, !nonnull !6, !noundef !6
  %i.c = load atomic i8, ptr %i.b monotonic, align 1, !noalias !4159
  %i.d = icmp ne i8 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_10try_reduce17TryReduceConsumerINvNvNtB7_16ParallelIterator12try_for_each2okINtNtCsf3Ta7LF998c_4core6result6ResultuNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEENvYuNtNtB2m_7default7Default7defaultENCNCINvNtNtB2Y_11cpu_backend6conv2d12conv2d_tiledxE00EINtNtB7_8plumbing8ConsumerjE8split_atB2Y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 88)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !align !13, !noundef !6 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs5_NtCscWUIX17zZnI_3zip4readINtB5_7ZipFileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtBP_4read4Read10read_exactCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = tail call noundef ptr @_RNvXs4_NtNtCscWUIX17zZnI_3zip4read7readersINtB5_13ZipFileReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtB16_4read4Read10read_exactCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs5_NtCscWUIX17zZnI_3zip4readINtB5_7ZipFileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtBP_4read4Read4readCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(264) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = tail call { i64, ptr } @_RNvXs4_NtNtCscWUIX17zZnI_3zip4read7readersINtB5_13ZipFileReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtB16_4read4Read4readCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCsltEA4u8Pgfu_11candle_core5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [32 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [48 x i8], align 8               ; 9 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [80 x i8], align 8               ; 13 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 5 uses
  %i.ax = alloca [80 x i8], align 8               ; 13 uses
  %i.ay = alloca [8 x i8], align 8                ; 4 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [8 x i8], align 8                ; 4 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [48 x i8], align 8               ; 9 uses
  %i.be = alloca [8 x i8], align 8                ; 4 uses
  %i.bf = alloca [8 x i8], align 8                ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [48 x i8], align 8               ; 9 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [64 x i8], align 8               ; 11 uses
  %i.bq = alloca [8 x i8], align 8                ; 4 uses
  %i.br = alloca [8 x i8], align 8                ; 4 uses
  %i.bs = alloca [8 x i8], align 8                ; 4 uses
  %i.bt = alloca [8 x i8], align 8                ; 4 uses
  %i.bu = alloca [48 x i8], align 8               ; 9 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [8 x i8], align 8                ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [32 x i8], align 8               ; 7 uses
  %i.bz = alloca [8 x i8], align 8                ; 4 uses
  %i.ca = alloca [8 x i8], align 8                ; 4 uses
  %i.cb = alloca [48 x i8], align 8               ; 9 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 4 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [48 x i8], align 8               ; 9 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [8 x i8], align 8                ; 4 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [48 x i8], align 8               ; 9 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [48 x i8], align 8               ; 9 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [8 x i8], align 8                ; 4 uses
  %i.cq = alloca [16 x i8], align 8               ; 5 uses
  %i.cr = alloca [32 x i8], align 8               ; 7 uses
  %i.cs = alloca [16 x i8], align 8               ; 5 uses
  %i.ct = alloca [8 x i8], align 8                ; 4 uses
  %i.cu = alloca [48 x i8], align 8               ; 9 uses
  %i.cv = alloca [8 x i8], align 8                ; 4 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [16 x i8], align 8               ; 5 uses
  %i.cy = alloca [48 x i8], align 8               ; 9 uses
  %i.cz = alloca [8 x i8], align 8                ; 4 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [16 x i8], align 8               ; 5 uses
  %i.dc = load i64, ptr %0, align 8, !range !27, !noundef !6 ; 3 uses
  %i.dd = icmp ne i64 %i.dc, -9223372036854775793
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = xor i64 %i.dc, -9223372036854775808
  %i.df = icmp slt i64 %i.dc, 0
  %i.dg = select i1 %i.df, i64 %i.de, i64 15
  switch i64 %i.dg, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
    i64 23, label %bb.z
    i64 24, label %bb.aa
    i64 25, label %bb.ab
    i64 26, label %bb.ac
    i64 27, label %bb.ad
    i64 28, label %bb.ae
    i64 29, label %bb.af
    i64 30, label %bb.ag
    i64 31, label %bb.ah
    i64 32, label %bb.ai
    i64 33, label %bb.aj
    i64 34, label %bb.ak
    i64 35, label %bb.al
    i64 36, label %bb.am
    i64 37, label %bb.an
    i64 38, label %bb.ao
    i64 39, label %bb.ap
    i64 40, label %bb.aq
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend6conv2d12conv2d_tiledlE00INtB6_5FnMutTjEE8call_mutBY_
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend6conv2d12conv2d_tiledlE00INtB6_5FnMutTjEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend6conv2d12conv2d_tiledmE00INtB6_5FnMutTjEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend6conv2d12conv2d_tiledsE00INtB6_5FnMutTjEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsRNCNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend6conv2d12conv2d_tiledxE00INtB6_5FnMutTjEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsf3Ta7LF998c_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtCsaPlfBUY5LAj_10serde_json5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsaPlfBUY5LAj_10serde_json5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1E_NtCsf3Ta7LF998c_4core3fmtTjjjjENtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRReNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsltEA4u8Pgfu_11candle_core11safetensors7convert(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsltEA4u8Pgfu_11candle_core19dummy_metal_backendNtB5_10MetalErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsltEA4u8Pgfu_11candle_core19dummy_metal_backend10MetalErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsf3Ta7LF998c_4core3num5errorNtB4_15TryFromIntErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCscWUIX17zZnI_3zip6resultNtB4_8ZipErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsgCecv3eZDcN_5alloc6stringNtB5_13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsOwuIBbUsgI_11safetensors6tensorNtB5_15SafeTensorErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs4_NtNtCscWUIX17zZnI_3zip4read7readersINtB5_13ZipFileReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtB16_4read4Read10read_exactCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtNtCscWUIX17zZnI_3zip4read7readersINtB5_13ZipFileReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtNtB16_4read4Read4readCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core5dtype5DTypeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRlNtB6_7Display3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecjENtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRjNtB6_7Display3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core6device14DeviceLocationNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core19dummy_metal_backend10MetalErrorNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5Xr050g3D4S_3std4path7PathBufNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtCscWUIX17zZnI_3zip4read7readersINtB5_13ZipFileReaderINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE10into_innerCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4copy4copyINtNtNtCsf3Ta7LF998c_4core2io4util4TakeQINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtBG_4SinkECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3mul(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE9drop_slowCs9BYqgaV0uAw_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCsltEA4u8Pgfu_11candle_core5shapeNtB2_5ShapeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRjNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRlNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRxNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRdNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRbNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectENtB6_5Debug3fmtB17_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtNtCsltEA4u8Pgfu_11candle_core6pickle6ObjectB14_EENtB6_5Debug3fmtB18_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtCs5Xr050g3D4S_3std9backtraceNtB5_9BacktraceNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCscWUIX17zZnI_3zip4read7ZipFileINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEENtB2_4Read8read_buf0ECsltEA4u8Pgfu_11candle_core(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { noinline noreturn }
attributes #31 = { cold }
attributes #32 = { cold noreturn nounwind }
attributes #33 = { noreturn }
attributes #34 = { noinline }
attributes #35 = { inlinehint }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!6 = !{}
!7 = !{!"branch_weights", i32 4000000, i32 4001}
!8 = !{i64 0, i64 2}
!9 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!10 = !{i8 0, i8 44}
!11 = !{i8 0, i8 3}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{i64 8}
!14 = !{i64 4}
!15 = !{!"branch_weights", i32 4001, i32 4000000}
!16 = !{i64 2}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!19 = !{i8 0, i8 2}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{i64 0, i64 -9223372036854775808}
!22 = !{i64 1, i64 536870913}
!23 = !{i64 -1, i64 -9223372036854775764}
!24 = !{i64 0, i64 3}
!25 = !{i32 0, i32 -1}
!26 = !{i64 -1, i64 -9223372036854775802}
!27 = !{i64 0, i64 -9223372036854775764}
!28 = !{i64 0, i64 -9223372036854775794}
!29 = !{i64 0, i64 -9223372036854775795}
!30 = !{!"branch_weights", i32 1, i32 4001}
!31 = !{i64 0, i64 -9223372036854775807}
!32 = !{i16 0, i16 2}
!33 = !{!"branch_weights", i32 2002, i32 2000}
!34 = distinct !{!34, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core"}
!35 = distinct !{!35, !34, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!36 = distinct !{!36, i1 false, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core"}
!37 = distinct !{!37, !36, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core: argument 0"}
!38 = !{!35}
!39 = !{!37}
!40 = distinct !{!40, i1 false, !"_RINvMs0_NtNtCscWUIX17zZnI_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECsltEA4u8Pgfu_11candle_core"}
!41 = distinct !{!41, !40, !"_RINvMs0_NtNtCscWUIX17zZnI_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECsltEA4u8Pgfu_11candle_core: argument 0"}
!42 = distinct !{!42, !40, !"_RINvMs0_NtNtCscWUIX17zZnI_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECsltEA4u8Pgfu_11candle_core: argument 1"}
!43 = distinct !{!43, !40, !"_RINvMs0_NtNtCscWUIX17zZnI_3zip4read12magic_finderINtB6_11MagicFinderNtB6_7ForwardE4nextINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECsltEA4u8Pgfu_11candle_core: argument 2"}
!44 = distinct !{!44, i1 false, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core"}
!45 = distinct !{!45, !44, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsltEA4u8Pgfu_11candle_core: argument 0"}
!46 = distinct !{!46, i1 false, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core"}
!47 = distinct !{!47, !46, !"_RINvNtNtNtCsf3Ta7LF998c_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsltEA4u8Pgfu_11candle_core: argument 0"}
!48 = !{!41}
!49 = !{!42}
!50 = !{!41, !43}
!51 = !{!41, !42, !43}
!52 = !{!42, !43}
!53 = !{!45, !41, !42, !43}
!54 = !{!47}
!55 = !{!45, !41}
!56 = distinct !{null}
!57 = distinct !{!57, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsltEA4u8Pgfu_11candle_core"}
!58 = distinct !{!58, !57, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE8try_withNCNvMNtNtBa_4hash6randomNtB1M_11RandomState3new0B25_ECsltEA4u8Pgfu_11candle_core: argument 0"}
!59 = distinct !{null}
!60 = !{!58}
!61 = distinct !{!61, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ2KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!62 = distinct !{!62, !61, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ2KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!63 = distinct !{!63, !61, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ2KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!64 = distinct !{null}
!65 = distinct !{!65, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ2KE0B8_"}
!66 = distinct !{!66, !65, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ2KE0B8_: argument 1"}
!67 = distinct !{!67, !65, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ2KE0B8_: argument 0"}
!68 = !{!62}
!69 = !{!63, !62}
!70 = !{!66}
!71 = !{!67, !66, !63, !62}
!72 = !{!66, !62}
!73 = !{!67, !63}
!74 = distinct !{!74, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ3KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!75 = distinct !{!75, !74, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ3KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!76 = distinct !{!76, !74, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ3KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!77 = distinct !{null}
!78 = distinct !{!78, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ3KE0B8_"}
!79 = distinct !{!79, !78, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ3KE0B8_: argument 1"}
!80 = distinct !{!80, !78, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ3KE0B8_: argument 0"}
!81 = !{!75}
!82 = !{!76, !75}
!83 = !{!79}
!84 = !{!80, !79, !76, !75}
!85 = !{!79, !75}
!86 = !{!80, !76}
!87 = distinct !{!87, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ4KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!88 = distinct !{!88, !87, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ4KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!89 = distinct !{!89, !87, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ4KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!90 = distinct !{null}
!91 = distinct !{!91, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ4KE0B8_"}
!92 = distinct !{!92, !91, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ4KE0B8_: argument 1"}
!93 = distinct !{!93, !91, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ4KE0B8_: argument 0"}
!94 = !{!88}
!95 = !{!89, !88}
!96 = !{!92}
!97 = !{!93, !92, !89, !88}
!98 = !{!92, !88}
!99 = !{!93, !89}
!100 = distinct !{!100, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ5KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!101 = distinct !{!101, !100, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ5KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!102 = distinct !{!102, !100, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ5KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!103 = distinct !{null}
!104 = distinct !{!104, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ5KE0B8_"}
!105 = distinct !{!105, !104, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ5KE0B8_: argument 1"}
!106 = distinct !{!106, !104, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ5KE0B8_: argument 0"}
!107 = !{!101}
!108 = !{!102, !101}
!109 = !{!105}
!110 = !{!106, !105, !102, !101}
!111 = !{!105, !101}
!112 = !{!106, !102}
!113 = distinct !{!113, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ6KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!114 = distinct !{!114, !113, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ6KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!115 = distinct !{!115, !113, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ6KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!116 = distinct !{null}
!117 = distinct !{!117, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ6KE0B8_"}
!118 = distinct !{!118, !117, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ6KE0B8_: argument 1"}
!119 = distinct !{!119, !117, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ6KE0B8_: argument 0"}
!120 = !{!114}
!121 = !{!115, !114}
!122 = !{!118}
!123 = !{!119, !118, !115, !114}
!124 = !{!118, !114}
!125 = !{!119, !115}
!126 = distinct !{!126, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ8KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!127 = distinct !{!127, !126, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ8KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!128 = distinct !{!128, !126, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_8BlockQ8KE0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!129 = distinct !{null}
!130 = distinct !{!130, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ8KE0B8_"}
!131 = distinct !{!131, !130, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ8KE0B8_: argument 1"}
!132 = distinct !{!132, !130, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_8BlockQ8KE0B8_: argument 0"}
!133 = !{!127}
!134 = !{!128, !127}
!135 = !{!131}
!136 = !{!132, !131, !128, !127}
!137 = !{!131, !127}
!138 = !{!132, !128}
!139 = distinct !{!139, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ4_0E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!140 = distinct !{!140, !139, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ4_0E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!141 = distinct !{!141, !139, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ4_0E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!142 = distinct !{null}
!143 = distinct !{!143, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ4_0E0B8_"}
!144 = distinct !{!144, !143, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ4_0E0B8_: argument 1"}
!145 = distinct !{!145, !143, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ4_0E0B8_: argument 0"}
!146 = !{!140}
!147 = !{!141, !140}
!148 = !{!144}
!149 = !{!145, !144, !141, !140}
!150 = !{!144, !140}
!151 = !{!145, !141}
!152 = distinct !{!152, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ4_1E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!153 = distinct !{!153, !152, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ4_1E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!154 = distinct !{!154, !152, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ4_1E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!155 = distinct !{null}
!156 = distinct !{!156, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ4_1E0B8_"}
!157 = distinct !{!157, !156, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ4_1E0B8_: argument 1"}
!158 = distinct !{!158, !156, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ4_1E0B8_: argument 0"}
!159 = !{!153}
!160 = !{!154, !153}
!161 = !{!157}
!162 = !{!158, !157, !154, !153}
!163 = !{!157, !153}
!164 = !{!158, !154}
!165 = distinct !{!165, i1 false, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ5_0E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_"}
!166 = distinct !{!166, !165, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ5_0E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 1"}
!167 = distinct !{!167, !165, !"_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE8try_withNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB2k_9BlockQ5_0E0INtNtBZ_6result6ResultuNtNtB2o_5error5ErrorEEB2o_: argument 0"}
!168 = distinct !{null}
!169 = distinct !{!169, i1 false, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ5_0E0B8_"}
!170 = distinct !{!170, !169, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ5_0E0B8_: argument 1"}
!171 = distinct !{!171, !169, !"_RNCINvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmulNtB4_9BlockQ5_0E0B8_: argument 0"}
!172 = !{!166}
end_hunk_1
