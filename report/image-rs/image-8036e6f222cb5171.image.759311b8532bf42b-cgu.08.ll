Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.08?download=true
inline.NumInlined: 1824
inline.NumDeleted: 737
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE19cast_in_color_spaceINtB14_5LumaAhEEBa_:bb.a
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !231
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !231
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE19cast_in_color_spaceINtB14_5LumaAtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !243, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !243, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = mul nuw nsw i64 %i.g, 3
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !243, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !243
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !243
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !243, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color3RgbfEINtB1b_5LumaAtEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @20)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !246, !noundef !5
  %i.p = shl nuw nsw i64 %i.g, 1
  %i.q = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 %i.i) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %.not.i.i = icmp ugt i64 %i.s, %.val10.i.i
  %or.cond.i.i = or i1 %i.r, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !247

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !247

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !247
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !247
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !248 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !249
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !249
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !249
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE21copy_from_color_spaceB11_B1l_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val45 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val46 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val45, %.val
  %i.g = icmp ne i32 %.val46, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val47 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val48 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val48 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val47 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !257
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !257, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !257, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !257
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color3RgbfEB1q_EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !257
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val45 to i64
  %i.u = mul nuw nsw i64 %i.t, 3
  %i.v = zext i32 %.val46 to i64
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 5 uses
  br i1 %i.x, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !259, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
          to label %.noexc59 unwind label %bb.b

.noexc59:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.aa, align 8, !alias.scope !260, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.y, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ab = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.ac = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !259, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ae, align 8, !alias.scope !260, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ag(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 4 %.val.i63, i64 noundef %i.y)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE21copy_from_color_spaceINtB14_4RgbafEB1l_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val44 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val47 = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val48 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val, %.val47
  %i.g = icmp ne i32 %.val44, %.val48
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke77, %.invoke, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val45 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val46 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val46 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val45 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !268, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !268, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color4RgbafEINtB1t_3RgbfEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val to i64                    ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = zext i32 %.val44 to i64                  ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  br i1 %i.x, label %.invoke77, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !270, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !270, !nonnull !5, !noundef !5
  %i.ab = mul nuw nsw i64 %i.t, 3
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %i.v) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 3 uses
  br i1 %i.ad, label %.invoke77, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.af, align 8, !alias.scope !271, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.ae, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke77:                                        ; preds = %bb.h, %bb.f
  %i.ag = phi ptr [ @156, %bb.f ], [ @159, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #20
          to label %.cont78 unwind label %bb.b

.cont78:                                          ; preds = %.invoke77
  unreachable

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ah = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  %i.ai = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.aj = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ak, align 8, !alias.scope !271, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.am(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 4 %.val.i63, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceB11_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !283, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !283, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = mul nuw nsw i64 %i.g, 3
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !283, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !283
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !283
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !283, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color3RgbhEB18_EBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @21)
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !286, !noundef !5
  %.not.i.i = icmp ugt i64 %i.l, %.val10.i.i
  br i1 %.not.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !287

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !287

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !287
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.p

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !287
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !288 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !289
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !289
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !289
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceIB12_fEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !301, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !301, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = mul nuw nsw i64 %i.g, 3
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

end_hunk_0
begin_hunk_1_@_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceINtB14_5LumaAhEEBa_:bb.a
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !469
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !469
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceINtB14_5LumaAtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !481, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !481, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = mul nuw nsw i64 %i.g, 3
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !481, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !481
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !481
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !481, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color3RgbhEINtB1b_5LumaAtEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32)
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !484, !noundef !5
  %i.p = shl nuw nsw i64 %i.g, 1
  %i.q = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 %i.i) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %.not.i.i = icmp ugt i64 %i.s, %.val10.i.i
  %or.cond.i.i = or i1 %i.r, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !485

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !485

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !485
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !485
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !486 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !487
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !487
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !487
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE21copy_from_color_spaceB11_B1l_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val45 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val46 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val45, %.val
  %i.g = icmp ne i32 %.val46, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val47 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val48 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val48 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val47 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !495
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !495, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !495, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !495
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color3RgbhEB1q_EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !495
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val45 to i64
  %i.u = mul nuw nsw i64 %i.t, 3
  %i.v = zext i32 %.val46 to i64
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 5 uses
  br i1 %i.x, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !497, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
          to label %.noexc59 unwind label %bb.b

.noexc59:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.aa, align 8, !alias.scope !498, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.y, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ab = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.ac = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !497, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ae, align 8, !alias.scope !498, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ag(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull %.val.i63, i64 noundef %i.y)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE21copy_from_color_spaceINtB14_4RgbahEB1l_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val44 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val47 = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val48 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val, %.val47
  %i.g = icmp ne i32 %.val44, %.val48
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke77, %.invoke, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val45 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val46 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val46 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val45 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !506
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !506, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !506, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !506
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color4RgbahEINtB1t_3RgbhEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !506
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val to i64                    ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = zext i32 %.val44 to i64                  ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  br i1 %i.x, label %.invoke77, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !508, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !508, !nonnull !5, !noundef !5
  %i.ab = mul nuw nsw i64 %i.t, 3
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %i.v) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 3 uses
  br i1 %i.ad, label %.invoke77, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.af, align 8, !alias.scope !509, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.ae, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke77:                                        ; preds = %bb.h, %bb.f
  %i.ag = phi ptr [ @156, %bb.f ], [ @159, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #20
          to label %.cont78 unwind label %bb.b

.cont78:                                          ; preds = %.invoke77
  unreachable

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ah = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  %i.ai = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.aj = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ak, align 8, !alias.scope !509, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.am(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull %.val.i63, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceB11_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !521, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !521, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = mul nuw nsw i64 %i.g, 3
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !521, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !521
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !521
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !521, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color3RgbtEB18_EBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @33)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !524, !noundef !5
  %.not.i.i = icmp ugt i64 %i.l, %.val10.i.i
  br i1 %.not.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !525

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !525

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !525
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.p

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !525
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !526 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !527
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !527
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !527
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceIB12_fEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !539, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !539, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = mul nuw nsw i64 %i.g, 3
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

end_hunk_1
begin_hunk_2_@_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceINtB14_5LumaAhEEBa_:bb.a
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !707
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !707
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceINtB14_5LumaAtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !719, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !719, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = mul nuw nsw i64 %i.g, 3
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !719, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !719
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !719
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !719, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color3RgbtEINtB1b_5LumaAtEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @44)
  call void @llvm.experimental.noalias.scope.decl(metadata !720)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !722, !noundef !5
  %i.p = shl nuw nsw i64 %i.g, 1
  %i.q = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 %i.i) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %.not.i.i = icmp ugt i64 %i.s, %.val10.i.i
  %or.cond.i.i = or i1 %i.r, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !723

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !723

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !723
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !723
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !724 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !725
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !725
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !725
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE21copy_from_color_spaceB11_B1l_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val45 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val46 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val45, %.val
  %i.g = icmp ne i32 %.val46, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val47 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val48 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val48 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val47 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !733
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !733, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !733, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !733
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color3RgbtEB1q_EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !733
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val45 to i64
  %i.u = mul nuw nsw i64 %i.t, 3
  %i.v = zext i32 %.val46 to i64
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 5 uses
  br i1 %i.x, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !735, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
          to label %.noexc59 unwind label %bb.b

.noexc59:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.aa, align 8, !alias.scope !736, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.y, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ab = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.ac = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !735, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ae, align 8, !alias.scope !736, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ag(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 2 %.val.i63, i64 noundef %i.y)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE21copy_from_color_spaceINtB14_4RgbatEB1l_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val44 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val47 = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val48 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val, %.val47
  %i.g = icmp ne i32 %.val44, %.val48
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke77, %.invoke, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val45 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val46 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val46 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val45 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !744
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !744, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !744, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !744
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color4RgbatEINtB1t_3RgbtEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !744
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val to i64                    ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = zext i32 %.val44 to i64                  ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  br i1 %i.x, label %.invoke77, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !746, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !746, !nonnull !5, !noundef !5
  %i.ab = mul nuw nsw i64 %i.t, 3
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %i.v) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 3 uses
  br i1 %i.ad, label %.invoke77, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.af, align 8, !alias.scope !747, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.ae, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke77:                                        ; preds = %bb.h, %bb.f
  %i.ag = phi ptr [ @156, %bb.f ], [ @159, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #20
          to label %.cont78 unwind label %bb.b

.cont78:                                          ; preds = %.invoke77
  unreachable

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ah = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  %i.ai = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.aj = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ak, align 8, !alias.scope !747, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.am(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 2 %.val.i63, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceB11_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !759)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !759, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !759, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = zext i32 %i.f to i64
  %i.i = mul nuw i64 %i.h, %i.g                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.j, align 8, !alias.scope !759, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.i, %.val3.i
  br i1 %.not.i, label %bb.b, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !759
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !759, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color4LumahEB18_EBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.i, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @45)
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val9.i.i = load i64, ptr %i.l, align 8, !alias.scope !762, !noundef !5
  %.not.i.i = icmp ugt i64 %i.i, %.val9.i.i
  br i1 %.not.i.i, label %bb.c, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit

bb.c:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread unwind label %bb.d, !noalias !763

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.e, !noalias !763

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !763
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.m

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread: ; preds = %bb.c
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !763
  br label %bb.f

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !764 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.g:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !765
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !765
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !765
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceIB12_fEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !777, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !777, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = zext i32 %i.f to i64
  %i.i = mul nuw i64 %i.h, %i.g                   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.j, align 8, !alias.scope !777, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.i, %.val3.i
  br i1 %.not.i, label %bb.b, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.i, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !777
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !777, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color4LumahEIB19_fEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.i, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @46)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
end_hunk_2
begin_hunk_3_@_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE19cast_in_color_spaceINtB14_5LumaAhEEBa_:bb.a
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1377
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1377
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE19cast_in_color_spaceINtB14_5LumaAtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1389, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1389, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !1389, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !1389
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !1389
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1389, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color4RgbafEINtB1b_5LumaAtEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @80)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !1392, !noundef !5
  %i.p = shl nuw nsw i64 %i.g, 1
  %i.q = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 %i.i) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %.not.i.i = icmp ugt i64 %i.s, %.val10.i.i
  %or.cond.i.i = or i1 %i.r, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !1393

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !1393

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !1393
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1393
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !1394 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !1395
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1395
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1395
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE21copy_from_color_spaceB11_B1m_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val45 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val46 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val45, %.val
  %i.g = icmp ne i32 %.val46, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val47 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val48 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val48 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val47 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1403
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !1403, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1403, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1403
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color4RgbafEB1q_EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1403
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val45 to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = zext i32 %.val46 to i64
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 5 uses
  br i1 %i.x, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !1405, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
          to label %.noexc59 unwind label %bb.b

.noexc59:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.aa, align 8, !alias.scope !1406, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.y, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ab = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.ac = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1405, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ae, align 8, !alias.scope !1406, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ag(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 4 %.val.i63, i64 noundef %i.y)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE21copy_from_color_spaceINtB14_3RgbfEB1m_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val47 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val48 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val47, %.val
  %i.g = icmp ne i32 %.val48, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke77, %.invoke, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val45 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val46 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val46 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val45 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val49 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val50 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1414
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !1414, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1414, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1414
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color3RgbfEINtB1t_4RgbafEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1414
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val47 to i64                  ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 3
  %i.v = zext i32 %.val48 to i64                  ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  br i1 %i.x, label %.invoke77, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !1416, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !1416, !nonnull !5, !noundef !5
  %i.ab = shl nuw nsw i64 %i.t, 2
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %i.v) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 3 uses
  br i1 %i.ad, label %.invoke77, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.af, align 8, !alias.scope !1417, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.ae, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke77:                                        ; preds = %bb.h, %bb.f
  %i.ag = phi ptr [ @156, %bb.f ], [ @159, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #20
          to label %.cont78 unwind label %bb.b

.cont78:                                          ; preds = %.invoke77
  unreachable

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ah = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  %i.ai = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.aj = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ak, align 8, !alias.scope !1417, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.am(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 4 %.val.i63, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceB11_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1429, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1429, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !1429, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !1429
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !1429
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1429, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color4RgbahEB18_EBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @81)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !1432, !noundef !5
  %.not.i.i = icmp ugt i64 %i.l, %.val10.i.i
  br i1 %.not.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !1433

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !1433

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !1433
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.p

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1433
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !1434 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !1435
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1435
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1435
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceIB12_fEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1447, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1447, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

end_hunk_3
begin_hunk_4_@_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceINtB14_5LumaAhEEBa_:bb.a
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1615
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1615
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceINtB14_5LumaAtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1627)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1627, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1627, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !1627, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !1627
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !1627
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1627, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color4RgbahEINtB1b_5LumaAtEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @92)
  call void @llvm.experimental.noalias.scope.decl(metadata !1628)
  call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !1630, !noundef !5
  %i.p = shl nuw nsw i64 %i.g, 1
  %i.q = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 %i.i) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %.not.i.i = icmp ugt i64 %i.s, %.val10.i.i
  %or.cond.i.i = or i1 %i.r, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !1631

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !1631

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !1631
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1631
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !1632 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !1633
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1633
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1633
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE21copy_from_color_spaceB11_B1m_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val45 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val46 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val45, %.val
  %i.g = icmp ne i32 %.val46, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val47 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val48 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val48 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val47 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1641
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !1641, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1641, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1641
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color4RgbahEB1q_EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1641
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val45 to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = zext i32 %.val46 to i64
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 5 uses
  br i1 %i.x, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !1643, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
          to label %.noexc59 unwind label %bb.b

