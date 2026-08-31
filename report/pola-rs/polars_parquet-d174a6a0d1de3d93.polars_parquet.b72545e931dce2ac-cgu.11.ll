Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.11?download=true
inline.NumInlined: 2430
inline.NumDeleted: 564
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvMNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding16delta_byte_array7decoderNtB2_7Decoder7try_new:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17187
  %i.o = load i64, ptr %i.n, align 8, !dbg !17187, !range !66, !noundef !14 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17187 ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g, !dbg !17186, !prof !2670

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.p, align 8, !dbg !17188
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #36, !dbg !17189
  unreachable, !dbg !17189

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.p, align 8, !dbg !17191, !nonnull !14, !noundef !14
  %i.s = icmp samesign ugt i64 %i.o, 31, !dbg !17192
  tail call void @llvm.assume(i1 %i.s), !dbg !17196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17199
  %.sroa.013.sroa.6.sroa.4.0..sroa.013.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.013.sroa.6.sroa.4.0..sroa.013.sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false), !dbg !17201
  %.sroa.013.sroa.6.sroa.5.0..sroa.013.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !17200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %.sroa.013.sroa.6.sroa.5.0..sroa.013.sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(608) %.sroa.3, i64 608, i1 false), !dbg !17201
  %.sroa.013.sroa.7.sroa.4.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 680, !dbg !17200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.013.sroa.7.sroa.4.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.229, i64 32, i1 false), !dbg !17201
  %.sroa.013.sroa.7.sroa.5.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 712, !dbg !17200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %.sroa.013.sroa.7.sroa.5.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(608) %.sroa.330, i64 608, i1 false), !dbg !17201
  store i64 %i.o, ptr %0, align 8, !dbg !17200
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17200
  store ptr %i.r, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8, !dbg !17200
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17200
  store i64 0, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8, !dbg !17200
  %.sroa.013.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17200
  store ptr %i.d, ptr %.sroa.013.sroa.6.0..sroa_idx, align 8, !dbg !17200
  %.sroa.013.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672, !dbg !17200
  store ptr %i.h, ptr %.sroa.013.sroa.7.0..sroa_idx, align 8, !dbg !17200
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1320, !dbg !17200
  store ptr %.sroa.725.0.copyload, ptr %.sroa.614.0..sroa_idx, align 8, !dbg !17200
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1328, !dbg !17200
  store i64 %.sroa.826.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !17200
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1336, !dbg !17200
  store i64 0, ptr %.sroa.815.0..sroa_idx, align 8, !dbg !17200
  br label %bb.h, !dbg !17202

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  ret void, !dbg !17202
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderllINtB7_19UnitDecoderFunctionlEE4unitBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17203 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17207
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17207
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17207
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17207
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17207
  ret void, !dbg !17210
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxxINtB7_19UnitDecoderFunctionxEE4unitBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17211 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17212
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17212
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17212
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17212
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17212
  ret void, !dbg !17215
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlaINtB7_17AsDecoderFunctionlaEE7cast_asBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17216 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17217
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17217
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17217
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17217
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17217
  ret void, !dbg !17220
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlhINtB7_17AsDecoderFunctionlhEE7cast_asBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17221 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17222
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17222
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17222
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17222
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17222
  ret void, !dbg !17225
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlmINtB7_17AsDecoderFunctionlmEE7cast_asBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17226 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17227
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17227
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17227
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17227
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17227
  ret void, !dbg !17230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlsINtB7_17AsDecoderFunctionlsEE7cast_asBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17231 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17232
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17232
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17232
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17232
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17232
  ret void, !dbg !17235
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderltINtB7_17AsDecoderFunctionltEE7cast_asBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17236 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17237
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17237
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17237
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17237
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17237
  ret void, !dbg !17240
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxmINtB7_17AsDecoderFunctionxmEE7cast_asBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17241 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17242
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17242
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17242
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17242
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17242
  ret void, !dbg !17245
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxyINtB7_17AsDecoderFunctionxyEE7cast_asBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17246 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17247
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17247
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17247
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17247
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17247
  ret void, !dbg !17250
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs2_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlnINtB7_19IntoDecoderFunctionlnEE9cast_intoBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17251 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17252
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17252
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17252
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17252
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17252
  ret void, !dbg !17255
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs2_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxnINtB7_19IntoDecoderFunctionxnEE9cast_intoBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0) unnamed_addr #4 !dbg !17256 {
bb.a:
  store i64 0, ptr %0, align 8, !dbg !17257
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17257
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !17257
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17257
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !17257
  ret void, !dbg !17260
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE15total_bytes_lenCsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17261 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !17262 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8, !dbg !17273 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1, !dbg !17275
  br i1 %i.d, label %bb.b, label %bb.k, !dbg !17275

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17277
  %i.f = load ptr, ptr %i.e, align 8, !dbg !17277, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !17285
  %i.h = load i64, ptr %i.g, align 8, !dbg !17285, !noundef !14
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h, !dbg !17286
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !17295 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !17295, !noundef !14
  %.not = icmp eq ptr %i.k, null, !dbg !17295
  %. = select i1 %.not, ptr null, ptr %i.j, !dbg !17298
  call void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtNtBb_5array7binview4view4ViewENCNvMs4_B2H_INtB2H_22BinaryViewArrayGenericShE8len_iter0ENtNtB7_8iterator10BitmapIterE17new_with_validityCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef align 8 %.), !dbg !17299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17300), !dbg !17303
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17313
  %.promoted.i = load ptr, ptr %i.a, align 8, !alias.scope !17323
  %.promoted18.i = load ptr, ptr %i.l, align 8, !alias.scope !17300 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.promoted20.i = load i64, ptr %i.n, align 8, !alias.scope !17300
  %.phi.trans.insert.i.i.i.promoted.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !17300
  %.promoted24.i = load i64, ptr %i.o, align 8, !alias.scope !17300
  %.promoted25.i = load ptr, ptr %i.m, align 8, !alias.scope !17300
  br label %bb.c, !dbg !17326

