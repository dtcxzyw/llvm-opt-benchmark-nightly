Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.02?download=true
inline.NumInlined: 1033
inline.NumDeleted: 460
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs3dds10DdsDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11total_bytesB9_:bb.a
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i8, i8 } @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs3dds10DdsDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder19original_color_typeB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.val = load i8, ptr %i.a, align 4, !range !6, !noundef !5
  %.not = icmp eq i8 %.val, 0
  %. = select i1 %.not, i8 16, i8 17
  %i.b = insertvalue { i8, i8 } poison, i8 %., 0
  %i.c = insertvalue { i8, i8 } %i.b, i8 undef, 1
  ret { i8, i8 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs4tiff11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11total_bytesB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #5 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.val = load i32, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 500
  %.val2 = load i32, ptr %i.b, align 4, !noundef !5
  %i.c = zext i32 %.val to i64
  %i.d = zext i32 %.val2 to i64
  %i.e = mul nuw i64 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 506
  %.val3 = load i8, ptr %i.f, align 2, !range !40, !noundef !5
  %i.g = zext nneg i8 %.val3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtCsa5QsYiPB8Gl_5image6codecs4tiff11TiffDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB9_2io7decoder12ImageDecoder11total_bytesB9_, i64 %i.g
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 %switch.ext) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 0
  %i.j = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.j, label %bb.a, label %bb.b, !prof !11

bb.a:                                             ; preds = %switch.lookup
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i64 [ -1, %bb.a ], [ %i.i, %switch.lookup ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10set_limitsBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #8 {
bb.a:
  store i8 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !17, !alias.scope !2075, !noundef !5
  %switch.tableidx.i = add i64 %i.b, 9223372036854775802
  %i.c = icmp ult i64 %switch.tableidx.i, 3       ; 2 uses
  %..i = select i1 %i.c, i64 36, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %.sroa.0.04.i = load i32, ptr %i.d, align 4, !alias.scope !2075, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8, !range !38, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = trunc nuw i32 %i.f to i1
  %i.i = load i32, ptr %i.g, align 4
  %i.j = icmp ugt i32 %.sroa.0.04.i, %i.i
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.15.i = select i1 %i.c, i64 32, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.15.i
  %.sroa.01.0.i = load i32, ptr %i.k, align 8, !alias.scope !2075, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i32, ptr %i.l, align 8, !range !38, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = trunc nuw i32 %i.m to i1
  %i.p = load i32, ptr %i.n, align 4
  %i.q = icmp ugt i32 %.sroa.01.0.i, %i.p
  %or.cond7 = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11orientationBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 2)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(96) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #5 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !17, !alias.scope !2078, !noundef !5
  %switch.tableidx.i = add i64 %i.b, 9223372036854775802
  %i.c = icmp ult i64 %switch.tableidx.i, 3       ; 2 uses
  %..i = select i1 %i.c, i64 36, i64 52
  %.15.i = select i1 %i.c, i64 32, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.15.i
  %.sroa.0.04.i = load i32, ptr %i.d, align 4, !alias.scope !2078, !noundef !5
  %.sroa.01.0.i = load i32, ptr %i.e, align 8, !alias.scope !2078, !noundef !5
  %i.f = zext i32 %.sroa.0.04.i to i64
  %i.g = zext i32 %.sroa.01.0.i to i64
  %i.h = mul nuw i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val = load i8, ptr %i.i, align 8, !range !47, !noundef !5
  %i.j = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder10PnmDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_, i64 %i.j
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.k = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %switch.ext) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 0
  %i.m = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.m, label %bb.a, label %bb.b, !prof !11