.noexc59:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.aa, align 8, !alias.scope !1644, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.y, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ab = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.ac = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1643, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ae, align 8, !alias.scope !1644, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ag(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull %.val.i63, i64 noundef %i.y)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE21copy_from_color_spaceINtB14_3RgbhEB1m_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val47 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val48 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val47, %.val
  %i.g = icmp ne i32 %.val48, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke77, %.invoke, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val45 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val46 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val46 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val45 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val49 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val50 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1652
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !1652, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1652, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1652
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color3RgbhEINtB1t_4RgbahEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1652
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val47 to i64                  ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 3
  %i.v = zext i32 %.val48 to i64                  ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  br i1 %i.x, label %.invoke77, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !1654, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !1654, !nonnull !5, !noundef !5
  %i.ab = shl nuw nsw i64 %i.t, 2
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %i.v) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 3 uses
  br i1 %i.ad, label %.invoke77, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.af, align 8, !alias.scope !1655, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.ae, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke77:                                        ; preds = %bb.h, %bb.f
  %i.ag = phi ptr [ @156, %bb.f ], [ @159, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #20
          to label %.cont78 unwind label %bb.b

.cont78:                                          ; preds = %.invoke77
  unreachable

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ah = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  %i.ai = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.aj = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ak, align 8, !alias.scope !1655, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.am(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull %.val.i63, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceB11_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1667, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1667, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !1667, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !1667
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !1667
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1667, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color4RgbatEB18_EBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @93)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !1670, !noundef !5
  %.not.i.i = icmp ugt i64 %i.l, %.val10.i.i
  br i1 %.not.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !1671

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !1671

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !1671
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.p

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1671
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !1672 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !1673
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1673
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1673
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceIB12_fEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1685, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1685, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

end_hunk_4
begin_hunk_5_@_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceINtB14_5LumaAhEEBa_:bb.a
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1853
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1853
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceINtB14_5LumaAtEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1865, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1865, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !1865, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !1865
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !1865
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1865, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color4RgbatEINtB1b_5LumaAtEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @104)
  call void @llvm.experimental.noalias.scope.decl(metadata !1866)
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !1868, !noundef !5
  %i.p = shl nuw nsw i64 %i.g, 1
  %i.q = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 %i.i) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %.not.i.i = icmp ugt i64 %i.s, %.val10.i.i
  %or.cond.i.i = or i1 %i.r, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !1869

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !1869

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !1869
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1869
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !1870 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !1871
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1871
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1871
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE21copy_from_color_spaceB11_B1m_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val45 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val46 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val45, %.val
  %i.g = icmp ne i32 %.val46, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke, %bb.h, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val49 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val50 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val47 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val48 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val48 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val47 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1879
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !1879, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1879, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1879
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color4RgbatEB1q_EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1879
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val45 to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = zext i32 %.val46 to i64
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 5 uses
  br i1 %i.x, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !1881, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.i, !prof !7

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
          to label %.noexc59 unwind label %bb.b

.noexc59:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.aa, align 8, !alias.scope !1882, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.y, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ab = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.ac = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1881, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ae, align 8, !alias.scope !1882, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ag(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 2 %.val.i63, i64 noundef %i.y)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE21copy_from_color_spaceINtB14_3RgbtEB1m_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(792) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val47 = load i32, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val48 = load i32, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i32, ptr %i.d, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.val44 = load i32, ptr %i.e, align 4, !noundef !5
  %i.f = icmp ne i32 %.val47, %.val
  %i.g = icmp ne i32 %.val48, %.val44
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.m, label %bb.c

bb.b:                                             ; preds = %.invoke77, %.invoke, %bb.d, %bb.c, %bb.j
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %.val45 = load i8, ptr %i.i, align 1, !range !9, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 34
  %.val46 = load i8, ptr %i.j, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i = zext nneg i8 %.val46 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 24
  %.sroa.2.0.insert.ext.i = zext nneg i8 %.val45 to i32
  %.sroa.2.0.insert.shift.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i, 8
  %.sroa.2.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.shift.i, %.sroa.4.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.2.0.insert.insert.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.val49 = load i8, ptr %i.k, align 1, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.val50 = load i8, ptr %i.l, align 2, !range !10, !noundef !5
  %.sroa.4.0.insert.ext.i51 = zext nneg i8 %.val50 to i32
  %.sroa.4.0.insert.shift.i52 = shl nuw nsw i32 %.sroa.4.0.insert.ext.i51, 24
  %.sroa.2.0.insert.ext.i53 = zext nneg i8 %.val49 to i32
  %.sroa.2.0.insert.shift.i54 = shl nuw nsw i32 %.sroa.2.0.insert.ext.i53, 8
  %.sroa.2.0.insert.insert.i55 = or disjoint i32 %.sroa.2.0.insert.shift.i54, %.sroa.4.0.insert.shift.i52
  %.sroa.0.0.insert.insert.i56 = or disjoint i32 %.sroa.2.0.insert.insert.i55, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1890
  invoke void @_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(792) %3, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i, i32 noundef range(i32 16777216, 369106944) %.sroa.0.0.insert.insert.i56)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %i.m = load i8, ptr %i.a, align 8, !range !11, !noalias !1890, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1890, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1890
  %i.p = invoke { ptr, ptr } @_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform22supported_transform_fnINtNtBa_5color3RgbtEINtB1t_4RgbatEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(792) %i.o)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %.noexc
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.420.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.736.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.736.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.15.16..sroa.622.0..sroa_idx.i.sroa_idx, i64 40, i1 false)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x ptr>, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1890
  store i8 %i.m, ptr %0, align 8
  store <2 x ptr> %i.q, ptr %.sroa.534.0..sroa_idx, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  %i.t = zext i32 %.val47 to i64                  ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 3
  %i.v = zext i32 %.val48 to i64                  ; 2 uses
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 3 uses
  br i1 %i.x, label %.invoke77, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !1892, !noundef !5 ; 2 uses
  %.not.i58 = icmp ugt i64 %i.y, %.val3.i
  br i1 %.not.i58, label %.invoke, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i = load ptr, ptr %i.aa, align 8, !alias.scope !1892, !nonnull !5, !noundef !5
  %i.ab = shl nuw nsw i64 %i.t, 2
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ab, i64 %i.v) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = extractvalue { i64, i1 } %i.ac, 0       ; 3 uses
  br i1 %i.ad, label %.invoke77, label %bb.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i61 = load i64, ptr %i.af, align 8, !alias.scope !1893, !noundef !5 ; 2 uses
  %.not.i62 = icmp ugt i64 %i.ae, %.val3.i61
  br i1 %.not.i62, label %.invoke, label %bb.j, !prof !7

.invoke77:                                        ; preds = %bb.h, %bb.f
  %i.ag = phi ptr [ @156, %bb.f ], [ @159, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #20
          to label %.cont78 unwind label %bb.b

.cont78:                                          ; preds = %.invoke77
  unreachable

.invoke:                                          ; preds = %bb.i, %bb.g
  %i.ah = phi i64 [ %i.y, %bb.g ], [ %i.ae, %bb.i ]
  %i.ai = phi i64 [ %.val3.i, %bb.g ], [ %.val3.i61, %bb.i ]
  %i.aj = phi ptr [ @157, %bb.g ], [ @160, %bb.i ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ah, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i63 = load ptr, ptr %i.ak, align 8, !alias.scope !1893, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.am(ptr noundef nonnull %i.r, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.y, ptr noalias nofree noundef nonnull align 2 %.val.i63, i64 noundef %i.ae)
          to label %bb.k unwind label %bb.b

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.m, %bb.k
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %3)
  ret void

bb.m:                                             ; preds = %bb.a
  store i8 6, ptr %0, align 8
  %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.sroa.0.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.n:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images6buffer19ConvertColorOptionsEBH_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceB11_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1905, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1905, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !1905, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !1905
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !1905
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !1905, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAhEB18_EBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105)
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !1908, !noundef !5
  %.not.i.i = icmp ugt i64 %i.l, %.val10.i.i
  br i1 %.not.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !1909

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !1909

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !1909
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.p

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1909
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !1910 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !1911
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !1911
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !1911
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE19cast_in_color_spaceIB12_fEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !1923, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !1923, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = zext i32 %i.f to i64
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

end_hunk_5
begin_hunk_6_@_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceINtB14_4RgbahEEBa_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsR_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB6_11ImageBufferINtNtBa_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE19cast_in_color_spaceINtB14_4RgbatEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !2319, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !alias.scope !2319, !noundef !5 ; 2 uses
  %i.g = zext i32 %i.d to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = zext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.i) ; 2 uses
  %i.k = extractvalue { i64, i1 } %i.j, 1
  %i.l = extractvalue { i64, i1 } %i.j, 0         ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i = load i64, ptr %i.m, align 8, !alias.scope !2319, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.l, %.val3.i
  br i1 %.not.i, label %bb.d, label %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20, !noalias !2319
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.l, i64 noundef %.val3.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20, !noalias !2319
  unreachable

_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !2319, !nonnull !5, !noundef !5
  call void @_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb11cast_pixelsINtNtBa_5color5LumaAtEINtB1b_4RgbatEEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.b, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %i.l, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @128)
  call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  call void @llvm.experimental.noalias.scope.decl(metadata !2321)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val10.i.i = load i64, ptr %i.o, align 8, !alias.scope !2322, !noundef !5
  %i.p = shl nuw nsw i64 %i.g, 2
  %i.q = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.p, i64 %i.i) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  %i.s = extractvalue { i64, i1 } %i.q, 0
  %.not.i.i = icmp ugt i64 %i.s, %.val10.i.i
  %or.cond.i.i = or i1 %i.r, %.not.i.i
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit

bb.e:                                             ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread unwind label %bb.f, !noalias !2323

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.g, !noalias !2323

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2323
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %bb.f
  resume { ptr, i32 } %i.t

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !2323
  br label %bb.h

_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit: ; preds = %_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE12inner_pixelsB9_.exit
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8, !alias.scope !2324 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit.thread, %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.i:                                             ; preds = %_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE8from_vecB9_.exit
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  %.sroa.7.32.copyload = load i8, ptr %i.b, align 8, !alias.scope !2325
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 33
  %.sroa.9.32.copyload = load i8, ptr %.sroa.9.32..sroa_idx, align 1, !alias.scope !2325
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %.sroa.10.32.copyload = load i8, ptr %.sroa.10.32..sroa_idx, align 2, !alias.scope !2325
  store i64 %.sroa.0.0.copyload1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.f, ptr %.sroa.66.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.7.32.copyload, ptr %.sroa.7.0..sroa_idx7, align 8
  %.sroa.9.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.sroa.9.32.copyload, ptr %.sroa.9.0..sroa_idx8, align 1
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sroa.10.32.copyload, ptr %.sroa.10.0..sroa_idx9, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB5_9TagReaderINtB7_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE17find_tag_uint_vechECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef range(i16 -32104, 532) %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.7 = alloca [31 x i8], align 1     ; 4 uses
  %.sroa.11 = alloca [31 x i8], align 1           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = alloca [4 x i8], align 2                 ; 3 uses
  store i16 %2, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %3, ptr %i.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2330
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2329, !nonnull !5, !align !12, !noundef !5
  %i.l = tail call noundef align 8 ptr @_RNvMNtCs53gkmrwjETj_4tiff9directoryNtB2_9Directory3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, i16 noundef range(i16 -32104, 532) %2, i16 %3), !noalias !2330 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread, label %bb.b

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2330
  br label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2330
  %i.m = load ptr, ptr %1, align 8, !alias.scope !2329, !nonnull !5, !align !12, !noundef !5
  call void @_RNvXNtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_12EntryDecoder9entry_valCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !2330
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noalias !2330, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.8.copyload101 = load i8, ptr %i.p, align 8, !noalias !2329 ; 2 uses
  %.sroa.11.8..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11.8..sroa_idx102, i64 31, i1 false), !noalias !2329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2330
  br i1 %i.o, label %bb.c, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.450.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  store i8 %.sroa.6.8.copyload101, ptr %0, align 8
  br label %bb.j

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.6.1105 = phi i8 [ -1, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.6.8.copyload101, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.not = icmp eq i8 %.sroa.6.1105, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %.sroa.6.1105, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value12into_u64_vec(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f)
  %.sroa.010.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.8.sroa.8.sroa.8.0..sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8.sroa.8.sroa.8.0.copyload = load i64, ptr %.sroa.8.sroa.8.sroa.8.0..sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not99 = icmp eq i64 %.sroa.010.0.copyload, -1
  br i1 %.not99, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store i64 %.sroa.010.0.copyload, ptr %0, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %.sroa.492.0..sroa_idx, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.sroa.8.sroa.0.0.copyload, ptr %.sroa.593.0..sroa_idx, align 8
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.sroa.8.sroa.8.0.copyload, ptr %.sroa.694.0..sroa_idx, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.8.sroa.0.0.copyload) ]
  %i.q = icmp ult i64 %.sroa.8.sroa.8.sroa.8.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.8.sroa.8.0.copyload
  %i.s = icmp sgt i64 %.sroa.8.sroa.0.0.copyload, -1
  call void @llvm.assume(i1 %i.s)
  store ptr %.sroa.8.sroa.8.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.sroa.8.sroa.0.0.copyload, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.r, ptr %.sroa.690.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.t, align 8
  call void @_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB26_9TagReaderINtB28_11ValueReaderINtNtNtB6_2io6cursor6CursorRShEEE17find_tag_uint_vechEs_00EhINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2a_5error9TiffErrorENCINvXso_B4p_IB4n_INtB1b_3VechEB59_EINtNtNtB4_6traits7collect12FromIteratorIB4n_hB59_EE9from_iterBQ_E0B5Q_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.not100 = icmp eq i64 %.sroa.0.0.copyload, -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br i1 %.not100, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB5_9TagReaderINtB7_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE17find_tag_uint_vectECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef range(i16 -32104, 532) %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.7 = alloca [31 x i8], align 1     ; 4 uses
  %.sroa.11 = alloca [31 x i8], align 1           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = alloca [4 x i8], align 2                 ; 3 uses
  store i16 %2, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  store i16 %3, ptr %i.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2335
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2334, !nonnull !5, !align !12, !noundef !5
  %i.l = tail call noundef align 8 ptr @_RNvMNtCs53gkmrwjETj_4tiff9directoryNtB2_9Directory3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k, i16 noundef range(i16 -32104, 532) %2, i16 %3), !noalias !2335 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread, label %bb.b

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2335
  br label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2335
  %i.m = load ptr, ptr %1, align 8, !alias.scope !2334, !nonnull !5, !align !12, !noundef !5
  call void @_RNvXNtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_12EntryDecoder9entry_valCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !2335
  %i.n = load i64, ptr %i.a, align 8, !range !13, !noalias !2335, !noundef !5
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.8.copyload101 = load i8, ptr %i.p, align 8, !noalias !2334 ; 2 uses
  %.sroa.11.8..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11.8..sroa_idx102, i64 31, i1 false), !noalias !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2335
  br i1 %i.o, label %bb.c, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.450.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  store i8 %.sroa.6.8.copyload101, ptr %0, align 8
  br label %bb.j

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.6.1105 = phi i8 [ -1, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.6.8.copyload101, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.not = icmp eq i8 %.sroa.6.1105, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 %.sroa.6.1105, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB2_5Value12into_u64_vec(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f)
  %.sroa.010.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.8.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.8.sroa.8.sroa.8.0..sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8.sroa.8.sroa.8.0.copyload = load i64, ptr %.sroa.8.sroa.8.sroa.8.0..sroa.8.sroa.8.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not99 = icmp eq i64 %.sroa.010.0.copyload, -1
  br i1 %.not99, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store i64 %.sroa.010.0.copyload, ptr %0, align 8
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %.sroa.492.0..sroa_idx, align 8
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.sroa.8.sroa.0.0.copyload, ptr %.sroa.593.0..sroa_idx, align 8
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.sroa.8.sroa.8.0.copyload, ptr %.sroa.694.0..sroa_idx, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.8.sroa.0.0.copyload) ]
  %i.q = icmp ult i64 %.sroa.8.sroa.8.sroa.8.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.sroa.8.sroa.0.0.copyload, i64 %.sroa.8.sroa.8.sroa.8.0.copyload
  %i.s = icmp sgt i64 %.sroa.8.sroa.0.0.copyload, -1
  call void @llvm.assume(i1 %i.s)
  store ptr %.sroa.8.sroa.8.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.sroa.8.sroa.0.0.copyload, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.8.sroa.0.0.copyload, ptr %.sroa.589.0..sroa_idx, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.r, ptr %.sroa.690.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.h, ptr %i.t, align 8
  call void @_RINvNtNtCsj6eKBz9Db1c_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIteryENCNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB26_9TagReaderINtB28_11ValueReaderINtNtNtB6_2io6cursor6CursorRShEEE17find_tag_uint_vectEs_00EtINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2a_5error9TiffErrorENCINvXso_B4p_IB4n_INtB1b_3VectEB59_EINtNtNtB4_6traits7collect12FromIteratorIB4n_tB59_EE9from_iterBQ_E0B5Q_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.not100 = icmp eq i64 %.sroa.0.0.copyload, -1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br i1 %.not100, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB8_6marker4SendNtB2q_4SyncEL_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitBU_ENCINvMB3b_B38_10wrap_mut_1By_NvMBB_By_6unwrapE0ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.e, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2342
  call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2342
  store ptr %i.d, ptr %i.b, align 8, !noalias !2344
  %i.i = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !noalias !2345 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %storemerge10.lcssa.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2r_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr nonnull align 8 %i.c, i64 %storemerge10.lcssa.i.i) #22
          to label %.body unwind label %bb.f, !noalias !2346