bb.c:                                             ; preds = %bb.j, %bb.b
  %i.p = phi ptr [ %.promoted25.i, %bb.b ], [ %8, %bb.j ] ; 6 uses
  %i.q = phi i64 [ %.promoted24.i, %bb.b ], [ %7, %bb.j ] ; 5 uses
  %.pre.i.i.i23.i = phi i64 [ %.phi.trans.insert.i.i.i.promoted.i, %bb.b ], [ %.pre.i.i.i2140.i, %bb.j ] ; 3 uses
  %i.r = phi i64 [ %.promoted20.i, %bb.b ], [ %6, %bb.j ] ; 3 uses
  %i.s = phi ptr [ %.promoted18.i, %bb.b ], [ %5, %bb.j ] ; 3 uses
  %i.t = phi ptr [ %.promoted18.i, %bb.b ], [ %4, %bb.j ] ; 5 uses
  %i.u = phi ptr [ %.promoted.i, %bb.b ], [ %3, %bb.j ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.as, %bb.j ], !dbg !17327 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17328), !dbg !17329
  %.not.i.i = icmp eq ptr %i.u, null, !dbg !17330
  br i1 %.not.i.i, label %bb.h, label %bb.d, !dbg !17331

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %i.u, %i.s, !dbg !17332
  br i1 %i.v, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i, label %bb.e, !dbg !17345

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !17346
  %.val.i.i.i.i = load i32, ptr %i.u, align 4, !dbg !17349, !noalias !17355, !noundef !14
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i, !dbg !17360

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %i.w, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.e ], [ undef, %bb.d ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], !dbg !17361
  %i.y = icmp eq i64 %i.r, 0, !dbg !17362
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i, !dbg !17362

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i
  %i.z = icmp eq i64 %i.q, 0, !dbg !17365
  br i1 %i.z, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i, !dbg !17365

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 64), !dbg !17366 ; 2 uses
  %i.aa = sub nuw i64 %i.q, %.sroa.0.0.i.i.i.i.i, !dbg !17368
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.p, align 1, !dbg !17369, !noalias !17373
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !17376
  br label %._crit_edge.i.i.i.i, !dbg !17381