bb.a:                                             ; preds = %switch.lookup
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.sroa.0.0 = phi i64 [ -1, %bb.a ], [ %i.l, %switch.lookup ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7decoder11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder10set_limitsBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #8 {
bb.a:
  store i8 -1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val = load i32, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !range !38, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = trunc nuw i32 %i.c to i1
  %i.f = load i32, ptr %i.d, align 4
  %i.g = icmp ugt i32 %.val, %i.f
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 172
  %.val49 = load i32, ptr %i.h, align 4, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !range !38, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.l = trunc nuw i32 %i.j to i1
  %i.m = load i32, ptr %i.k, align 4
  %i.n = icmp ugt i32 %.val49, %i.m
  %or.cond7 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 7, ptr %0, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %.sroa.546.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7decoder11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder11total_bytesBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val = load i32, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 172
  %.val2 = load i32, ptr %i.b, align 4, !noundef !5
  %i.c = zext i32 %.val to i64
  %i.d = zext i32 %.val2 to i64
  %i.e = mul nuw i64 %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 183
  %.val3 = load i8, ptr %i.f, align 1, !range !7, !noundef !5
  %i.g = icmp eq i8 %.val3, 0
  %. = select i1 %i.g, i64 3, i64 4
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 %.) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 0
  %i.j = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.j, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ -1, %bb.b ], [ %i.i, %bb.a ]
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i8, i8 } @_RNvYINtNtNtNtCsa5QsYiPB8Gl_5image6codecs4webp7decoder11WebPDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtBb_2io7decoder12ImageDecoder19original_color_typeBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 183
  %.val = load i8, ptr %i.a, align 1, !range !7, !noundef !5
  %.not = icmp eq i8 %.val, 0
  %. = select i1 %.not, i8 16, i8 17
  %i.b = insertvalue { i8, i8 } poison, i8 %., 0
  %i.c = insertvalue { i8, i8 } %i.b, i8 undef, 1
  ret { i8, i8 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1o_6option6OptionQIB23_hEEEE9call_onceCsa5QsYiPB8Gl_5image(ptr noalias nofree readnone captures(none) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsa5QsYiPB8Gl_5image6codecs3dds12DecoderErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeB8_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @291, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsa5QsYiPB8Gl_5image(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsj6eKBz9Db1c_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @292, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12DecoderErrorNtNtCsj6eKBz9Db1c_4core5error5Error5causeBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !25, !alias.scope !2081, !noundef !5
  %i.b = icmp eq i8 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @115, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef float @_RNvYfNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable10clamp_fromB7_(double noundef %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp ogt double %0, f0x47EFFFFFE0000000
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, f0xC7EFFFFFE0000000
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fptrunc double %0 to float
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.0.0 = phi float [ %i.c, %bb.c ], [ f0x7F7FFFFF, %bb.a ], [ f0xFF7FFFFF, %bb.b ]
  ret float %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef double @_RNvYfNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable9to_largerB7_(float noundef %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fpext float %0 to double
  ret double %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_RNvYhNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable10clamp_fromB7_(i32 noundef %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %spec.select6 = tail call i32 @llvm.umin.i32(i32 %0, i32 255)
  %spec.select = trunc nuw i32 %spec.select6 to i8
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 256) i32 @_RNvYhNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable9to_largerB7_(i8 noundef %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i8 %0 to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RNvYtNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable10clamp_fromB7_(i32 noundef %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %spec.select6 = tail call i32 @llvm.umin.i32(i32 %0, i32 65535)
  %spec.select = trunc nuw i32 %spec.select6 to i16
  ret i16 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 65536) i32 @_RNvYtNtNtCsa5QsYiPB8Gl_5image6traits11Enlargeable9to_largerB7_(i16 noundef %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i16 %0 to i32
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs5XDXJCpOCOR_3png7encoder11write_chunkQQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read4readCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read13read_vectoredCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read14read_to_stringCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read8read_bufCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXNtNtCs4wP2HXfJTCR_5alloc2io6cursorINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB4_4read4Read14read_buf_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fptoui.sat.i8.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fptoui.sat.i16.f32(float) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerNtNtNtBT_7decoder6cycles11ComponentIdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsksn9slvsHfS_10image_webp7decoder13WebPRiffChunkINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangeyEEENtNtB1L_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles11ComponentIdBP_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs51eXCul1Ifq_4half8binary163f16ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0
end_hunk_0