bb.c:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 0
  %i.l = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !2343, !noalias !2342
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !2343, !noalias !2342
  %i.n = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 1)
          to label %bb.d unwind label %bb.b, !noalias !2345 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !2343, !noalias !2342
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.p, ptr %i.r, align 8, !alias.scope !2343, !noalias !2342
  %i.s = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 2)
          to label %bb.e unwind label %bb.b, !noalias !2345 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !2343, !noalias !2342
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.u, ptr %i.w, align 8, !alias.scope !2343, !noalias !2342
  %i.x = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 3)
          to label %bb.g unwind label %bb.b, !noalias !2345 ; 2 uses

bb.f:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2346
  unreachable

.body:                                            ; preds = %bb.b
  invoke void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core5array5drainINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2I_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3l_17NeverShortCircuitB1c_E10wrap_mut_1BQ_NvMBT_BQ_6unwrapE0ENtNtB3n_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2V_4SyncEL_EENCINvMNtNtB4_3ops9try_traitINtB3y_17NeverShortCircuitB1p_E10wrap_mut_1B13_NvMB16_B13_6unwrapE0EECsa5QsYiPB8Gl_5image.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %i.aa = extractvalue { ptr, ptr } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !2343, !noalias !2342
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %i.aa, ptr %i.ac, align 8, !alias.scope !2343, !noalias !2342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2342
  call void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core5array5drainINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB9_6marker4SendNtB2I_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3l_17NeverShortCircuitB1c_E10wrap_mut_1BQ_NvMBT_BQ_6unwrapE0ENtNtB3n_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2V_4SyncEL_EENCINvMNtNtB4_3ops9try_traitINtB3y_17NeverShortCircuitB1p_E10wrap_mut_1B13_NvMB16_B13_6unwrapE0EECsa5QsYiPB8Gl_5image.exit: ; preds = %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayAINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB8_6marker4SendNtB2q_4SyncEL_EEj4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitBU_ENCINvMB3b_B38_10wrap_mut_1By_NvMBB_By_6unwrapE0ECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 12 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.e, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2354
  call void @llvm.experimental.noalias.scope.decl(metadata !2355)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2354
  store ptr %i.d, ptr %i.b, align 8, !noalias !2356
  %i.i = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !noalias !2357 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %storemerge10.lcssa.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2r_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr nonnull align 8 %i.c, i64 %storemerge10.lcssa.i.i) #22
          to label %.body unwind label %bb.f, !noalias !2358

bb.c:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 0
  %i.l = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !2355, !noalias !2354
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !2355, !noalias !2354
  %i.n = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 1)
          to label %bb.d unwind label %bb.b, !noalias !2357 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !2355, !noalias !2354
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.p, ptr %i.r, align 8, !alias.scope !2355, !noalias !2354
  %i.s = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 2)
          to label %bb.e unwind label %bb.b, !noalias !2357 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.t = extractvalue { ptr, ptr } %i.s, 0
  %i.u = extractvalue { ptr, ptr } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !2355, !noalias !2354
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.u, ptr %i.w, align 8, !alias.scope !2355, !noalias !2354
  %i.x = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2J_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3m_17NeverShortCircuitB1d_E10wrap_mut_1BR_NvMBU_BR_6unwrapE0EINtNtB3o_8function5FnMutTjEE8call_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 3)
          to label %bb.g unwind label %bb.b, !noalias !2357 ; 2 uses

bb.f:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2357
  unreachable

.body:                                            ; preds = %bb.b
  invoke void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core5array5drainINtB5_5DrainINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB2I_4SyncEL_EENCINvMNtNtB9_3ops9try_traitINtB3l_17NeverShortCircuitB1c_E10wrap_mut_1BQ_NvMBT_BQ_6unwrapE0ENtNtB3n_4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2V_4SyncEL_EENCINvMNtNtB4_3ops9try_traitINtB3y_17NeverShortCircuitB1p_E10wrap_mut_1B13_NvMB16_B13_6unwrapE0EECsa5QsYiPB8Gl_5image.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
end_hunk_6
begin_hunk_7_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformstEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEBH_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.o ], [ %eh.lpad-body.i, %.body.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformsfEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.q) #22
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformshEEBI_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.n, %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2740
  unreachable

bb.q:                                             ; preds = %bb.n
  resume { ptr, i32 } %.pn.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformshEEBI_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformsfEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.t)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecfEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecfEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !5
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !17, !invariant.load !5
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !5
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !17, !invariant.load !5
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !5
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !17, !invariant.load !5
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !16, !invariant.load !5
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !17, !invariant.load !5
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_EEB1h_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit: ; preds = %bb.c, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit5, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit5

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit5: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(29416) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder9ImageInfoECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(224) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %.body unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.g, %bb.g ], [ %i.d, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #22
          to label %.body6 unwind label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.body6 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

.body6:                                           ; preds = %bb.j, %bb.h, %.body
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.l, %bb.j ], [ %i.i, %bb.h ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #22
          to label %.body8 unwind label %bb.q

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body8 unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body8:                                           ; preds = %bb.n, %bb.k, %.body6
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body6 ], [ %i.q, %bb.n ], [ %i.n, %bb.k ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #22
          to label %common.resume unwind label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body8, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.o ], [ %.pn4, %.body8 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
  ret void

bb.q:                                             ; preds = %.body8, %.body6, %.body, %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(29424) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder9ImageInfoECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(224) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %.body unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.b
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCNvMBZ_INtBZ_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image:bb.a
  %i.g = mul nuw nsw i64 %..i, 56                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.u, %.preheader ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.s, %.preheader ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -56 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -8
  %.val.i = load i32, ptr %i.n, align 8, !noalias !2799, !noundef !5
  %i.o = getelementptr i8, ptr %i.j, i64 -8
  %.val12.i = load i32, ptr %i.o, align 8, !noalias !2799, !noundef !5
  %i.p = icmp ult i32 %.val.i, %.val12.i          ; 3 uses
  %..i17 = select i1 %i.p, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i17, i64 56, i1 false), !noalias !2799
  %i.q = xor i1 %i.p, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.r ; 3 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.t ; 3 uses
  %i.v = icmp eq ptr %i.s, %0
  %i.w = icmp eq ptr %i.u, %2
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.x = phi ptr [ %i.ah, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.e, %.critedge ] ; 3 uses
  %i.y = phi ptr [ %i.ae, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.0.02.i, i64 48
  %.sroa.0.0.val.i = load i32, ptr %i.z, align 8, !noalias !2800, !noundef !5
  %i.aa = getelementptr i8, ptr %i.y, i64 48
  %.val.i19 = load i32, ptr %i.aa, align 8, !noalias !2800, !noundef !5
  %i.ab = icmp ult i32 %.sroa.0.0.val.i, %.val.i19 ; 3 uses
  %i.ac = xor i1 %i.ab, true
  %.sroa.05.0.i = select i1 %i.ab, ptr %.sroa.0.02.i, ptr %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.0.i, i64 56, i1 false), !noalias !2800
  %i.ad = zext i1 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %i.ad ; 3 uses
  %i.af = zext i1 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ai = icmp ne ptr %i.ae, %i.h
  %i.aj = icmp ne ptr %i.ag, %i.f
  %or.cond.i20 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.s, %.preheader ], [ %i.ah, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.u, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.7.0 to i64
  %i.al = ptrtoint ptr %.sroa.0.0 to i64
  %i.am = sub nuw i64 %i.ak, %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.am, i1 false), !noalias !2801
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %..i, 4                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.v, %.preheader ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 2 uses
  %.val.i = load i64, ptr %i.l, align 8, !noalias !2810, !noundef !5 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -8
  %.val12.i = load i64, ptr %i.n, align 8, !noalias !2810
  %.val13.i = load i64, ptr %i.k, align 8, !noalias !2810, !noundef !5 ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -8
  %.val14.i = load i64, ptr %i.o, align 8, !noalias !2810
  %i.p = icmp eq i64 %.val.i, %.val13.i
  %i.q = icmp ult i64 %.val12.i, %.val14.i
  %i.r = icmp ult i64 %.val.i, %.val13.i
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r         ; 3 uses
  %..i17 = select i1 %i.s, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %..i17, i64 16, i1 false), !noalias !2810
  %i.t = xor i1 %i.s, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = zext i1 %i.s to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.w ; 3 uses
  %i.y = icmp eq ptr %i.v, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.an, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.ak, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !noalias !2811, !noundef !5 ; 2 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val6.i = load i64, ptr %i.ac, align 8, !noalias !2811
  %.val.i19 = load i64, ptr %i.ab, align 8, !noalias !2811, !noundef !5 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i = load i64, ptr %i.ad, align 8, !noalias !2811
  %i.ae = icmp eq i64 %.sroa.0.0.val.i, %.val.i19
  %i.af = icmp ult i64 %.sroa.0.0.val6.i, %.val7.i
  %i.ag = icmp ult i64 %.sroa.0.0.val.i, %.val.i19
  %i.ah = select i1 %i.ae, i1 %i.af, i1 %i.ag     ; 3 uses
  %i.ai = xor i1 %i.ah, true
  %.sroa.05.0.i = select i1 %i.ah, ptr %.sroa.0.02.i, ptr %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i, i64 16, i1 false), !noalias !2811
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aj ; 3 uses
  %i.al = zext i1 %i.ah to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.h
  %i.ap = icmp ne ptr %i.am, %i.f
  %or.cond.i20 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.v, %.preheader ], [ %i.an, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.x, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.7.0 to i64
  %i.ar = ptrtoint ptr %.sroa.0.0 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.as, i1 false), !noalias !2812
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNtB7_3map12map_try_foldjINtNtB7_3zip3ZipINtB2c_3MapIBX_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3g_6images6bufferINtB43_11ImageBufferINtNtB3g_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB9_7sources6repeat6RepeatjEEjINtNtB11_12control_flow11ControlFlowujENCB3b_0NCINvNvMsg_NtB7_7flattenINtB7v_13FlattenCompatppE13iter_try_fold7flattenB2A_jB6A_INvNvXsi_B7v_B7I_B1p_10advance_by7advanceB2A_EE0E0B6A_EB3g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !alias.scope !2849, !noundef !5 ; 3 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !2850 ; 2 uses
  %i.e = icmp ult i64 %i.d, %.promoted.i
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters3map12map_try_foldjINtNtB1Z_3zip3ZipINtB1X_3MapIB4_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3d_6images6bufferINtB40_11ImageBufferINtNtB3d_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBR_7sources6repeat6RepeatjEEjINtNtB8_12control_flow11ControlFlowujENCB38_0NCINvNvMsg_NtB1Z_7flattenINtB7r_13FlattenCompatppE13iter_try_fold7flattenB2w_jB6x_INvNvXsi_B7r_B7F_NtNtBP_8iterator8Iterator10advance_by7advanceB2w_EE0E0B6x_EB3d_.exit

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %.sroa.3.sroa.8.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.3.sroa.4.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.sroa.3.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %.sroa.3.sroa.7.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %bb.b

.loopexit.i:                                      ; preds = %.preheader.i.i
  %i.f = icmp ult i64 %i.d, %i.h
  br i1 %i.f, label %bb.b, label %.loopexit7.sink.split.i

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.01.09.i = phi i64 [ %1, %.lr.ph.i ], [ %.sroa.01.0.i.i.i.i.i.i.i.i, %.loopexit.i ] ; 2 uses
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.h, %.loopexit.i ]
  %i.h = add i64 %i.g, -1                         ; 6 uses
  %.val.i.i = load ptr, ptr %.val1, align 8, !noalias !2848, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = load i8, ptr %.val.i.i, align 1, !noalias !2851, !noundef !5 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.c, align 8, !alias.scope !2850
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #20, !noalias !2851
  unreachable