._crit_edge.i.i.i.i:                              ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i
  %i.ac = phi ptr [ %i.ab, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %i.p, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i ]
  %i.ad = phi i64 [ %i.aa, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %i.q, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i ]
  %i.ae = phi i64 [ %.sroa.0.0.i.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i ], !dbg !17382
  %i.af = phi i64 [ %.sroa.02.0.copyload.i.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i.i ], [ %.pre.i.i.i23.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENCNvMs4_B1q_INtB1q_22BinaryViewArrayGenericShE8len_iter0ENtNtNtB9_6traits8iterator8Iterator4nextCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i ], !dbg !17383 ; 2 uses
  %i.ag = trunc i64 %i.af to i8, !dbg !17383
  %i.ah = lshr i64 %i.af, 1, !dbg !17384
  %i.ai = add i64 %i.ae, -1, !dbg !17382
  %i.aj = and i8 %i.ag, 1, !dbg !17385
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, !dbg !17386

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.f
  %i.ak = phi ptr [ %i.ac, %._crit_edge.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.al = phi i64 [ %i.ad, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.pre.i.i.i22.i = phi i64 [ %i.ah, %._crit_edge.i.i.i.i ], [ %.pre.i.i.i23.i, %bb.f ] ; 2 uses
  %i.am = phi i64 [ %i.ai, %._crit_edge.i.i.i.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i9.i.i.i = phi i8 [ %i.aj, %._crit_edge.i.i.i.i ], [ 2, %bb.f ], !dbg !17387
  %i.an = tail call { i8, i32 } @_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionbE3zipmECsfISxE4fmY1Y_14polars_parquet(i8 noundef %.sroa.0.0.i9.i.i.i, i32 noundef %.sroa.0.0.i.i.i.i, i32 %.sroa.3.0.i.i.i.i), !dbg !17388, !noalias !17390 ; 2 uses
  %i.ao = extractvalue { i8, i32 } %i.an, 0, !dbg !17391
  switch i8 %i.ao, label %bb.g [
    i8 2, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECsfISxE4fmY1Y_14polars_parquet.exit
    i8 0, label %bb.j
  ], !dbg !17392

bb.g:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.ap = extractvalue { i8, i32 } %i.an, 1, !dbg !17391
  br label %1, !dbg !17395

bb.h:                                             ; preds = %bb.c
  %i.aq = icmp eq ptr %i.t, %i.p, !dbg !17406
  br i1 %i.aq, label %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.i, !dbg !17411

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !17412 ; 2 uses
  %.val.i.i.i = load i32, ptr %i.t, align 4, !dbg !17414, !noalias !17417, !noundef !14
  br label %1, !dbg !17420

1:                                                ; preds = %bb.i, %bb.g
  %.ph31.i = phi ptr [ %i.ak, %bb.g ], [ %i.p, %bb.i ]
  %.ph32.i = phi i64 [ %i.al, %bb.g ], [ %i.q, %bb.i ]
  %.pre.i.i.i21.ph.i = phi i64 [ %.pre.i.i.i22.i, %bb.g ], [ %.pre.i.i.i23.i, %bb.i ]
  %.ph33.i = phi i64 [ %i.am, %bb.g ], [ %i.r, %bb.i ]
  %.ph34.i = phi ptr [ %i.s, %bb.g ], [ %i.ar, %bb.i ]
  %.ph35.i = phi ptr [ %i.t, %bb.g ], [ %i.ar, %bb.i ]
  %.ph36.i = phi ptr [ %i.x, %bb.g ], [ null, %bb.i ]
  %.sroa.3.0.i.pn.i.ph.ph.i = phi i32 [ %i.ap, %bb.g ], [ %.val.i.i.i, %bb.i ]
  %2 = zext i32 %.sroa.3.0.i.pn.i.ph.ph.i to i64, !dbg !17423
  br label %bb.j, !dbg !17423

bb.j:                                             ; preds = %1, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i
  %3 = phi ptr [ %.ph36.i, %1 ], [ %i.x, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %4 = phi ptr [ %.ph35.i, %1 ], [ %i.t, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %5 = phi ptr [ %.ph34.i, %1 ], [ %i.s, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %6 = phi i64 [ %.ph33.i, %1 ], [ %i.am, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %.pre.i.i.i2140.i = phi i64 [ %.pre.i.i.i21.ph.i, %1 ], [ %.pre.i.i.i22.i, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %7 = phi i64 [ %.ph32.i, %1 ], [ %i.al, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %8 = phi ptr [ %.ph31.i, %1 ], [ %i.ak, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ]
  %9 = phi i64 [ %2, %1 ], [ 0, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i ], !dbg !17423
  %i.as = add i64 %9, %.sroa.0.0.i, !dbg !17432
  br label %bb.c, !dbg !17326

_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i, %bb.h
  store atomic i64 %.sroa.0.0.i, ptr %i.b monotonic, align 8, !dbg !17436
  br label %bb.k, !dbg !17446

bb.k:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECsfISxE4fmY1Y_14polars_parquet.exit
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.i, %_RINvYINtNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validity11ZipValiditymINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterNtNtNtNtBc_5array7binview4view4ViewENCNvMs4_B2C_INtB2C_22BinaryViewArrayGenericShE8len_iter0ENtNtB8_8iterator10BitmapIterENtNtNtB1q_6traits8iterator8Iterator4foldjNCINvB1m_8map_foldINtNtB1s_6option6OptionmEjjNCNvB3c_15total_bytes_len0NCINvXsK_NtB4A_5accumjNtB6t_3Sum3sumIB1k_B3_B5U_EE0E0ECsfISxE4fmY1Y_14polars_parquet.exit ], [ %i.c, %bb.a ], !dbg !17447
  ret i64 %.sroa.0.0, !dbg !17448
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEE8try_lockCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 !dbg !17449 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !17455
  %i.c = extractvalue { i32, i1 } %i.b, 1, !dbg !17455
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !17468

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17469
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !17470
  %i.e = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !17473
  %i.f = and i64 %i.e, 9223372036854775807, !dbg !17493
  %i.g = icmp eq i64 %i.f, 0, !dbg !17493
  br i1 %i.g, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !dbg !17493, !prof !4012

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #34, !dbg !17494
  %i.i = xor i1 %i.h, true, !dbg !17495
  %i.j = zext i1 %i.i to i8, !dbg !17496
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !17494

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ], !dbg !17498
  %i.k = load atomic i8, ptr %i.d monotonic, align 4, !dbg !17499
  %i.l = icmp ne i8 %i.k, 0, !dbg !17506
  call void @_RINvNtNtCsh8eZTKRCwoO_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEEENCNvMs9_B10_BX_3new0ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.l, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1), !dbg !17507
  %i.m = load i64, ptr %i.a, align 8, !dbg !17508, !range !2046, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17512
  %i.o = load ptr, ptr %i.n, align 8, !dbg !17512, !nonnull !14, !align !1449, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17512
  %i.q = load i8, ptr %i.p, align 8, !dbg !17512, !range !17513, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17514
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17515
  store ptr %i.o, ptr %i.r, align 8, !dbg !17515
  br label %bb.d, !dbg !17516

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.q, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.m, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17516
  store i8 %.sink3, ptr %i.s, align 8, !dbg !17516
  store i64 %.sink, ptr %0, align 8, !dbg !17516
  ret void, !dbg !17517
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1j_E12insert_entryCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17518 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17522
  %i.g = load ptr, ptr %1, align 8, !dbg !17523, !noundef !14
  %.not = icmp eq ptr %i.g, null, !dbg !17523
  br i1 %.not, label %bb.b, label %bb.e, !dbg !17524

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17525
  %i.i = load ptr, ptr %i.h, align 8, !dbg !17525, !nonnull !14, !noundef !14 ; 2 uses
  %i.j = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1s_NtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet()
          to label %bb.c unwind label %bb.g, !dbg !17531 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.j, 0, !dbg !17531 ; 3 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1, !dbg !17531 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ], !dbg !17533
  store ptr %i.k, ptr %i.i, align 8, !dbg !17536
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17536
  store i64 %i.l, ptr %i.m, align 8, !dbg !17536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !17537
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !17539
  store i64 %i.l, ptr %i.n, align 8, !dbg !17539
  store ptr %i.k, ptr %i.e, align 8, !dbg !17539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !17545
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !17545
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !17547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !17547
  call void @_RNvMsu_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1p_NtB19_4LeafE16push_with_handleCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !17548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !17549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !17549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !17550
  br label %bb.d, !dbg !17551

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17552 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !dbg !17552, !nonnull !14, !noundef !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !17555 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !17555, !noundef !14
  %i.t = add i64 %i.s, 1, !dbg !17555
  store i64 %i.t, ptr %i.r, align 8, !dbg !17555
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17556
  %i.v = load ptr, ptr %i.f, align 8, !dbg !17556, !nonnull !14, !noundef !14
  %i.w = load ptr, ptr %i.p, align 8, !dbg !17557, !nonnull !14, !noundef !14
  store ptr %i.v, ptr %0, align 8, !dbg !17558
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17558
  %i.x = load <2 x i64>, ptr %i.u, align 8, !dbg !17556
  store <2 x i64> %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !17558
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17558
  store ptr %i.w, ptr %i.y, align 8, !dbg !17558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17559
  ret void, !dbg !17560

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !17561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17562
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !dbg !17562
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !17564
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17565
  call void @_RINvMsN_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1D_NtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB3E_11VacantEntryB1D_B1D_E12insert_entry0ECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa), !dbg !17566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17567
  br label %bb.d, !dbg !17568

bb.f:                                             ; preds = %bb.i, %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !17569
  unreachable, !dbg !17569

bb.g:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 23, !dbg !17570
  %i.af = load i8, ptr %i.ae, align 1, !dbg !17570, !range !2657, !alias.scope !17577, !noundef !14
  %i.ag = icmp eq i8 %i.af, -40, !dbg !17586
  br i1 %i.ag, label %bb.h, label %.noexc12, !dbg !17586, !prof !2670

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc12 unwind label %bb.f, !dbg !17587

.critedge9:                                       ; preds = %.noexc12, %bb.i
  resume { ptr, i32 } %i.ad, !dbg !17569

.noexc12:                                         ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 55, !dbg !17588
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !17588, !range !2657, !alias.scope !17595, !noundef !14
  %i.aj = icmp eq i8 %i.ai, -40, !dbg !17604
  br i1 %i.aj, label %bb.i, label %.critedge9, !dbg !17604, !prof !2670

bb.i:                                             ; preds = %.noexc12
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17559
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.critedge9 unwind label %bb.f, !dbg !17605
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1l_E6insertCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17606 {
bb.a:
  %i.a = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1C_NtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.d unwind label %bb.b, !dbg !17608

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 23, !dbg !17611
  %i.d = load i8, ptr %i.c, align 1, !dbg !17611, !range !2657, !alias.scope !17618, !noundef !14
  %i.e = icmp eq i8 %i.d, -40, !dbg !17627
  br i1 %i.e, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !17627, !prof !2670

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.e, !dbg !17628

bb.d:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.a, 1, !dbg !17629 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !17630
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !17633
  ret void, !dbg !17635

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !17636
  unreachable, !dbg !17636

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b, !dbg !17636
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs7_NtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1l_E8into_mutCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17637 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1C_NtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0), !dbg !17638
end_hunk_0