_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i: ; preds = %bb.b
  %i.k = udiv i8 8, %i.i                          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.8.0..8.val.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !2848
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  store ptr %.val.i.i, ptr %.val, align 8, !alias.scope !2852, !noalias !2848
  store i8 0, ptr %.sroa.3.sroa.4.0..8.val.sroa_idx.i.i, align 8, !alias.scope !2852, !noalias !2848
  store i8 %i.k, ptr %.sroa.3.sroa.5.0..8.val.sroa_idx.i.i, align 1, !alias.scope !2852, !noalias !2848
  store i64 %i.h, ptr %.sroa.3.sroa.7.0..8.val.sroa_idx.i.i, align 8, !alias.scope !2852, !noalias !2848
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.09.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit7.sink.split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i, %bb.d
  %i.l = phi i8 [ %i.m, %bb.d ], [ 0, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.sroa.01.09.i, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.l, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.m = add nuw nsw i8 %i.l, 1                   ; 2 uses
  store i8 %i.m, ptr %.sroa.3.sroa.4.0..8.val.sroa_idx.i.i, align 8, !alias.scope !2853, !noalias !2854
  %i.n = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, -1  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.loopexit7.sink.split.i, label %.preheader.i.i

.loopexit7.sink.split.i:                          ; preds = %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i, %.loopexit.i, %bb.d
  %.lcssa25.sink.i = phi i64 [ %i.h, %bb.d ], [ %i.h, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ], [ %i.d, %.loopexit.i ]
  %.sroa.3.0.ph.i = phi i64 [ undef, %bb.d ], [ undef, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ], [ %.sroa.01.0.i.i.i.i.i.i.i.i, %.loopexit.i ]
  %.sroa.0.0.ph.i = phi i64 [ 1, %bb.d ], [ 1, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ], [ 0, %.loopexit.i ]
  store i64 %.lcssa25.sink.i, ptr %i.c, align 8, !alias.scope !2850
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters3map12map_try_foldjINtNtB1Z_3zip3ZipINtB1X_3MapIB4_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3d_6images6bufferINtB40_11ImageBufferINtNtB3d_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBR_7sources6repeat6RepeatjEEjINtNtB8_12control_flow11ControlFlowujENCB38_0NCINvNvMsg_NtB1Z_7flattenINtB7r_13FlattenCompatppE13iter_try_fold7flattenB2w_jB6x_INvNvXsi_B7r_B7F_NtNtBP_8iterator8Iterator10advance_by7advanceB2w_EE0E0B6x_EB3d_.exit

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters3map12map_try_foldjINtNtB1Z_3zip3ZipINtB1X_3MapIB4_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3d_6images6bufferINtB40_11ImageBufferINtNtB3d_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBR_7sources6repeat6RepeatjEEjINtNtB8_12control_flow11ControlFlowujENCB38_0NCINvNvMsg_NtB1Z_7flattenINtB7r_13FlattenCompatppE13iter_try_fold7flattenB2w_jB6x_INvNvXsi_B7r_B7F_NtNtBP_8iterator8Iterator10advance_by7advanceB2w_EE0E0B6x_EB3d_.exit: ; preds = %bb.a, %.loopexit7.sink.split.i
  %.sroa.3.0.i = phi i64 [ %1, %bb.a ], [ %.sroa.3.0.ph.i, %.loopexit7.sink.split.i ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph.i, %.loopexit7.sink.split.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsc_NtNtCsa5QsYiPB8Gl_5image6traits7privatehNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbhEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformshE16select_transformINtNtBa_5color3RgbhEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, i8 noundef %1) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.d, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsc_NtNtCsa5QsYiPB8Gl_5image6traits7privatehNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbahEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformshE16select_transformINtNtBa_5color4RgbahEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, i8 noundef %1) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.d, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsd_NtNtCsa5QsYiPB8Gl_5image6traits7privatetNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbtEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformstE16select_transformINtNtBa_5color3RgbtEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsd_NtNtCsa5QsYiPB8Gl_5image6traits7privatetNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbatEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformstE16select_transformINtNtBa_5color4RgbatEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXse_NtNtCsa5QsYiPB8Gl_5image6traits7privatefNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbfEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformsfE16select_transformINtNtBa_5color3RgbfEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXse_NtNtCsa5QsYiPB8Gl_5image6traits7privatefNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbafEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformsfE16select_transformINtNtBa_5color4RgbafEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2878
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !2881, !noundef !5 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !2881, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, i8 noundef 3, i32 noundef %i.l, i32 noundef %i.n), !noalias !2882
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !2881, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.q, align 8, !alias.scope !2881, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !2879, !noalias !2878
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.r, align 8, !alias.scope !2879, !noalias !2878
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.s, align 8, !alias.scope !2879, !noalias !2878
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRSfE9into_viewINtNtBa_5color3RgbfEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !2878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2878
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.u = load i8, ptr %i.t, align 8, !range !19, !noalias !2878, !noundef !5
  %i.v = icmp eq i8 %i.u, -2
  br i1 %i.v, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !2877 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !2877 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !2877 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !2877 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !2877 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !2877 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2878
  call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2885
  store i32 %3, ptr %i.d, align 4, !noalias !2885
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.w, align 4, !noalias !2885
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.x, align 4, !noalias !2885
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.y, align 4, !noalias !2885
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !2886
  %i.z = load i8, ptr %i.e, align 8, !range !11, !noalias !2885, !noundef !5
  %.not.i = icmp eq i8 %i.z, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !2887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2885
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2885
  %i.aa = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.ab = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !2883
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ad = mul nuw nsw i64 %i.ac, 3                ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !2884, !noundef !5
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !2889, !noundef !5
  %i.aj = mul nuw nsw i64 %i.ag, 3
  %i.ak = zext i32 %i.ai to i64
  %i.al = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 %i.ak) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0       ; 10 uses
  br i1 %i.am, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.ao, align 8, !alias.scope !2889, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.an, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !2890
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.an, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !2890
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i8 = load ptr, ptr %i.ap, align 8, !alias.scope !2889, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 3
  %i.ar = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.aq, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !2883
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.i to i32
  %i.at = add i32 %4, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ag
  %i.aw = add nuw i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 3                        ; 4 uses
  %i.ay = icmp ugt i64 %i.ax, %i.an
  br i1 %i.ay, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.az = sub nuw i64 %i.an, %i.ax                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ad, %i.az
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.an, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !2886
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !2886
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i8, i64 %i.ax
  %i.bb = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.be, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.bc, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.bd, %bb.o ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 12
  %i.bd = add nsw i64 %.sroa.737.068.i, -3        ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.bf = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bg = add i64 %i.bf, %i.bb                    ; 4 uses
  %i.bh = icmp ugt i64 %i.bg, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bh, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bi = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bg ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 2
  br i1 %i.bj, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bg, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !2886
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !2886
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bg
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implfECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 4 %.sroa.436.069.i, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bk, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !2886
  %.not.i.i.i = icmp ult i64 %i.bd, 3
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !2883
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bl = trunc nuw i64 %indvars.iv122.i to i32
  %i.bm = add i32 %4, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw i64 %i.bn, %i.ag
  %i.bp = add nuw i64 %i.bo, %i.ar
  %i.bq = mul i64 %i.bp, 3                        ; 4 uses
  %i.br = icmp ugt i64 %i.bq, %i.an
  br i1 %i.br, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.bs = sub nuw i64 %i.an, %i.bq                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i8, i64 %i.bq
  %.not33.i = icmp ugt i64 %i.ad, %i.bs
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.an, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !2886
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !2886
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bu = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bv = icmp ugt i64 %i.bu, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bv, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bw = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bu ; 2 uses
  %.not34.i = icmp ugt i64 %i.ad, %i.bw
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bu, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !2886
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !2886
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bu
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implfECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 4 %i.bt, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bx, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !2886
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %3, ptr %i.i, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %4, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.l, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.n, ptr %i.ca, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.cb = load i8, ptr %i.j, align 8, !range !11, !noundef !5
  %.not7 = icmp eq i8 %i.cb, -1
  br i1 %.not7, label %.split114, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split114:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split114
  %.not116 = icmp eq i32 %i.l, 0
  %i.cc = zext i32 %i.l to i64                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load i32, ptr %i.cd, align 8            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = zext i32 %i.ce to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i14 = load i64, ptr %i.ci, align 8    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i17 = load ptr, ptr %i.cj, align 8, !nonnull !5
  br i1 %.not116, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.ck = call i32 @llvm.usub.sat.i32(i32 %i.ce, i32 %3)
  %wide.trip.count176 = zext i32 %i.n to i64
  %wide.trip.count = zext i32 %i.ck to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split114
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv173 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next174, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.cl = mul nuw i64 %indvars.iv173, %i.cc       ; 2 uses
  %i.cm = trunc nuw i64 %indvars.iv173 to i32
  %i.cn = add i32 %4, %i.cm                       ; 3 uses
  %i.co = icmp uge i32 %i.cn, %i.cg
  %i.cp = zext i32 %i.cn to i64
  %i.cq = mul nuw i64 %i.ch, %i.cp
  %.fr = freeze i1 %i.co
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cr = mul i64 %i.cl, 3                        ; 4 uses
  %i.cs = add i64 %i.cr, 3                        ; 2 uses
  %i.ct = icmp ugt i64 %i.cr, -4
  %.not.i.i11.us = icmp ugt i64 %i.cs, %.val1.i.i
  %or.cond14.i.i.us = or i1 %i.ct, %.not.i.i11.us
  br i1 %or.cond14.i.i.us, label %.split90.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, !prof !7

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cr
  %i.cv = call noundef nonnull align 4 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbfENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cu, i64 noundef 3), !noalias !2891 ; 0 uses
  br label %.split93

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cw = add nuw i64 %i.cl, %indvars.iv
  %i.cx = mul i64 %i.cw, 3                        ; 4 uses
  %i.cy = add i64 %i.cx, 3                        ; 2 uses
  %i.cz = icmp ugt i64 %i.cx, -4
  %.not.i.i11 = icmp ugt i64 %i.cy, %.val1.i.i
  %or.cond14.i.i = or i1 %i.cz, %.not.i.i11
  br i1 %or.cond14.i.i, label %.split90.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, !prof !7

.split90.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cr, %.lr.ph.split.us ], [ %i.cx, %.lr.ph.split ]
  %.us-phi91 = phi i64 [ %i.cs, %.lr.ph.split.us ], [ %i.cy, %.lr.ph.split ]
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %.us-phi91, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !2891
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cx
  %i.db = call noundef nonnull align 4 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbfENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.da, i64 noundef 3), !noalias !2891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.db, i64 12, i1 false), !noalias !2892
  %i.dc = trunc nuw i64 %indvars.iv to i32
  %i.dd = add i32 %3, %i.dc                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split93, label %bb.z, !prof !7

bb.z:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw i64 %i.cq, %i.de
  %i.dg = mul i64 %i.df, 3                        ; 4 uses
  %i.dh = add i64 %i.dg, 3                        ; 2 uses
  %i.di = icmp ugt i64 %i.dg, -4
  %.not.i.i15 = icmp ugt i64 %i.dh, %.val15.i.i14
  %or.cond14.i.i16 = or i1 %i.di, %.not.i.i15
  br i1 %or.cond14.i.i16, label %bb.aa, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, !prof !7

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dg, i64 noundef %i.dh, i64 noundef %.val15.i.i14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !2893
  unreachable

.split93:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi94 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.dd, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2893
  store i32 %.us-phi94, ptr %i.c, align 4, !noalias !2893
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cn, ptr %i.dj, align 4, !noalias !2893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2893
  store i32 %i.ce, ptr %i.b, align 4, !noalias !2893
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cg, ptr %i.dk, align 4, !noalias !2893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2893
  store ptr %i.c, ptr %i.a, align 8, !noalias !2893
  %.sroa.45.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i18, align 8, !noalias !2893
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dl, align 8, !noalias !2893
  %.sroa.49.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i19, align 8, !noalias !2893
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !2893
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i17, i64 %i.dg
  %i.dn = call noundef nonnull align 4 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbfENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 4 %i.dm, i64 noundef 3), !noalias !2893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dn, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !2894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %exitcond172.not = icmp eq i64 %indvars.iv.next, %i.cc
  br i1 %exitcond172.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2918)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !2919, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !2919, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 3, i32 noundef %i.k, i32 noundef %i.m), !noalias !2920
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !2919, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !2919, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !2917, !noalias !2916
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !2917, !noalias !2916
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !2917, !noalias !2916
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRShE9into_viewINtNtBa_5color3RgbhEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !2916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2916
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !2916, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !2915 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !2915 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !2915 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !2915 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !2915 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !2915 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2916
  call void @llvm.experimental.noalias.scope.decl(metadata !2921)
  call void @llvm.experimental.noalias.scope.decl(metadata !2922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2923
  store i32 %3, ptr %i.d, align 4, !noalias !2923
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !2923
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !2923
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !2923
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !2924
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !2923, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !2925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2923
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2923
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !2921
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ac = mul nuw nsw i64 %i.ab, 3                ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !2922, !noundef !5
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !2927, !noundef !5
  %i.ai = mul nuw nsw i64 %i.af, 3
  %i.aj = zext i32 %i.ah to i64
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 10 uses
  br i1 %i.al, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.an, align 8, !alias.scope !2927, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.am, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !2928
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !2928
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i13 = load ptr, ptr %i.ao, align 8, !alias.scope !2927, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 3
  %i.aq = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !2921
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = add i32 %4, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw i64 %i.at, %i.af
  %i.av = add nuw i64 %i.au, %i.aq
  %i.aw = mul i64 %i.av, 3                        ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, %i.am
  br i1 %i.ax, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.ay = sub nuw i64 %i.am, %i.aw                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ac, %i.ay
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !2924
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !2924
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 %i.aw
  %i.ba = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.bc, %bb.o ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 3
  %i.bc = add nsw i64 %.sroa.737.068.i, -3        ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.be = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bf = add i64 %i.be, %i.ba                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bf ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 2
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !2924
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !2924
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bf
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %.sroa.436.069.i, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !2924
  %.not.i.i.i = icmp ult i64 %i.bc, 3
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !2921
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv122.i to i32
  %i.bl = add i32 %4, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.af
  %i.bo = add nuw i64 %i.bn, %i.aq
  %i.bp = mul i64 %i.bo, 3                        ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, %i.am
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.br = sub nuw i64 %i.am, %i.bp                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i13, i64 %i.bp
  %.not33.i = icmp ugt i64 %i.ac, %i.br
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !2924
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !2924
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bt = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bu, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bv = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bt ; 2 uses
  %.not34.i = icmp ugt i64 %i.ac, %i.bv
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !2924
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !2924
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bt
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.bs, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !2924
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2916
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.bz, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.ca = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not12 = icmp eq i8 %i.ca, -1
  br i1 %.not12, label %.split119, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split119:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split119
  %.not121 = icmp eq i32 %i.k, 0
  %i.cb = zext i32 %i.k to i64                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load i32, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i19 = load i64, ptr %i.ch, align 8    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i22 = load ptr, ptr %i.ci, align 8, !nonnull !5
  br i1 %.not121, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.cj = call i32 @llvm.usub.sat.i32(i32 %i.cd, i32 %3)
  %wide.trip.count181 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.cj to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split119
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv178 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next179, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.ck = mul nuw i64 %indvars.iv178, %i.cb       ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv178 to i32
  %i.cm = add i32 %4, %i.cl                       ; 3 uses
  %i.cn = icmp uge i32 %i.cm, %i.cf
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul nuw i64 %i.cg, %i.co
  %.fr = freeze i1 %i.cn
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  %i.cq = mul i64 %i.ck, 3                        ; 4 uses
  %i.cr = add i64 %i.cq, 3                        ; 2 uses
  %i.cs = icmp ugt i64 %i.cq, -4
  %.not.i.i16.us = icmp ugt i64 %i.cr, %.val1.i.i
  %or.cond14.i.i.us = or i1 %i.cs, %.not.i.i16.us
  br i1 %or.cond14.i.i.us, label %.split95.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, !prof !7

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cq
  %i.cu = call noundef nonnull ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef 3), !noalias !2929 ; 0 uses
  br label %.split98

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = add nuw i64 %i.ck, %indvars.iv
  %i.cw = mul i64 %i.cv, 3                        ; 4 uses
  %i.cx = add i64 %i.cw, 3                        ; 2 uses
  %i.cy = icmp ugt i64 %i.cw, -4
  %.not.i.i16 = icmp ugt i64 %i.cx, %.val1.i.i
  %or.cond14.i.i = or i1 %i.cy, %.not.i.i16
  br i1 %or.cond14.i.i, label %.split95.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, !prof !7

.split95.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cq, %.lr.ph.split.us ], [ %i.cw, %.lr.ph.split ]
  %.us-phi96 = phi i64 [ %i.cr, %.lr.ph.split.us ], [ %i.cx, %.lr.ph.split ]
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %.us-phi96, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !2929
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cw
  %i.da = call noundef nonnull ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef 3), !noalias !2929
  %.sroa.0.0.copyload.i = load i24, ptr %i.da, align 1, !noalias !2930
  %i.db = trunc nuw i64 %indvars.iv to i32
  %i.dc = add i32 %3, %i.db                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split98, label %bb.z, !prof !7

bb.z:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw i64 %i.cp, %i.dd
  %i.df = mul i64 %i.de, 3                        ; 4 uses
  %i.dg = add i64 %i.df, 3                        ; 2 uses
  %i.dh = icmp ugt i64 %i.df, -4
  %.not.i.i20 = icmp ugt i64 %i.dg, %.val15.i.i19
  %or.cond14.i.i21 = or i1 %i.dh, %.not.i.i20
  br i1 %or.cond14.i.i21, label %bb.aa, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, !prof !7

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef %i.dg, i64 noundef %.val15.i.i19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !2931
  unreachable

.split98:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi99 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.dc, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2931
  store i32 %.us-phi99, ptr %i.c, align 4, !noalias !2931
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cm, ptr %i.di, align 4, !noalias !2931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2931
  store i32 %i.cd, ptr %i.b, align 4, !noalias !2931
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cf, ptr %i.dj, align 4, !noalias !2931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2931
  store ptr %i.c, ptr %i.a, align 8, !noalias !2931
  %.sroa.45.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i23, align 8, !noalias !2931
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dk, align 8, !noalias !2931
  %.sroa.49.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i24, align 8, !noalias !2931
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !2931
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i22, i64 %i.df
  %i.dm = call noundef nonnull ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.dl, i64 noundef 3), !noalias !2931
  store i24 %.sroa.0.0.copyload.i, ptr %i.dm, align 1, !noalias !2932
  %exitcond177.not = icmp eq i64 %indvars.iv.next, %i.cb
  br i1 %exitcond177.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2954
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !2957, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !2957, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 3, i32 noundef %i.k, i32 noundef %i.m), !noalias !2958
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !2957, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !2957, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !2955, !noalias !2954
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !2955, !noalias !2954
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !2955, !noalias !2954
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRStE9into_viewINtNtBa_5color3RgbtEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !2954
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2954
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !2954, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !2953 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !2953 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !2953 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !2953 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !2953 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !2953 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2954
  call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  call void @llvm.experimental.noalias.scope.decl(metadata !2960)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2961
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2961
  store i32 %3, ptr %i.d, align 4, !noalias !2961
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !2961
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !2961
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !2961
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !2962
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !2961, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !2963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2961
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2961
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !2959
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ac = mul nuw nsw i64 %i.ab, 3                ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !2960, !noundef !5
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2964)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !2965, !noundef !5
  %i.ai = mul nuw nsw i64 %i.af, 3
  %i.aj = zext i32 %i.ah to i64
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 10 uses
  br i1 %i.al, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.an, align 8, !alias.scope !2965, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.am, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !2966
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !2966
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i13 = load ptr, ptr %i.ao, align 8, !alias.scope !2965, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 3
  %i.aq = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !2959
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = add i32 %4, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw i64 %i.at, %i.af
  %i.av = add nuw i64 %i.au, %i.aq
  %i.aw = mul i64 %i.av, 3                        ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, %i.am
  br i1 %i.ax, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.ay = sub nuw i64 %i.am, %i.aw                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ac, %i.ay
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !2962
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !2962
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i13, i64 %i.aw
  %i.ba = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.bc, %bb.o ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 6
  %i.bc = add nsw i64 %.sroa.737.068.i, -3        ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.be = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bf = add i64 %i.be, %i.ba                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bf ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 2
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !2962
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 3, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !2962
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bf
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %.sroa.436.069.i, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bj, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !2962
  %.not.i.i.i = icmp ult i64 %i.bc, 3
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !2959
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv122.i to i32
  %i.bl = add i32 %4, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.af
  %i.bo = add nuw i64 %i.bn, %i.aq
  %i.bp = mul i64 %i.bo, 3                        ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, %i.am
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.br = sub nuw i64 %i.am, %i.bp                ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i13, i64 %i.bp
  %.not33.i = icmp ugt i64 %i.ac, %i.br
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !2962
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !2962
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bt = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bu, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bv = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bt ; 2 uses
  %.not34.i = icmp ugt i64 %i.ac, %i.bv
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !2962
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !2962
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bt
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %i.bs, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bw, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !2962
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.bz, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.ca = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not12 = icmp eq i8 %i.ca, -1
  br i1 %.not12, label %.split119, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split119:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split119
  %.not121 = icmp eq i32 %i.k, 0
  %i.cb = zext i32 %i.k to i64                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load i32, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i19 = load i64, ptr %i.ch, align 8    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i22 = load ptr, ptr %i.ci, align 8, !nonnull !5
  br i1 %.not121, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.cj = call i32 @llvm.usub.sat.i32(i32 %i.cd, i32 %3)
  %wide.trip.count181 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.cj to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split119
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv178 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next179, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %i.ck = mul nuw i64 %indvars.iv178, %i.cb       ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv178 to i32
  %i.cm = add i32 %4, %i.cl                       ; 3 uses
  %i.cn = icmp uge i32 %i.cm, %i.cf
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul nuw i64 %i.cg, %i.co
  %.fr = freeze i1 %i.cn
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  %i.cq = mul i64 %i.ck, 3                        ; 4 uses
  %i.cr = add i64 %i.cq, 3                        ; 2 uses
  %i.cs = icmp ugt i64 %i.cq, -4
  %.not.i.i16.us = icmp ugt i64 %i.cr, %.val1.i.i
  %or.cond14.i.i.us = or i1 %i.cs, %.not.i.i16.us
  br i1 %or.cond14.i.i.us, label %.split95.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, !prof !7

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.cq
  %i.cu = call noundef nonnull align 2 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.ct, i64 noundef 3), !noalias !2967 ; 0 uses
  br label %.split98

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = add nuw i64 %i.ck, %indvars.iv
  %i.cw = mul i64 %i.cv, 3                        ; 4 uses
  %i.cx = add i64 %i.cw, 3                        ; 2 uses
  %i.cy = icmp ugt i64 %i.cw, -4
  %.not.i.i16 = icmp ugt i64 %i.cx, %.val1.i.i
  %or.cond14.i.i = or i1 %i.cy, %.not.i.i16
  br i1 %or.cond14.i.i, label %.split95.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, !prof !7

.split95.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cq, %.lr.ph.split.us ], [ %i.cw, %.lr.ph.split ]
  %.us-phi96 = phi i64 [ %i.cr, %.lr.ph.split.us ], [ %i.cx, %.lr.ph.split ]
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %.us-phi96, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !2967
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.cw
  %i.da = call noundef nonnull align 2 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.cz, i64 noundef 3), !noalias !2967
  %.sroa.0.0.copyload.i = load i48, ptr %i.da, align 2, !noalias !2968
  %i.db = trunc nuw i64 %indvars.iv to i32
  %i.dc = add i32 %3, %i.db                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split98, label %bb.z, !prof !7

bb.z:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw i64 %i.cp, %i.dd
  %i.df = mul i64 %i.de, 3                        ; 4 uses
  %i.dg = add i64 %i.df, 3                        ; 2 uses
  %i.dh = icmp ugt i64 %i.df, -4
  %.not.i.i20 = icmp ugt i64 %i.dg, %.val15.i.i19
  %or.cond14.i.i21 = or i1 %i.dh, %.not.i.i20
  br i1 %or.cond14.i.i21, label %bb.aa, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, !prof !7

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef %i.dg, i64 noundef %.val15.i.i19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !2969
  unreachable

.split98:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi99 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.dc, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2969
  store i32 %.us-phi99, ptr %i.c, align 4, !noalias !2969
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cm, ptr %i.di, align 4, !noalias !2969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2969
  store i32 %i.cd, ptr %i.b, align 4, !noalias !2969
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cf, ptr %i.dj, align 4, !noalias !2969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2969
  store ptr %i.c, ptr %i.a, align 8, !noalias !2969
  %.sroa.45.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i23, align 8, !noalias !2969
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dk, align 8, !noalias !2969
  %.sroa.49.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i24, align 8, !noalias !2969
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !2969
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i22, i64 %i.df
  %i.dm = call noundef nonnull align 2 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.dl, i64 noundef 3), !noalias !2969
  store i48 %.sroa.0.0.copyload.i, ptr %i.dm, align 2, !noalias !2970
  %exitcond177.not = icmp eq i64 %indvars.iv.next, %i.cb
  br i1 %exitcond177.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2991)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2992
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2994)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !2995, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !2995, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 1, i32 noundef %i.k, i32 noundef %i.m), !noalias !2996
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !2995, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !2995, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !2993, !noalias !2992
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !2993, !noalias !2992
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !2993, !noalias !2992
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRShE9into_viewINtNtBa_5color4LumahEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !2992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2992
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !2992, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !2991 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !2991 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !2991 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !2991 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !2991 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !2991 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2992
  call void @llvm.experimental.noalias.scope.decl(metadata !2997)
  call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2999
  store i32 %3, ptr %i.d, align 4, !noalias !2999
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !2999
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !2999
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !2999
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !3000
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !2999, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2999
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2999
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !2997
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !2998, !noundef !5
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !3003, !noundef !5
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae                ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.aj, align 8, !alias.scope !3003, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ai, %.val3.i.i
  br i1 %.not.i.i, label %bb.g, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ai, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !3004
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i12 = load ptr, ptr %i.ak, align 8, !alias.scope !3003, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 1
  %i.am = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count122.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.al, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.m
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count122.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !2997
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = trunc nuw i64 %indvars.iv.i to i32
  %i.ao = add i32 %4, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw i64 %i.ap, %i.ae
  %i.ar = add nuw i64 %i.aq, %i.am                ; 4 uses
  %i.as = icmp ugt i64 %i.ar, %i.ai
  br i1 %i.as, label %.split.us.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %.lr.ph72.split.i
  %i.at = sub nuw i64 %i.ai, %i.ar                ; 2 uses
  %.not31.i = icmp ult i64 %i.at, %i.ab
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ar, i64 noundef %i.ai, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !3000
  unreachable

.split74.us.i:                                    ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !3000
  unreachable

.lr.ph.i:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i12, i64 %i.ar
  %i.av = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ay, %bb.m ] ; 2 uses
  %.sroa.437.069.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.aw, %bb.m ] ; 2 uses
  %.sroa.738.068.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.ax, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.437.069.i, i64 1
  %i.ax = add nsw i64 %.sroa.738.068.i, -1        ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.az = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.ba = add i64 %i.az, %i.av                    ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bb, label %bb.k, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  %.not33.i = icmp eq i64 %.sroa.0.sroa.5.0.copyload, %i.ba
  br i1 %.not33.i, label %bb.l, label %bb.m, !prof !6

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ba, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !3000
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !3000
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.ba
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %.sroa.437.069.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !3000
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.i

._crit_edge78.i:                                  ; preds = %bb.u
  store i8 -1, ptr %0, align 8, !alias.scope !2997
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %bb.u
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %bb.u ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %i.bd = trunc nuw i64 %indvars.iv119.i to i32
  %i.be = add i32 %4, %i.bd
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw i64 %i.bf, %i.ae
  %i.bh = add nuw i64 %i.bg, %i.am                ; 4 uses
  %i.bi = icmp ugt i64 %i.bh, %i.ai
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !6

bb.n:                                             ; preds = %.lr.ph77.i
  %i.bj = sub nuw i64 %i.ai, %i.bh                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i12, i64 %i.bh
  %.not34.i = icmp ult i64 %i.bj, %i.ab
  br i1 %.not34.i, label %bb.p, label %bb.q, !prof !7

bb.o:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bh, i64 noundef %i.ai, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !3000
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !3000
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bl = mul i64 %indvars.iv119.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bm = icmp ugt i64 %i.bl, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bm, label %bb.s, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  %i.bn = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bl ; 2 uses
  %.not35.i = icmp ult i64 %i.bn, %i.ab
  br i1 %.not35.i, label %bb.t, label %bb.u, !prof !6

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bl, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !3000
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !3000
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bl
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.bk, i64 noundef %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !3000
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count122.i
  br i1 %exitcond123.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.br, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.bs = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not11 = icmp eq i8 %i.bs, -1
  br i1 %.not11, label %.split109, label %bb.w

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.w
  ret void

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split109:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split109
  %.not111 = icmp eq i32 %i.k, 0
  %i.bt = zext i32 %i.k to i64                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i32, ptr %i.bu, align 8            ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = zext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14.i.i17 = load i64, ptr %i.bz, align 8    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i19 = load ptr, ptr %i.ca, align 8, !nonnull !5
  br i1 %.not111, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.cb = call i32 @llvm.usub.sat.i32(i32 %i.bv, i32 %3)
  %wide.trip.count163 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.cb to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split109
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv160 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next161, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.cc = mul nuw i64 %indvars.iv160, %i.bt       ; 4 uses
  %i.cd = trunc nuw i64 %indvars.iv160 to i32
  %i.ce = add i32 %4, %i.cd                       ; 3 uses
  %i.cf = icmp uge i32 %i.ce, %i.bx
  %i.cg = zext i32 %i.ce to i64
  %i.ch = mul nuw i64 %i.by, %i.cg
  %.fr = freeze i1 %i.cf
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  %.not.not.i.i.us = icmp ult i64 %i.cc, %.val1.i.i
  br i1 %.not.not.i.i.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, label %.split86.us, !prof !20

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cc
  %i.cj = call noundef nonnull ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ci, i64 noundef 1), !noalias !3005 ; 0 uses
  br label %.split88

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = add nuw i64 %i.cc, %indvars.iv          ; 3 uses
  %.not.not.i.i = icmp ult i64 %i.ck, %.val1.i.i
  br i1 %.not.not.i.i, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, label %.split86.us, !prof !20

.split86.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cc, %.lr.ph.split.us ], [ %i.ck, %.lr.ph.split ] ; 2 uses
  %i.cl = add nuw i64 %.us-phi, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %i.cl, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !3005
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ck
  %i.cn = call noundef nonnull ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef 1), !noalias !3005
  %.sroa.0.0.copyload.i = load i8, ptr %i.cn, align 1, !noalias !3006
  %i.co = trunc nuw i64 %indvars.iv to i32
  %i.cp = add i32 %3, %i.co                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split88, label %bb.x, !prof !7

bb.x:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add nuw i64 %i.ch, %i.cq                ; 4 uses
  %.not.not.i.i18 = icmp ult i64 %i.cr, %.val14.i.i17
  br i1 %.not.not.i.i18, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, label %bb.y, !prof !20

bb.y:                                             ; preds = %bb.x
  %i.cs = add nuw i64 %i.cr, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cr, i64 noundef %i.cs, i64 noundef %.val14.i.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3007
  unreachable

.split88:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi89 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.cp, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3007
  store i32 %.us-phi89, ptr %i.c, align 4, !noalias !3007
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ce, ptr %i.ct, align 4, !noalias !3007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3007
  store i32 %i.bv, ptr %i.b, align 4, !noalias !3007
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bx, ptr %i.cu, align 4, !noalias !3007
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3007
  store ptr %i.c, ptr %i.a, align 8, !noalias !3007
  %.sroa.45.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i20, align 8, !noalias !3007
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cv, align 8, !noalias !3007
  %.sroa.49.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i21, align 8, !noalias !3007
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3007
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %i.cr
  %i.cx = call noundef nonnull ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.cw, i64 noundef 1), !noalias !3007
  store i8 %.sroa.0.0.copyload.i, ptr %i.cx, align 1, !noalias !3008
  %exitcond159.not = icmp eq i64 %indvars.iv.next, %i.bt
  br i1 %exitcond159.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3030
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3031)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !3033, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !3033, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 1, i32 noundef %i.k, i32 noundef %i.m), !noalias !3034
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3033, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !3033, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !3031, !noalias !3030
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !3031, !noalias !3030
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !3031, !noalias !3030
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRStE9into_viewINtNtBa_5color4LumatEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !3030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3030
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !3030, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !3029 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !3029 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !3029 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !3029 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !3029 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !3029 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3030
  call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  call void @llvm.experimental.noalias.scope.decl(metadata !3036)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3037
  store i32 %3, ptr %i.d, align 4, !noalias !3037
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !3037
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !3037
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !3037
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !3038
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !3037, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3037
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3037
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !3035
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !3036, !noundef !5
  %i.ae = zext i32 %i.ad to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !3041, !noundef !5
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.ae                ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.aj, align 8, !alias.scope !3041, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ai, %.val3.i.i
  br i1 %.not.i.i, label %bb.g, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ai, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !3042
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i12 = load ptr, ptr %i.ak, align 8, !alias.scope !3041, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 1
  %i.am = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count122.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.al, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.m
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count122.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !3035
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = trunc nuw i64 %indvars.iv.i to i32
  %i.ao = add i32 %4, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw i64 %i.ap, %i.ae
  %i.ar = add nuw i64 %i.aq, %i.am                ; 4 uses
  %i.as = icmp ugt i64 %i.ar, %i.ai
  br i1 %i.as, label %.split.us.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %.lr.ph72.split.i
  %i.at = sub nuw i64 %i.ai, %i.ar                ; 2 uses
  %.not31.i = icmp ult i64 %i.at, %i.ab
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ar, i64 noundef %i.ai, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !3038
  unreachable

.split74.us.i:                                    ; preds = %bb.h
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !3038
  unreachable

.lr.ph.i:                                         ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i12, i64 %i.ar
  %i.av = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ay, %bb.m ] ; 2 uses
  %.sroa.437.069.i = phi ptr [ %i.au, %.lr.ph.i ], [ %i.aw, %bb.m ] ; 2 uses
  %.sroa.738.068.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.ax, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.437.069.i, i64 2
  %i.ax = add nsw i64 %.sroa.738.068.i, -1        ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.az = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.ba = add i64 %i.az, %i.av                    ; 4 uses
  %i.bb = icmp ugt i64 %i.ba, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bb, label %bb.k, label %bb.j, !prof !6

bb.j:                                             ; preds = %bb.i
  %.not33.i = icmp eq i64 %.sroa.0.sroa.5.0.copyload, %i.ba
  br i1 %.not33.i, label %bb.l, label %bb.m, !prof !6

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ba, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !3038
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 1, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !3038
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.ba
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %.sroa.437.069.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bc, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !3038
  %.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.i

._crit_edge78.i:                                  ; preds = %bb.u
  store i8 -1, ptr %0, align 8, !alias.scope !3035
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %bb.u
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %bb.u ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %i.bd = trunc nuw i64 %indvars.iv119.i to i32
  %i.be = add i32 %4, %i.bd
  %i.bf = zext i32 %i.be to i64
  %i.bg = mul nuw i64 %i.bf, %i.ae
  %i.bh = add nuw i64 %i.bg, %i.am                ; 4 uses
  %i.bi = icmp ugt i64 %i.bh, %i.ai
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !6

bb.n:                                             ; preds = %.lr.ph77.i
  %i.bj = sub nuw i64 %i.ai, %i.bh                ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i12, i64 %i.bh
  %.not34.i = icmp ult i64 %i.bj, %i.ab
  br i1 %.not34.i, label %bb.p, label %bb.q, !prof !7

bb.o:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bh, i64 noundef %i.ai, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !3038
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !3038
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.bl = mul i64 %indvars.iv119.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bm = icmp ugt i64 %i.bl, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bm, label %bb.s, label %bb.r, !prof !6

bb.r:                                             ; preds = %bb.q
  %i.bn = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bl ; 2 uses
  %.not35.i = icmp ult i64 %i.bn, %i.ab
  br i1 %.not35.i, label %bb.t, label %bb.u, !prof !6

bb.s:                                             ; preds = %bb.q
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bl, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !3038
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.bn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !3038
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bl
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %i.bk, i64 noundef %i.ab, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bo, i64 noundef %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !3038
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count122.i
  br i1 %exitcond123.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.br, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.bs = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not11 = icmp eq i8 %i.bs, -1
  br i1 %.not11, label %.split109, label %bb.w

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.w
  ret void

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split109:                                        ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split109
  %.not111 = icmp eq i32 %i.k, 0
  %i.bt = zext i32 %i.k to i64                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i32, ptr %i.bu, align 8            ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bx = load i32, ptr %i.bw, align 4            ; 2 uses
  %i.by = zext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14.i.i17 = load i64, ptr %i.bz, align 8    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i19 = load ptr, ptr %i.ca, align 8, !nonnull !5
  br i1 %.not111, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.cb = call i32 @llvm.usub.sat.i32(i32 %i.bv, i32 %3)
  %wide.trip.count163 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.cb to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split109
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv160 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next161, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.cc = mul nuw i64 %indvars.iv160, %i.bt       ; 4 uses
  %i.cd = trunc nuw i64 %indvars.iv160 to i32
  %i.ce = add i32 %4, %i.cd                       ; 3 uses
  %i.cf = icmp uge i32 %i.ce, %i.bx
  %i.cg = zext i32 %i.ce to i64
  %i.ch = mul nuw i64 %i.by, %i.cg
  %.fr = freeze i1 %i.cf
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  %.not.not.i.i.us = icmp ult i64 %i.cc, %.val1.i.i
  br i1 %.not.not.i.i.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, label %.split86.us, !prof !20

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.cc
  %i.cj = call noundef nonnull align 2 ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.ci, i64 noundef 1), !noalias !3043 ; 0 uses
  br label %.split88

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = add nuw i64 %i.cc, %indvars.iv          ; 3 uses
  %.not.not.i.i = icmp ult i64 %i.ck, %.val1.i.i
  br i1 %.not.not.i.i, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, label %.split86.us, !prof !20

.split86.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cc, %.lr.ph.split.us ], [ %i.ck, %.lr.ph.split ] ; 2 uses
  %i.cl = add nuw i64 %.us-phi, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %i.cl, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !3043
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.ck
  %i.cn = call noundef nonnull align 2 ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.cm, i64 noundef 1), !noalias !3043
  %.sroa.0.0.copyload.i = load i16, ptr %i.cn, align 2, !noalias !3044
  %i.co = trunc nuw i64 %indvars.iv to i32
  %i.cp = add i32 %3, %i.co                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split88, label %bb.x, !prof !7

bb.x:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add nuw i64 %i.ch, %i.cq                ; 4 uses
  %.not.not.i.i18 = icmp ult i64 %i.cr, %.val14.i.i17
  br i1 %.not.not.i.i18, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, label %bb.y, !prof !20

bb.y:                                             ; preds = %bb.x
  %i.cs = add nuw i64 %i.cr, 1
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cr, i64 noundef %i.cs, i64 noundef %.val14.i.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3045
  unreachable

.split88:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi89 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.cp, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3045
  store i32 %.us-phi89, ptr %i.c, align 4, !noalias !3045
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ce, ptr %i.ct, align 4, !noalias !3045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3045
  store i32 %i.bv, ptr %i.b, align 4, !noalias !3045
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bx, ptr %i.cu, align 4, !noalias !3045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3045
  store ptr %i.c, ptr %i.a, align 8, !noalias !3045
  %.sroa.45.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i20, align 8, !noalias !3045
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cv, align 8, !noalias !3045
  %.sroa.49.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i21, align 8, !noalias !3045
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3045
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i19, i64 %i.cr
  %i.cx = call noundef nonnull align 2 ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.cw, i64 noundef 1), !noalias !3045
  store i16 %.sroa.0.0.copyload.i, ptr %i.cx, align 2, !noalias !3046
  %exitcond159.not = icmp eq i64 %indvars.iv.next, %i.bt
  br i1 %exitcond159.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !3073, !noundef !5 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !3073, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, i8 noundef 4, i32 noundef %i.l, i32 noundef %i.n), !noalias !3074
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !3073, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.q, align 8, !alias.scope !3073, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !3071, !noalias !3070
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.r, align 8, !alias.scope !3071, !noalias !3070
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.s, align 8, !alias.scope !3071, !noalias !3070
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRSfE9into_viewINtNtBa_5color4RgbafEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !3070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3070
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.u = load i8, ptr %i.t, align 8, !range !19, !noalias !3070, !noundef !5
  %i.v = icmp eq i8 %i.u, -2
  br i1 %i.v, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !3069 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !3069 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !3069 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !3069 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !3069 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !3069 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3070
  call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3077
  store i32 %3, ptr %i.d, align 4, !noalias !3077
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.w, align 4, !noalias !3077
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.x, align 4, !noalias !3077
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.y, align 4, !noalias !3077
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !3078
  %i.z = load i8, ptr %i.e, align 8, !range !11, !noalias !3077, !noundef !5
  %.not.i = icmp eq i8 %i.z, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3077
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3077
  %i.aa = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.ab = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !3075
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !3076, !noundef !5
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !alias.scope !3081, !noundef !5
  %i.aj = shl nuw nsw i64 %i.ag, 2
  %i.ak = zext i32 %i.ai to i64
  %i.al = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aj, i64 %i.ak) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0       ; 10 uses
  br i1 %i.am, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.ao, align 8, !alias.scope !3081, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.an, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !3082
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.an, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !3082
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i8 = load ptr, ptr %i.ap, align 8, !alias.scope !3081, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 4
  %i.ar = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.aq, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !3075
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.i to i32
  %i.at = add i32 %4, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw i64 %i.au, %i.ag
  %i.aw = add nuw i64 %i.av, %i.ar
  %i.ax = shl i64 %i.aw, 2                        ; 4 uses
  %i.ay = icmp ugt i64 %i.ax, %i.an
  br i1 %i.ay, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.az = sub nuw i64 %i.an, %i.ax                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ad, %i.az
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ax, i64 noundef %i.an, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !3078
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !3078
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i8, i64 %i.ax
  %i.bb = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.be, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.bc, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.bd, %bb.o ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 16
  %i.bd = add nsw i64 %.sroa.737.068.i, -4        ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.bf = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bg = add i64 %i.bf, %i.bb                    ; 4 uses
  %i.bh = icmp ugt i64 %i.bg, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bh, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bi = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bg ; 2 uses
  %i.bj = icmp ugt i64 %i.bi, 3
  br i1 %i.bj, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bg, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !3078
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !3078
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bg
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implfECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 4 %.sroa.436.069.i, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bk, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !3078
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !3075
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bl = trunc nuw i64 %indvars.iv122.i to i32
  %i.bm = add i32 %4, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw i64 %i.bn, %i.ag
  %i.bp = add nuw i64 %i.bo, %i.ar
  %i.bq = shl i64 %i.bp, 2                        ; 4 uses
  %i.br = icmp ugt i64 %i.bq, %i.an
  br i1 %i.br, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.bs = sub nuw i64 %i.an, %i.bq                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i8, i64 %i.bq
  %.not33.i = icmp ugt i64 %i.ad, %i.bs
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.an, i64 noundef %i.an, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !3078
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !3078
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bu = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bv = icmp ugt i64 %i.bu, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bv, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bw = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bu ; 2 uses
  %.not34.i = icmp ugt i64 %i.ad, %i.bw
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bu, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !3078
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ad, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !3078
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bu
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implfECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 4 %i.bt, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bx, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !3078
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %3, ptr %i.i, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %4, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.l, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.n, ptr %i.ca, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.cb = load i8, ptr %i.j, align 8, !range !11, !noundef !5
  %.not7 = icmp eq i8 %i.cb, -1
  br i1 %.not7, label %.split107, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split107:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split107
  %.not109 = icmp eq i32 %i.l, 0
  %i.cc = zext i32 %i.l to i64                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load i32, ptr %i.cd, align 8            ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cg = load i32, ptr %i.cf, align 4            ; 2 uses
  %i.ch = zext i32 %i.ce to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i13 = load i64, ptr %i.ci, align 8    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i15 = load ptr, ptr %i.cj, align 8, !nonnull !5
  br i1 %.not109, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.ck = call i32 @llvm.usub.sat.i32(i32 %i.ce, i32 %3)
  %wide.trip.count163 = zext i32 %i.n to i64
  %wide.trip.count = zext i32 %i.ck to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split107
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv160 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next161, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.cl = mul nuw i64 %indvars.iv160, %i.cc       ; 2 uses
  %i.cm = trunc nuw i64 %indvars.iv160 to i32
  %i.cn = add i32 %4, %i.cm                       ; 3 uses
  %i.co = icmp uge i32 %i.cn, %i.cg
  %i.cp = zext i32 %i.cn to i64
  %i.cq = mul nuw i64 %i.ch, %i.cp
  %.fr = freeze i1 %i.co
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cr = shl i64 %i.cl, 2                        ; 3 uses
  %i.cs = or disjoint i64 %i.cr, 3
  %or.cond14.not.i.i.us = icmp ult i64 %i.cs, %.val1.i.i
  br i1 %or.cond14.not.i.i.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, label %.split84.us, !prof !21

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cr
  %i.cu = call noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ct, i64 noundef 4), !noalias !3083 ; 0 uses
  br label %.split86

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cv = add nuw i64 %i.cl, %indvars.iv
  %i.cw = shl i64 %i.cv, 2                        ; 3 uses
  %i.cx = or disjoint i64 %i.cw, 3
  %or.cond14.not.i.i = icmp ult i64 %i.cx, %.val1.i.i
  br i1 %or.cond14.not.i.i, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, label %.split84.us, !prof !21

.split84.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cr, %.lr.ph.split.us ], [ %i.cw, %.lr.ph.split ] ; 2 uses
  %i.cy = add i64 %.us-phi, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %i.cy, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !3083
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cw
  %i.da = call noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cz, i64 noundef 4), !noalias !3083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !noalias !3084
  %i.db = trunc nuw i64 %indvars.iv to i32
  %i.dc = add i32 %3, %i.db                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split86, label %bb.z, !prof !7

bb.z:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.dd = zext i32 %i.dc to i64
  %i.de = add nuw i64 %i.cq, %i.dd
  %i.df = shl i64 %i.de, 2                        ; 4 uses
  %i.dg = or disjoint i64 %i.df, 3
  %or.cond14.not.i.i14 = icmp ult i64 %i.dg, %.val15.i.i13
  br i1 %or.cond14.not.i.i14, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %bb.z
  %i.dh = add i64 %i.df, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.df, i64 noundef %i.dh, i64 noundef %.val15.i.i13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3085
  unreachable

.split86:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi87 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.dc, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3085
  store i32 %.us-phi87, ptr %i.c, align 4, !noalias !3085
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cn, ptr %i.di, align 4, !noalias !3085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3085
  store i32 %i.ce, ptr %i.b, align 4, !noalias !3085
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cg, ptr %i.dj, align 4, !noalias !3085
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3085
  store ptr %i.c, ptr %i.a, align 8, !noalias !3085
  %.sroa.45.0..sroa_idx.i.i16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i16, align 8, !noalias !3085
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dk, align 8, !noalias !3085
  %.sroa.49.0..sroa_idx.i.i17 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i17, align 8, !noalias !3085
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3085
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i15, i64 %i.df
  %i.dm = call noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 4 %i.dl, i64 noundef 4), !noalias !3085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !3086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %exitcond159.not = icmp eq i64 %indvars.iv.next, %i.cc
  br i1 %exitcond159.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3110)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !3111, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !3111, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 4, i32 noundef %i.k, i32 noundef %i.m), !noalias !3112
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3111, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !3111, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !3109, !noalias !3108
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !3109, !noalias !3108
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !3109, !noalias !3108
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRShE9into_viewINtNtBa_5color4RgbahEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !3108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3108
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !3108, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !3107 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !3107 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !3107 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !3107 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !3107 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !3107 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3108
  call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3115
  store i32 %3, ptr %i.d, align 4, !noalias !3115
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !3115
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !3115
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !3115
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !3116
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !3115, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3115
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3115
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !3113
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !3114, !noundef !5
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !3119, !noundef !5
  %i.ai = shl nuw nsw i64 %i.af, 2
  %i.aj = zext i32 %i.ah to i64
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 10 uses
  br i1 %i.al, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.an, align 8, !alias.scope !3119, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.am, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !3120
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !3120
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i12 = load ptr, ptr %i.ao, align 8, !alias.scope !3119, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 4
  %i.aq = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !3113
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = add i32 %4, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw i64 %i.at, %i.af
  %i.av = add nuw i64 %i.au, %i.aq
  %i.aw = shl i64 %i.av, 2                        ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, %i.am
  br i1 %i.ax, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.ay = sub nuw i64 %i.am, %i.aw                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ac, %i.ay
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !3116
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !3116
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i12, i64 %i.aw
  %i.ba = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.bc, %bb.o ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 4
  %i.bc = add nsw i64 %.sroa.737.068.i, -4        ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.be = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bf = add i64 %i.be, %i.ba                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bf ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 3
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !3116
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !3116
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bf
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %.sroa.436.069.i, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !3116
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !3113
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv122.i to i32
  %i.bl = add i32 %4, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.af
  %i.bo = add nuw i64 %i.bn, %i.aq
  %i.bp = shl i64 %i.bo, 2                        ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, %i.am
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.br = sub nuw i64 %i.am, %i.bp                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i12, i64 %i.bp
  %.not33.i = icmp ugt i64 %i.ac, %i.br
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !3116
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !3116
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bt = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bu, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bv = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bt ; 2 uses
  %.not34.i = icmp ugt i64 %i.ac, %i.bv
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !3116
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !3116
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bt
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.bs, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !3116
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.bz, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.ca = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not11 = icmp eq i8 %i.ca, -1
  br i1 %.not11, label %.split111, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split111:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split111
  %.not113 = icmp eq i32 %i.k, 0
  %i.cb = zext i32 %i.k to i64                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load i32, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i17 = load i64, ptr %i.ch, align 8    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i19 = load ptr, ptr %i.ci, align 8, !nonnull !5
  br i1 %.not113, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.cj = call i32 @llvm.usub.sat.i32(i32 %i.cd, i32 %3)
  %wide.trip.count167 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.cj to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split111
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv164 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next165, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.ck = mul nuw i64 %indvars.iv164, %i.cb       ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv164 to i32
  %i.cm = add i32 %4, %i.cl                       ; 3 uses
  %i.cn = icmp uge i32 %i.cm, %i.cf
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul nuw i64 %i.cg, %i.co
  %.fr = freeze i1 %i.cn
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  %i.cq = shl i64 %i.ck, 2                        ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 3
  %or.cond14.not.i.i.us = icmp ult i64 %i.cr, %.val1.i.i
  br i1 %or.cond14.not.i.i.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, label %.split88.us, !prof !21

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cq
  %i.ct = call noundef nonnull ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef 4), !noalias !3121 ; 0 uses
  br label %.split90

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = add nuw i64 %i.ck, %indvars.iv
  %i.cv = shl i64 %i.cu, 2                        ; 3 uses
  %i.cw = or disjoint i64 %i.cv, 3
  %or.cond14.not.i.i = icmp ult i64 %i.cw, %.val1.i.i
  br i1 %or.cond14.not.i.i, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, label %.split88.us, !prof !21

.split88.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cq, %.lr.ph.split.us ], [ %i.cv, %.lr.ph.split ] ; 2 uses
  %i.cx = add i64 %.us-phi, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %i.cx, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !3121
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cv
  %i.cz = call noundef nonnull ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef 4), !noalias !3121
  %.sroa.0.0.copyload.i = load i32, ptr %i.cz, align 1, !noalias !3122
  %i.da = trunc nuw i64 %indvars.iv to i32
  %i.db = add i32 %3, %i.da                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split90, label %bb.z, !prof !7

bb.z:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw i64 %i.cp, %i.dc
  %i.de = shl i64 %i.dd, 2                        ; 4 uses
  %i.df = or disjoint i64 %i.de, 3
  %or.cond14.not.i.i18 = icmp ult i64 %i.df, %.val15.i.i17
  br i1 %or.cond14.not.i.i18, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %bb.z
  %i.dg = add i64 %i.de, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.de, i64 noundef %i.dg, i64 noundef %.val15.i.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3123
  unreachable

.split90:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi91 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.db, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3123
  store i32 %.us-phi91, ptr %i.c, align 4, !noalias !3123
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cm, ptr %i.dh, align 4, !noalias !3123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3123
  store i32 %i.cd, ptr %i.b, align 4, !noalias !3123
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cf, ptr %i.di, align 4, !noalias !3123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3123
  store ptr %i.c, ptr %i.a, align 8, !noalias !3123
  %.sroa.45.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i20, align 8, !noalias !3123
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dj, align 8, !noalias !3123
  %.sroa.49.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i21, align 8, !noalias !3123
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3123
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %i.de
  %i.dl = call noundef nonnull ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.dk, i64 noundef 4), !noalias !3123
  store i32 %.sroa.0.0.copyload.i, ptr %i.dl, align 1, !noalias !3124
  %exitcond163.not = icmp eq i64 %indvars.iv.next, %i.cb
  br i1 %exitcond163.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !3149, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !3149, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 4, i32 noundef %i.k, i32 noundef %i.m), !noalias !3150
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3149, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !3149, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !3147, !noalias !3146
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !3147, !noalias !3146
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !3147, !noalias !3146
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRStE9into_viewINtNtBa_5color4RgbatEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !3146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3146
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !3146, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !3145 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !3145 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !3145 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !3145 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !3145 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !3145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3146
  call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  call void @llvm.experimental.noalias.scope.decl(metadata !3152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3153
  store i32 %3, ptr %i.d, align 4, !noalias !3153
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !3153
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !3153
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !3153
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !3154
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !3153, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3153
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3153
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !3151
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !3152, !noundef !5
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3156)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !3157, !noundef !5
  %i.ai = shl nuw nsw i64 %i.af, 2
  %i.aj = zext i32 %i.ah to i64
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 10 uses
  br i1 %i.al, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.an, align 8, !alias.scope !3157, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.am, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !3158
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !3158
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i12 = load ptr, ptr %i.ao, align 8, !alias.scope !3157, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 4
  %i.aq = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !3151
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = add i32 %4, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw i64 %i.at, %i.af
  %i.av = add nuw i64 %i.au, %i.aq
  %i.aw = shl i64 %i.av, 2                        ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, %i.am
  br i1 %i.ax, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.ay = sub nuw i64 %i.am, %i.aw                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ac, %i.ay
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !3154
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !3154
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i12, i64 %i.aw
  %i.ba = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.bc, %bb.o ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 8
  %i.bc = add nsw i64 %.sroa.737.068.i, -4        ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.be = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bf = add i64 %i.be, %i.ba                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bf ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 3
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !3154
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !3154
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bf
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %.sroa.436.069.i, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bj, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !3154
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !3151
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv122.i to i32
  %i.bl = add i32 %4, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.af
  %i.bo = add nuw i64 %i.bn, %i.aq
  %i.bp = shl i64 %i.bo, 2                        ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, %i.am
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.br = sub nuw i64 %i.am, %i.bp                ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i12, i64 %i.bp
  %.not33.i = icmp ugt i64 %i.ac, %i.br
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !3154
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !3154
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bt = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bu, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bv = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bt ; 2 uses
  %.not34.i = icmp ugt i64 %i.ac, %i.bv
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !3154
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !3154
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bt
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %i.bs, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bw, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !3154
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.bz, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.ca = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not11 = icmp eq i8 %i.ca, -1
  br i1 %.not11, label %.split111, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split111:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split111
  %.not113 = icmp eq i32 %i.k, 0
  %i.cb = zext i32 %i.k to i64                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load i32, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i17 = load i64, ptr %i.ch, align 8    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i19 = load ptr, ptr %i.ci, align 8, !nonnull !5
  br i1 %.not113, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.cj = call i32 @llvm.usub.sat.i32(i32 %i.cd, i32 %3)
  %wide.trip.count167 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.cj to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split111
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv164 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next165, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.ck = mul nuw i64 %indvars.iv164, %i.cb       ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv164 to i32
  %i.cm = add i32 %4, %i.cl                       ; 3 uses
  %i.cn = icmp uge i32 %i.cm, %i.cf
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul nuw i64 %i.cg, %i.co
  %.fr = freeze i1 %i.cn
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  %i.cq = shl i64 %i.ck, 2                        ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 3
  %or.cond14.not.i.i.us = icmp ult i64 %i.cr, %.val1.i.i
  br i1 %or.cond14.not.i.i.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, label %.split88.us, !prof !21

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.cq
  %i.ct = call noundef nonnull align 2 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.cs, i64 noundef 4), !noalias !3159 ; 0 uses
  br label %.split90

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = add nuw i64 %i.ck, %indvars.iv
  %i.cv = shl i64 %i.cu, 2                        ; 3 uses
  %i.cw = or disjoint i64 %i.cv, 3
  %or.cond14.not.i.i = icmp ult i64 %i.cw, %.val1.i.i
  br i1 %or.cond14.not.i.i, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, label %.split88.us, !prof !21

.split88.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cq, %.lr.ph.split.us ], [ %i.cv, %.lr.ph.split ] ; 2 uses
  %i.cx = add i64 %.us-phi, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %i.cx, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !3159
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i, i64 %i.cv
  %i.cz = call noundef nonnull align 2 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel10from_sliceB7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.cy, i64 noundef 4), !noalias !3159
  %.sroa.0.0.copyload.i = load i64, ptr %i.cz, align 2, !noalias !3160
  %i.da = trunc nuw i64 %indvars.iv to i32
  %i.db = add i32 %3, %i.da                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split90, label %bb.z, !prof !7

bb.z:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw i64 %i.cp, %i.dc
  %i.de = shl i64 %i.dd, 2                        ; 4 uses
  %i.df = or disjoint i64 %i.de, 3
  %or.cond14.not.i.i18 = icmp ult i64 %i.df, %.val15.i.i17
  br i1 %or.cond14.not.i.i18, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %bb.z
  %i.dg = add i64 %i.de, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.de, i64 noundef %i.dg, i64 noundef %.val15.i.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3161
  unreachable

.split90:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi91 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.db, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3161
  store i32 %.us-phi91, ptr %i.c, align 4, !noalias !3161
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cm, ptr %i.dh, align 4, !noalias !3161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3161
  store i32 %i.cd, ptr %i.b, align 4, !noalias !3161
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cf, ptr %i.di, align 4, !noalias !3161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3161
  store ptr %i.c, ptr %i.a, align 8, !noalias !3161
  %.sroa.45.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i20, align 8, !noalias !3161
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dj, align 8, !noalias !3161
  %.sroa.49.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i21, align 8, !noalias !3161
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3161
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i19, i64 %i.de
  %i.dl = call noundef nonnull align 2 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.dk, i64 noundef 4), !noalias !3161
  store i64 %.sroa.0.0.copyload.i, ptr %i.dl, align 2, !noalias !3162
  %exitcond163.not = icmp eq i64 %indvars.iv.next, %i.cb
  br i1 %exitcond163.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3186)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !3187, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !3187, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 2, i32 noundef %i.k, i32 noundef %i.m), !noalias !3188
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3187, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !3187, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !3185, !noalias !3184
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !3185, !noalias !3184
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !3185, !noalias !3184
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRShE9into_viewINtNtBa_5color5LumaAhEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !3184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3184
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !3184, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !3183 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !3183 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !3183 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !3183 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !3183 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !3183 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3184
  call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  call void @llvm.experimental.noalias.scope.decl(metadata !3190)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3191
  store i32 %3, ptr %i.d, align 4, !noalias !3191
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !3191
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !3191
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !3191
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !3192
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !3191, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3191
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3191
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !3189
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ac = shl nuw nsw i64 %i.ab, 1                ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !3190, !noundef !5
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3194)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !3195, !noundef !5
  %i.ai = shl nuw nsw i64 %i.af, 1
  %i.aj = zext i32 %i.ah to i64
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 10 uses
  br i1 %i.al, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.an, align 8, !alias.scope !3195, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.am, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !3196
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !3196
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i12 = load ptr, ptr %i.ao, align 8, !alias.scope !3195, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 2
  %i.aq = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !3189
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = add i32 %4, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw i64 %i.at, %i.af
  %i.av = add nuw i64 %i.au, %i.aq
  %i.aw = shl i64 %i.av, 1                        ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, %i.am
  br i1 %i.ax, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.ay = sub nuw i64 %i.am, %i.aw                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ac, %i.ay
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !3192
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !3192
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i12, i64 %i.aw
  %i.ba = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.bc, %bb.o ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 2
  %i.bc = add nsw i64 %.sroa.737.068.i, -2        ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.be = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bf = add i64 %i.be, %i.ba                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bf ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 1
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !3192
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !3192
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bf
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %.sroa.436.069.i, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !3192
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !3189
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv122.i to i32
  %i.bl = add i32 %4, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.af
  %i.bo = add nuw i64 %i.bn, %i.aq
  %i.bp = shl i64 %i.bo, 1                        ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, %i.am
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.br = sub nuw i64 %i.am, %i.bp                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i12, i64 %i.bp
  %.not33.i = icmp ugt i64 %i.ac, %i.br
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !3192
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !3192
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bt = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bu, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bv = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bt ; 2 uses
  %.not34.i = icmp ugt i64 %i.ac, %i.bv
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !3192
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !3192
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bt
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.bs, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !3192
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.bz, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.ca = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not11 = icmp eq i8 %i.ca, -1
  br i1 %.not11, label %.split111, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split111:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split111
  %.not113 = icmp eq i32 %i.k, 0
  %i.cb = zext i32 %i.k to i64                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load i32, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i17 = load i64, ptr %i.ch, align 8    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i19 = load ptr, ptr %i.ci, align 8, !nonnull !5
  br i1 %.not113, label %._crit_edge.split, label %.split.preheader

.split.preheader:                                 ; preds = %.split.lr.ph
  %i.cj = call i32 @llvm.usub.sat.i32(i32 %i.cd, i32 %3)
  %wide.trip.count167 = zext i32 %i.m to i64
  %wide.trip.count = zext i32 %i.cj to i64
  br label %.split

..loopexit_crit_edge:                             ; preds = %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge.split, label %.split

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.split.lr.ph, %.split111
  store i8 -1, ptr %0, align 8
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split:                                           ; preds = %.split.preheader, %..loopexit_crit_edge
  %indvars.iv164 = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next165, %..loopexit_crit_edge ] ; 3 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.ck = mul nuw i64 %indvars.iv164, %i.cb       ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv164 to i32
  %i.cm = add i32 %4, %i.cl                       ; 3 uses
  %i.cn = icmp uge i32 %i.cm, %i.cf
  %i.co = zext i32 %i.cm to i64
  %i.cp = mul nuw i64 %i.cg, %i.co
  %.fr = freeze i1 %i.cn
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !7

.lr.ph.split.us:                                  ; preds = %.split
  %i.cq = shl i64 %i.ck, 1                        ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 1
  %or.cond14.not.i.i.us = icmp ult i64 %i.cr, %.val1.i.i
  br i1 %or.cond14.not.i.i.us, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us, label %.split88.us, !prof !21

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us: ; preds = %.lr.ph.split.us
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cq
  %i.ct = call noundef nonnull ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel10from_sliceB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef 2), !noalias !3197 ; 0 uses
  br label %.split90

.lr.ph.split:                                     ; preds = %.split, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit ], [ 0, %.split ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = add nuw i64 %i.ck, %indvars.iv
  %i.cv = shl i64 %i.cu, 1                        ; 3 uses
  %i.cw = or disjoint i64 %i.cv, 1
  %or.cond14.not.i.i = icmp ult i64 %i.cw, %.val1.i.i
  br i1 %or.cond14.not.i.i, label %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, label %.split88.us, !prof !21

.split88.us:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.cq, %.lr.ph.split.us ], [ %i.cv, %.lr.ph.split ] ; 2 uses
  %i.cx = add i64 %.us-phi, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.us-phi, i64 noundef %i.cx, i64 noundef %.val1.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #20, !noalias !3197
  unreachable

_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit: ; preds = %.lr.ph.split
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cv
  %i.cz = call noundef nonnull ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel10from_sliceB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef 2), !noalias !3197
  %.sroa.0.0.copyload.i = load i16, ptr %i.cz, align 1, !noalias !3198
  %i.da = trunc nuw i64 %indvars.iv to i32
  %i.db = add i32 %3, %i.da                       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.split90, label %bb.z, !prof !7

bb.z:                                             ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw i64 %i.cp, %i.dc
  %i.de = shl i64 %i.dd, 1                        ; 4 uses
  %i.df = or disjoint i64 %i.de, 1
  %or.cond14.not.i.i18 = icmp ult i64 %i.df, %.val15.i.i17
  br i1 %or.cond14.not.i.i18, label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit, label %bb.aa, !prof !21

bb.aa:                                            ; preds = %bb.z
  %i.dg = add i64 %i.de, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.de, i64 noundef %i.dg, i64 noundef %.val15.i.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3199
  unreachable

.split90:                                         ; preds = %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us
  %.us-phi91 = phi i32 [ %3, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit.us ], [ %i.db, %_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3199
  store i32 %.us-phi91, ptr %i.c, align 4, !noalias !3199
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cm, ptr %i.dh, align 4, !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3199
  store i32 %i.cd, ptr %i.b, align 4, !noalias !3199
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cf, ptr %i.di, align 4, !noalias !3199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3199
  store ptr %i.c, ptr %i.a, align 8, !noalias !3199
  %.sroa.45.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i.i20, align 8, !noalias !3199
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dj, align 8, !noalias !3199
  %.sroa.49.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i.i21, align 8, !noalias !3199
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #20, !noalias !3199
  unreachable

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image12GenericImage9put_pixelB9_.exit: ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i.i19, i64 %i.de
  %i.dl = call noundef nonnull ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel14from_slice_mutB8_(ptr noalias nofree noundef nonnull %i.dk, i64 noundef 2), !noalias !3199
  store i16 %.sroa.0.0.copyload.i, ptr %i.dl, align 1, !noalias !3200
  %exitcond163.not = icmp eq i64 %indvars.iv.next, %i.cb
  br i1 %exitcond163.not, label %..loopexit_crit_edge, label %.lr.ph.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !alias.scope !3225, !noundef !5 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !3225, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, i8 noundef 2, i32 noundef %i.k, i32 noundef %i.m), !noalias !3226
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3225, !nonnull !5, !noundef !5 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !alias.scope !3225, !noundef !5 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !3223, !noalias !3222
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.q, align 8, !alias.scope !3223, !noalias !3222
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.r, align 8, !alias.scope !3223, !noalias !3222
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRStE9into_viewINtNtBa_5color5LumaAtEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !3222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3222
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !19, !noalias !3222, !noundef !5
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !3221 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !3221 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !3221 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !3221 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !3221 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !3221 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3222
  call void @llvm.experimental.noalias.scope.decl(metadata !3227)
  call void @llvm.experimental.noalias.scope.decl(metadata !3228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3229
  store i32 %3, ptr %i.d, align 4, !noalias !3229
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.v, align 4, !noalias !3229
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.w, align 4, !noalias !3229
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.x, align 4, !noalias !3229
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !3230
  %i.y = load i8, ptr %i.e, align 8, !range !11, !noalias !3229, !noundef !5
  %.not.i = icmp eq i8 %i.y, -1
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3229
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3229
  %i.z = icmp eq i32 %.sroa.0.sroa.7.0.copyload, 0
  %i.aa = icmp eq i32 %.sroa.0.sroa.10.0.copyload, 0
  %or.cond.i = or i1 %i.z, %i.aa
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 -1, ptr %0, align 8, !alias.scope !3227
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = zext i32 %.sroa.0.sroa.7.0.copyload to i64
  %i.ac = shl nuw nsw i64 %i.ab, 1                ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !alias.scope !3228, !noundef !5
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !3233, !noundef !5
  %i.ai = shl nuw nsw i64 %i.af, 1
  %i.aj = zext i32 %i.ah to i64
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ai, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 10 uses
  br i1 %i.al, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load i64, ptr %i.an, align 8, !alias.scope !3233, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.am, %.val3.i.i
  br i1 %.not.i.i, label %bb.i, label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, !prof !7

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #20, !noalias !3234
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef %.val3.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #20, !noalias !3234
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i12 = load ptr, ptr %i.ao, align 8, !alias.scope !3233, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.sroa.0.sroa.9.0.copyload, 2
  %i.aq = zext i32 %3 to i64                      ; 2 uses
  %wide.trip.count125.i = zext i32 %.sroa.0.sroa.10.0.copyload to i64 ; 2 uses
  br i1 %i.ap, label %.lr.ph77.i, label %.lr.ph72.split.i

..loopexit_crit_edge.i:                           ; preds = %bb.o
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count125.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph72.split.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.i
  store i8 -1, ptr %0, align 8, !alias.scope !3227
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph72.split.i:                                 ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %..loopexit_crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %..loopexit_crit_edge.i ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = trunc nuw i64 %indvars.iv.i to i32
  %i.as = add i32 %4, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = mul nuw i64 %i.at, %i.af
  %i.av = add nuw i64 %i.au, %i.aq
  %i.aw = shl i64 %i.av, 1                        ; 4 uses
  %i.ax = icmp ugt i64 %i.aw, %i.am
  br i1 %i.ax, label %.split.us.i, label %bb.j, !prof !6

bb.j:                                             ; preds = %.lr.ph72.split.i
  %i.ay = sub nuw i64 %i.am, %i.aw                ; 2 uses
  %.not31.i = icmp ugt i64 %i.ac, %i.ay
  br i1 %.not31.i, label %.split74.us.i, label %.lr.ph.i, !prof !7

.split.us.i:                                      ; preds = %.lr.ph72.split.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aw, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #20, !noalias !3230
  unreachable

.split74.us.i:                                    ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #20, !noalias !3230
  unreachable

.lr.ph.i:                                         ; preds = %bb.j
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i12, i64 %i.aw
  %i.ba = mul i64 %indvars.iv.i, %.sroa.0.sroa.12.0.copyload
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %.lr.ph.i
  %.sroa.12.070.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bd, %bb.o ] ; 2 uses
  %.sroa.436.069.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.737.068.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.bc, %bb.o ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.436.069.i, i64 4
  %i.bc = add nsw i64 %.sroa.737.068.i, -2        ; 2 uses
  %i.bd = add nuw nsw i64 %.sroa.12.070.i, 1
  %i.be = mul i64 %.sroa.12.070.i, %.sroa.0.sroa.9.0.copyload
  %i.bf = add i64 %i.be, %i.ba                    ; 4 uses
  %i.bg = icmp ugt i64 %i.bf, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bg, label %bb.m, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.bh = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bf ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, 1
  br i1 %i.bi, label %bb.o, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.k
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #20, !noalias !3230
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #20, !noalias !3230
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bf
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %.sroa.436.069.i, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bj, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !3230
  %.not.i.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i, label %..loopexit_crit_edge.i, label %bb.k

._crit_edge78.i:                                  ; preds = %bb.w
  store i8 -1, ptr %0, align 8, !alias.scope !3227
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.lr.ph77.i:                                       ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i, %bb.w
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %bb.w ], [ 0, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE16inner_pixels_mutB9_.exit.i ] ; 3 uses
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.bk = trunc nuw i64 %indvars.iv122.i to i32
  %i.bl = add i32 %4, %i.bk
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.af
  %i.bo = add nuw i64 %i.bn, %i.aq
  %i.bp = shl i64 %i.bo, 1                        ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, %i.am
  br i1 %i.bq, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %.lr.ph77.i
  %i.br = sub nuw i64 %i.am, %i.bp                ; 2 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.val.i.i12, i64 %i.bp
  %.not33.i = icmp ugt i64 %i.ac, %i.br
  br i1 %.not33.i, label %bb.r, label %bb.s, !prof !7

bb.q:                                             ; preds = %.lr.ph77.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.am, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @198) #20, !noalias !3230
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #20, !noalias !3230
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.bt = mul i64 %indvars.iv122.i, %.sroa.0.sroa.12.0.copyload ; 4 uses
  %i.bu = icmp ugt i64 %i.bt, %.sroa.0.sroa.5.0.copyload
  br i1 %i.bu, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %bb.s
  %i.bv = sub nuw i64 %.sroa.0.sroa.5.0.copyload, %i.bt ; 2 uses
  %.not34.i = icmp ugt i64 %i.ac, %i.bv
  br i1 %.not34.i, label %bb.v, label %bb.w, !prof !6

bb.u:                                             ; preds = %bb.s
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %.sroa.0.sroa.5.0.copyload, i64 noundef %.sroa.0.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #20, !noalias !3230
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ac, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #20, !noalias !3230
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %i.bt
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_impltECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 2 %i.bs, i64 noundef %i.ac, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.bw, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195), !noalias !3230
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count125.i
  br i1 %exitcond126.not.i, label %._crit_edge78.i, label %.lr.ph77.i

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %3, ptr %i.h, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %4, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.k, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.m, ptr %i.bz, align 4
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.ca = load i8, ptr %i.i, align 8, !range !11, !noundef !5
  %.not11 = icmp eq i8 %i.ca, -1
  br i1 %.not11, label %.split111, label %bb.y

_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit: ; preds = %._crit_edge78.i, %._crit_edge.i, %bb.e, %bb.c, %._crit_edge.split, %bb.y
  ret void

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvXsK_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image12GenericImage17copy_from_samplesB9_.exit

.split111:                                        ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %._crit_edge.split, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split111
  %.not113 = icmp eq i32 %i.k, 0
  %i.cb = zext i32 %i.k to i64                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = load i32, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15.i.i17 = load i64, ptr %i.ch, align 8    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i19 = load ptr, ptr %i.ci, align 8, !nonnull !5
  br i1 %.not113, label %._crit_edge.split, label %.split.preheader

end_hunk_8
