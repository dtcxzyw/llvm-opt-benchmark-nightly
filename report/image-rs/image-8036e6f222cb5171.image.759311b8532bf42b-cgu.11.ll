Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute14AttributeValueECsa5QsYiPB8Gl_5image:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %common.resume unwind label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit2: ; preds = %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
  br label %bb.d

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %common.resume unwind label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj10_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i16, i16 } @_RINvNtNtCsch97uQowpgv_3fax4maps5black6decodeINtB6_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2m_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 5, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNtNtCsch97uQowpgv_3fax4maps5black12PREFIX_LUT_0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.d, align 8
  store i8 2, ptr %i.a, align 8
  %i.e = call { i16, i16 } @_RINvMNtCsch97uQowpgv_3fax4mapsINtB3_5EntrytE4findINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB18_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB2r_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i16, i16 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsa5QsYiPB8Gl_5image(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #26, !noalias !361
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %0, %1
  br i1 %i.b, label %bb.d, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #26, !noalias !361
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit: ; preds = %bb.c
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %1, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeINtNtNtB6_3ops5range7RangeTojEECsa5QsYiPB8Gl_5image(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ugt i64 %0, %1
  br i1 %i.a, label %bb.b, label %_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #26, !noalias !364
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit: ; preds = %bb.a
  %i.b = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCsj6eKBz9Db1c_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECsa5QsYiPB8Gl_5image(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel14map_with_alphaNCINvNtNtB9_8imageops8colorops8brightenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0NCB1p_s_0EB9_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 1               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  %i.a = load i32, ptr %1, align 4, !alias.scope !369, !noundef !5
  %i.b = load i32, ptr %2, align 4, !alias.scope !370, !noundef !5
  %i.c = and i16 %.val, 255
  %i.d = zext nneg i16 %i.c to i32
  %i.e = add i32 %i.a, %i.d                       ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.f, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  br i1 %or.cond.i.i.i.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel16apply_with_alphaNCINvNtNtB9_8imageops8colorops8brightenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0NCB1r_s_0EB9_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !371
  unreachable

_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel16apply_with_alphaNCINvNtNtB9_8imageops8colorops8brightenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0NCB1r_s_0EB9_.exit: ; preds = %bb.a
  %.sroa.6.0.extract.shift = and i16 %.val, -256
  %.sroa.0.0.insert.ext = trunc nuw nsw i32 %.sroa.0.0.i.i.i to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.6.0.extract.shift, %.sroa.0.0.insert.ext
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel3mapNCINvNtNtB9_8imageops8colorops8contrastINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0EB9_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 1               ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %.val to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.a = load float, ptr %1, align 4, !alias.scope !376, !noundef !5 ; 8 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !377, !noundef !5 ; 2 uses
  %i.c = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 2.560000e+02
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !378
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i16 %.val, 8
  %.sroa.6.0.extract.trunc = trunc nuw i16 %.sroa.6.0.extract.shift to i8
  %i.m = uitofp i8 %.sroa.6.0.extract.trunc to float
  %i.n = fdiv float %i.m, %i.a
  %i.o = fadd float %i.n, -5.000000e-01
  %i.p = fmul float %i.b, %i.o
  %i.q = fadd float %i.p, 5.000000e-01
  %i.r = fmul float %i.a, %i.q                    ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  %i.t = fcmp ogt float %i.r, %i.a
  %..i.i.1.i = select i1 %i.t, float %i.a, float %i.r
  %.sroa.0.0.i.i.1.i = select i1 %i.s, float 0.000000e+00, float %..i.i.1.i ; 3 uses
  %i.u = fcmp ogt float %.sroa.0.0.i.i.1.i, -1.000000e+00
  %i.v = fcmp olt float %.sroa.0.0.i.i.1.i, 2.560000e+02
  %or.cond.i.i.i.1.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.1.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel5applyNCINvNtNtB9_8imageops8colorops8contrastINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0EB9_.exit, label %bb.b, !prof !13

_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel5applyNCINvNtNtB9_8imageops8colorops8contrastINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0EB9_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i
  %i.w = fptoui float %.sroa.0.0.i.i.i to i8
  %i.x = fptoui float %.sroa.0.0.i.i.1.i to i8
  %.sroa.6.0.insert.ext = zext i8 %i.x to i16
  %.sroa.6.0.insert.shift = shl nuw i16 %.sroa.6.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext i8 %i.w to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i16 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel4map2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0EB9_(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i16, ptr %0, align 1
  store i16 %.val, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull dereferenceable(2) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly dereferenceable(2) %1, ptr noundef nonnull readonly %i.d), !noalias !386
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !387 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !387 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !387 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !387 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel6apply2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0EB9_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !384, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !385
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !386, !noundef !5
  %i.l = load i8, ptr %i.i, align 1, !noalias !386, !noundef !5 ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = zext i8 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i8
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !386
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i8 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i8 %.sroa.0.0.i6.i, ptr %i.i, align 1, !noalias !386
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel6apply2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0EB9_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAhENtNtB9_6traits5Pixel6apply2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBz_hE0EB9_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i16, ptr %i.b, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i16 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel14map_with_alphaNCINvNtNtB9_8imageops8colorops8brightenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0NCB1p_s_0EB9_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i32, ptr %0, align 2               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.a = load i32, ptr %1, align 4, !alias.scope !392, !noundef !5
  %i.b = load i32, ptr %2, align 4, !alias.scope !393, !noundef !5
  %i.c = and i32 %.val, 65535
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  br i1 %or.cond.i.i.i.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel16apply_with_alphaNCINvNtNtB9_8imageops8colorops8brightenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0NCB1r_s_0EB9_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !394
  unreachable

_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel16apply_with_alphaNCINvNtNtB9_8imageops8colorops8brightenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0NCB1r_s_0EB9_.exit: ; preds = %bb.a
  %.sroa.6.0.extract.shift = and i32 %.val, -65536
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.0.0.i.i.i, %.sroa.6.0.extract.shift
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel3mapNCINvNtNtB9_8imageops8colorops8contrastINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0EB9_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i32, ptr %0, align 2               ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.a = load float, ptr %1, align 4, !alias.scope !399, !noundef !5 ; 8 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !400, !noundef !5 ; 2 uses
  %i.c = uitofp i16 %.sroa.0.0.extract.trunc to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 6.553600e+04
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !401
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i32 %.val, 16
  %.sroa.6.0.extract.trunc = trunc nuw i32 %.sroa.6.0.extract.shift to i16
  %i.m = uitofp i16 %.sroa.6.0.extract.trunc to float
  %i.n = fdiv float %i.m, %i.a
  %i.o = fadd float %i.n, -5.000000e-01
  %i.p = fmul float %i.b, %i.o
  %i.q = fadd float %i.p, 5.000000e-01
  %i.r = fmul float %i.a, %i.q                    ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  %i.t = fcmp ogt float %i.r, %i.a
  %..i.i.1.i = select i1 %i.t, float %i.a, float %i.r
  %.sroa.0.0.i.i.1.i = select i1 %i.s, float 0.000000e+00, float %..i.i.1.i ; 3 uses
  %i.u = fcmp ogt float %.sroa.0.0.i.i.1.i, -1.000000e+00
  %i.v = fcmp olt float %.sroa.0.0.i.i.1.i, 6.553600e+04
  %or.cond.i.i.i.1.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.1.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel5applyNCINvNtNtB9_8imageops8colorops8contrastINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0EB9_.exit, label %bb.b, !prof !13

_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel5applyNCINvNtNtB9_8imageops8colorops8contrastINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0EB9_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i
  %i.w = fptoui float %.sroa.0.0.i.i.i to i16
  %i.x = fptoui float %.sroa.0.0.i.i.1.i to i16
  %.sroa.6.0.insert.ext = zext i16 %i.x to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %i.w to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel4map2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0EB9_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i32, ptr %0, align 2
  store i32 %.val, ptr %i.b, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 2 dereferenceable(4) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 2 dereferenceable(4) %1, ptr noundef nonnull readonly %i.d), !noalias !409
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !410 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !410 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !410 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !410 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel6apply2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0EB9_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !407, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !408
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i16, ptr %i.j, align 2, !noalias !409, !noundef !5
  %i.l = load i16, ptr %i.i, align 2, !noalias !409, !noundef !5 ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = zext i16 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i16
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !409
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i16 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i16 %.sroa.0.0.i6.i, ptr %i.i, align 2, !noalias !409
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel6apply2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0EB9_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB7_5LumaAtENtNtB9_6traits5Pixel6apply2NCINvNtNtB9_8imageops6sample9unsharpenINtNtNtB9_6images6buffer11ImageBufferBz_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBz_tE0EB9_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i8 noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = icmp eq i8 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !12, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !15, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f, !prof !11

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.a, align 8, !range !12, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !15, !noundef !5 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.j, label %bb.d, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.m, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #28
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.p = icmp ule i64 %2, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.r, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.s) #28
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.v, align 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit, %bb.f
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB1J_5Image11from_readerINtNtNtBb_2io6cursor6CursorRShEEs1_0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %.fr = freeze i64 %i.d
  %.not.i = icmp eq i64 %.fr, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5
  %.not9 = icmp eq ptr %.promoted, %i.b           ; 2 uses
  br i1 %.not.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %.not9, label %.split5.us, label %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit.preheader

_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit.preheader: ; preds = %.split.preheader
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  br label %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit

.split.us:                                        ; preds = %bb.a
  br i1 %.not9, label %.split5.us, label %.split7.us

.split7.us:                                       ; preds = %.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %.promoted, i64 1
  store ptr %i.h, ptr %0, align 8
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #26
  unreachable

_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit, %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit.preheader
  %i.i = phi ptr [ %i.j, %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit ], [ %.promoted, %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %.val2 = load i8, ptr %i.i, align 1
  %.not = icmp ne i8 %.val2, %i.g                 ; 2 uses
  %.not8.not = icmp eq ptr %i.j, %i.b
  %or.cond = select i1 %.not, i1 true, i1 %.not8.not
  br i1 %or.cond, label %.split5.us.loopexit, label %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit

.split5.us.loopexit:                              ; preds = %_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs1_0Csa5QsYiPB8Gl_5image.exit
  store ptr %i.j, ptr %0, align 8
  br label %.split5.us

.split5.us:                                       ; preds = %.split5.us.loopexit, %.split.preheader, %.split.us
  %.us-phi = phi i1 [ false, %.split.us ], [ false, %.split.preheader ], [ %.not, %.split5.us.loopexit ]
  ret i1 %.us-phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0NCB1m_s_0EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !alias.scope !418 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !418 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.b = load i32, ptr %2, align 4, !alias.scope !419 ; 2 uses
  %i.c = load i32, ptr %3, align 4, !alias.scope !420 ; 2 uses
  %i.d = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.e = fcmp oge float %i.d, f0xCF000000
  %i.f = fcmp olt float %i.d, f0x4F000000
  %or.cond.i.i.i.i = and i1 %i.e, %i.f
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #26, !noalias !421
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i: ; preds = %bb.a
  %i.g = extractelement <2 x float> %i.a, i64 1   ; 2 uses
  %i.h = fcmp oge float %i.g, f0xCF000000
  %i.i = fcmp olt float %i.g, f0x4F000000
  %or.cond.i.i.i.1.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i
  %i.j = fcmp oge float %.sroa.5.0.copyload, f0xCF000000
  %i.k = fcmp olt float %.sroa.5.0.copyload, f0x4F000000
  %or.cond.i.i.i.2.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0NCB1o_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0NCB1o_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i
  %i.l = fptosi <2 x float> %i.a to <2 x i32>
  %i.m = fptosi float %.sroa.5.0.copyload to i32
  %i.n = add i32 %i.b, %i.m                       ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.c)
  %.sroa.0.0.i.i.2.i = select i1 %i.o, i32 0, i32 %..i.i.2.i
  %i.p = sitofp i32 %.sroa.0.0.i.i.2.i to float
  %i.q = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.r = shufflevector <2 x i32> %i.q, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.s = add <2 x i32> %i.r, %i.l                 ; 2 uses
  %i.t = icmp slt <2 x i32> %i.s, zeroinitializer
  %i.u = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.s, <2 x i32> %i.v)
  %i.x = select <2 x i1> %i.t, <2 x i32> zeroinitializer, <2 x i32> %i.w
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  store <2 x float> %i.y, ptr %0, align 4
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.p, ptr %.sroa.8.0..sroa_idx5, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.a = load float, ptr %2, align 4, !alias.scope !429, !noundef !5 ; 5 uses
  %i.b = load float, ptr %3, align 4, !alias.scope !430, !noundef !5 ; 2 uses
  %i.c = fdiv float %.sroa.5.0.copyload, %i.a
  %i.d = fadd float %i.c, -5.000000e-01
  %i.e = fmul float %i.b, %i.d
  %i.f = fadd float %i.e, 5.000000e-01
  %i.g = fmul float %i.a, %i.f                    ; 3 uses
  %i.h = fcmp olt float %i.g, 0.000000e+00
  %i.i = fcmp ogt float %i.g, %i.a
  %..i.i.2.i = select i1 %i.i, float %i.a, float %i.g
  %.sroa.0.0.i.i.2.i = select i1 %i.h, float 0.000000e+00, float %..i.i.2.i
  %i.j = load <2 x float>, ptr %1, align 4, !alias.scope !428
  %i.k = insertelement <2 x float> poison, float %i.a, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.m = fdiv <2 x float> %i.j, %i.l
  %i.n = fadd <2 x float> %i.m, splat (float -5.000000e-01)
  %i.o = insertelement <2 x float> poison, float %i.b, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.p, %i.n
  %i.r = fadd <2 x float> %i.q, splat (float 5.000000e-01)
  %i.s = fmul <2 x float> %i.l, %i.r              ; 3 uses
  %i.t = fcmp olt <2 x float> %i.s, zeroinitializer
  %i.u = fcmp ogt <2 x float> %i.s, %i.l
  %i.v = select <2 x i1> %i.u, <2 x float> %i.l, <2 x float> %i.s
  %i.w = select <2 x i1> %i.t, <2 x float> zeroinitializer, <2 x float> %i.v
  store <2 x float> %i.w, ptr %0, align 4
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.0.0.i.i.2.i, ptr %.sroa.8.0..sroa_idx4, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [12 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 4 dereferenceable(12) %2, ptr noundef nonnull readonly %i.d), !noalias !438
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !439 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !439 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !439 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !439 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %3, align 4, !alias.scope !436
  %i.g = load i32, ptr %4, align 4, !alias.scope !437
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load float, ptr %i.j, align 4, !noalias !438, !noundef !5 ; 3 uses
  %i.l = load float, ptr %i.i, align 4, !noalias !438, !noundef !5 ; 4 uses
  %i.m = fcmp oge float %i.l, f0xCF000000
  %i.n = fcmp olt float %i.l, f0x4F000000
  %or.cond.i.i.i.i = and i1 %i.m, %i.n
  %i.o = fptosi float %i.l to i32                 ; 2 uses
  br i1 %or.cond.i.i.i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.p = fcmp oge float %i.k, f0xCF000000
  %i.q = fcmp olt float %i.k, f0x4F000000
  %or.cond.i.i10.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i10.i.i, label %bb.d, label %bb.e, !prof !13

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #26, !noalias !438
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = fptosi float %i.k to i32
  %i.s = sub i32 %i.o, %i.r                       ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.s, i1 false)
  %i.t = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.t, label %bb.f, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !438
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = add i32 %i.s, %i.o                       ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.v, i32 0, i32 %..i.i.i
  %i.w = sitofp i32 %.sroa.0.0.i.i.i to float
  br label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i6.i = phi float [ %i.w, %bb.f ], [ %i.l, %bb.d ]
  store float %.sroa.0.0.i6.i, ptr %i.i, align 4, !noalias !438
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbfENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i24 @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1m_s_0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i24, ptr %0, align 1               ; 3 uses
  %.sroa.8.0.extract.shift = lshr i24 %.val, 16
  %.sroa.8.0.extract.trunc = zext nneg i24 %.sroa.8.0.extract.shift to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.a = load i32, ptr %1, align 4, !alias.scope !444, !noundef !5 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !alias.scope !445, !noundef !5 ; 3 uses
  %i.c = and i24 %.val, 255
  %i.d = zext nneg i24 %i.c to i32
  %i.e = add i32 %i.a, %i.d                       ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.f, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !446
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i24 %.val, 8
  %i.g = and i24 %.sroa.6.0.extract.shift, 255
  %i.h = zext nneg i24 %i.g to i32
  %i.i = add i32 %i.a, %i.h                       ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  %..i.i.1.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.b)
  %.sroa.0.0.i.i.1.i = select i1 %i.j, i32 0, i32 %..i.i.1.i ; 2 uses
  %or.cond.i.i.i.1.i = icmp ult i32 %.sroa.0.0.i.i.1.i, 256
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i
  %i.k = add i32 %i.a, %.sroa.8.0.extract.trunc   ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.b)
  %.sroa.0.0.i.i.2.i = select i1 %i.l, i32 0, i32 %..i.i.2.i ; 2 uses
  %or.cond.i.i.i.2.i = icmp ult i32 %.sroa.0.0.i.i.2.i, 256
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1o_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1o_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i
  %i.m = trunc nuw nsw i32 %.sroa.0.0.i.i.2.i to i24
  %.sroa.8.0.insert.shift = shl nuw i24 %i.m, 16
  %i.n = trunc nuw nsw i32 %.sroa.0.0.i.i.1.i to i24
  %.sroa.6.0.insert.shift = shl nuw nsw i24 %i.n, 8
  %.sroa.6.0.insert.insert = or disjoint i24 %.sroa.8.0.insert.shift, %.sroa.6.0.insert.shift
  %i.o = trunc nuw nsw i32 %.sroa.0.0.i.i.i to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.6.0.insert.insert, %i.o
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden i24 @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i24, ptr %0, align 1               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i24 %.val to i8
  %.sroa.8.0.extract.shift = lshr i24 %.val, 16
  %.sroa.8.0.extract.trunc = trunc nuw i24 %.sroa.8.0.extract.shift to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.a = load float, ptr %1, align 4, !alias.scope !451, !noundef !5 ; 12 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !452, !noundef !5 ; 3 uses
  %i.c = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 2.560000e+02
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !453
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i24 %.val, 8
  %.sroa.6.0.extract.trunc = trunc i24 %.sroa.6.0.extract.shift to i8
  %i.m = uitofp i8 %.sroa.6.0.extract.trunc to float
  %i.n = fdiv float %i.m, %i.a
  %i.o = fadd float %i.n, -5.000000e-01
  %i.p = fmul float %i.b, %i.o
  %i.q = fadd float %i.p, 5.000000e-01
  %i.r = fmul float %i.a, %i.q                    ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  %i.t = fcmp ogt float %i.r, %i.a
  %..i.i.1.i = select i1 %i.t, float %i.a, float %i.r
  %.sroa.0.0.i.i.1.i = select i1 %i.s, float 0.000000e+00, float %..i.i.1.i ; 3 uses
  %i.u = fcmp ogt float %.sroa.0.0.i.i.1.i, -1.000000e+00
  %i.v = fcmp olt float %.sroa.0.0.i.i.1.i, 2.560000e+02
  %or.cond.i.i.i.1.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i
  %i.w = uitofp i8 %.sroa.8.0.extract.trunc to float
  %i.x = fdiv float %i.w, %i.a
  %i.y = fadd float %i.x, -5.000000e-01
  %i.z = fmul float %i.b, %i.y
  %i.aa = fadd float %i.z, 5.000000e-01
  %i.ab = fmul float %i.a, %i.aa                  ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fcmp ogt float %i.ab, %i.a
  %..i.i.2.i = select i1 %i.ad, float %i.a, float %i.ab
  %.sroa.0.0.i.i.2.i = select i1 %i.ac, float 0.000000e+00, float %..i.i.2.i ; 3 uses
  %i.ae = fcmp ogt float %.sroa.0.0.i.i.2.i, -1.000000e+00
  %i.af = fcmp olt float %.sroa.0.0.i.i.2.i, 2.560000e+02
  %or.cond.i.i.i.2.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit, label %bb.b, !prof !13

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i
  %i.ag = fptoui float %.sroa.0.0.i.i.1.i to i8
  %i.ah = fptoui float %.sroa.0.0.i.i.i to i8
  %i.ai = fptoui float %.sroa.0.0.i.i.2.i to i8
  %.sroa.8.0.insert.ext = zext i8 %i.ai to i24
  %.sroa.8.0.insert.shift = shl nuw i24 %.sroa.8.0.insert.ext, 16
  %.sroa.6.0.insert.ext = zext i8 %i.ag to i24
  %.sroa.6.0.insert.shift = shl nuw nsw i24 %.sroa.6.0.insert.ext, 8
  %.sroa.6.0.insert.insert = or disjoint i24 %.sroa.8.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %i.ah to i24
  %.sroa.0.0.insert.insert = or disjoint i24 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  ret i24 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden i24 @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [3 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i24, ptr %0, align 1
  store i24 %.val, ptr %i.b, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull dereferenceable(3) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly dereferenceable(3) %1, ptr noundef nonnull readonly %i.d), !noalias !461
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !462 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !462 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !462 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !462 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !459, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !460
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !461, !noundef !5
  %i.l = load i8, ptr %i.i, align 1, !noalias !461, !noundef !5 ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = zext i8 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i8
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !461
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i8 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i8 %.sroa.0.0.i6.i, ptr %i.i, align 1, !noalias !461
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i24, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i24 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define hidden i48 @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1m_s_0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i48, ptr %0, align 2               ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i48 %.val to i32 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i48 %.val, 32
  %.sroa.8.0.extract.trunc = trunc nuw nsw i48 %.sroa.8.0.extract.shift to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.a = load i32, ptr %1, align 4, !alias.scope !467, !noundef !5 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !alias.scope !468, !noundef !5 ; 3 uses
  %i.c = and i32 %.sroa.0.0.extract.trunc, 65535
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !469
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i: ; preds = %bb.a
  %i.f = lshr i32 %.sroa.0.0.extract.trunc, 16
  %i.g = add i32 %i.a, %i.f                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %..i.i.1.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.b)
  %.sroa.0.0.i.i.1.i = select i1 %i.h, i32 0, i32 %..i.i.1.i ; 2 uses
  %or.cond.i.i.i.1.i = icmp ult i32 %.sroa.0.0.i.i.1.i, 65536
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i
  %i.i = add i32 %i.a, %.sroa.8.0.extract.trunc   ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.b)
  %.sroa.0.0.i.i.2.i = select i1 %i.j, i32 0, i32 %..i.i.2.i ; 2 uses
  %or.cond.i.i.i.2.i = icmp ult i32 %.sroa.0.0.i.i.2.i, 65536
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1o_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1o_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i
  %.sroa.8.0.insert.ext = zext nneg i32 %.sroa.0.0.i.i.2.i to i48
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 32
  %i.k = shl nuw i32 %.sroa.0.0.i.i.1.i, 16
  %.sroa.6.0.insert.shift = zext i32 %i.k to i48
  %.sroa.6.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0.0.i.i.i to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden i48 @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i48, ptr %0, align 2               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i48 %.val to i16
  %.sroa.8.0.extract.shift = lshr i48 %.val, 32
  %.sroa.8.0.extract.trunc = trunc nuw i48 %.sroa.8.0.extract.shift to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.a = load float, ptr %1, align 4, !alias.scope !474, !noundef !5 ; 12 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !475, !noundef !5 ; 3 uses
  %i.c = uitofp i16 %.sroa.0.0.extract.trunc to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 6.553600e+04
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !476
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i48 %.val, 16
  %.sroa.6.0.extract.trunc = trunc i48 %.sroa.6.0.extract.shift to i16
  %i.m = uitofp i16 %.sroa.6.0.extract.trunc to float
  %i.n = fdiv float %i.m, %i.a
  %i.o = fadd float %i.n, -5.000000e-01
  %i.p = fmul float %i.b, %i.o
  %i.q = fadd float %i.p, 5.000000e-01
  %i.r = fmul float %i.a, %i.q                    ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  %i.t = fcmp ogt float %i.r, %i.a
  %..i.i.1.i = select i1 %i.t, float %i.a, float %i.r
  %.sroa.0.0.i.i.1.i = select i1 %i.s, float 0.000000e+00, float %..i.i.1.i ; 3 uses
  %i.u = fcmp ogt float %.sroa.0.0.i.i.1.i, -1.000000e+00
  %i.v = fcmp olt float %.sroa.0.0.i.i.1.i, 6.553600e+04
  %or.cond.i.i.i.1.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i
  %i.w = uitofp i16 %.sroa.8.0.extract.trunc to float
  %i.x = fdiv float %i.w, %i.a
  %i.y = fadd float %i.x, -5.000000e-01
  %i.z = fmul float %i.b, %i.y
  %i.aa = fadd float %i.z, 5.000000e-01
  %i.ab = fmul float %i.a, %i.aa                  ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fcmp ogt float %i.ab, %i.a
  %..i.i.2.i = select i1 %i.ad, float %i.a, float %i.ab
  %.sroa.0.0.i.i.2.i = select i1 %i.ac, float 0.000000e+00, float %..i.i.2.i ; 3 uses
  %i.ae = fcmp ogt float %.sroa.0.0.i.i.2.i, -1.000000e+00
  %i.af = fcmp olt float %.sroa.0.0.i.i.2.i, 6.553600e+04
  %or.cond.i.i.i.2.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit, label %bb.b, !prof !13

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i
  %i.ag = fptoui float %.sroa.0.0.i.i.1.i to i16
  %i.ah = fptoui float %.sroa.0.0.i.i.i to i16
  %i.ai = fptoui float %.sroa.0.0.i.i.2.i to i16
  %.sroa.8.0.insert.ext = zext i16 %i.ai to i48
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 32
  %.sroa.6.0.insert.ext = zext i16 %i.ag to i48
  %.sroa.6.0.insert.shift = shl nuw nsw i48 %.sroa.6.0.insert.ext, 16
  %.sroa.6.0.insert.insert = or disjoint i48 %.sroa.8.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.0.0.insert.ext = zext i16 %i.ah to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  ret i48 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden i48 @_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(6) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(6) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [6 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i48, ptr %0, align 2
  store i48 %.val, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 2 dereferenceable(6) %1, ptr noundef nonnull readonly %i.d), !noalias !484
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !485 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !485 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !485 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !485 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !482, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !483
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i16, ptr %i.j, align 2, !noalias !484, !noundef !5
  %i.l = load i16, ptr %i.i, align 2, !noalias !484, !noundef !5 ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = zext i16 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i16
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !484
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i16 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i16 %.sroa.0.0.i6.i, ptr %i.i, align 2, !noalias !484
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i48, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i48 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1n_s_0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.a = load i32, ptr %1, align 4, !alias.scope !490, !noundef !5
  %i.b = load i32, ptr %2, align 4, !alias.scope !491, !noundef !5
  %i.c = zext i8 %.val to i32
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  br i1 %or.cond.i.i.i.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1p_s_0EB8_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !492
  unreachable

_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1p_s_0EB8_.exit: ; preds = %bb.a
  %i.f = trunc nuw i32 %.sroa.0.0.i.i.i to i8
  ret i8 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.a = load float, ptr %1, align 4, !alias.scope !497, !noundef !5 ; 4 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !498, !noundef !5
  %i.c = uitofp i8 %.val to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 2.560000e+02
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !499
  unreachable

_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit: ; preds = %bb.a
  %i.m = fptoui float %.sroa.0.0.i.i.i to i8
  ret i8 %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i8, ptr %0, align 1
  store i8 %.val, ptr %i.b, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly %i.d), !noalias !507
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !508 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !508 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !508 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !508 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !505, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !506
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !507, !noundef !5
  %i.l = load i8, ptr %i.i, align 1, !noalias !507, !noundef !5 ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = zext i8 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i8
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !507
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i8 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i8 %.sroa.0.0.i6.i, ptr %i.i, align 1, !noalias !507
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i8, ptr %i.b, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1n_s_0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.a = load i32, ptr %1, align 4, !alias.scope !513, !noundef !5
  %i.b = load i32, ptr %2, align 4, !alias.scope !514, !noundef !5
  %i.c = zext i16 %.val to i32
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  br i1 %or.cond.i.i.i.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1p_s_0EB8_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !515
  unreachable

_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1p_s_0EB8_.exit: ; preds = %bb.a
  %i.f = trunc nuw i32 %.sroa.0.0.i.i.i to i16
  ret i16 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.a = load float, ptr %1, align 4, !alias.scope !520, !noundef !5 ; 4 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !521, !noundef !5
  %i.c = uitofp i16 %.val to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 6.553600e+04
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !522
  unreachable

_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit: ; preds = %bb.a
  %i.m = fptoui float %.sroa.0.0.i.i.i to i16
  ret i16 %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i16 @_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i16, ptr %0, align 2
  store i16 %.val, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 2 dereferenceable(2) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 2 dereferenceable(2) %1, ptr noundef nonnull readonly %i.d), !noalias !530
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !531 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !531 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !531 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !531 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !528, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !529
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i16, ptr %i.j, align 2, !noalias !530, !noundef !5
  %i.l = load i16, ptr %i.i, align 2, !noalias !530, !noundef !5 ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = zext i16 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i16
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !530
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i16 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i16 %.sroa.0.0.i6.i, ptr %i.i, align 2, !noalias !530
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumatENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i16, ptr %i.b, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i16 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0NCB1n_s_0EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !alias.scope !539 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !alias.scope !539 ; 3 uses
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.610.0.copyload = load i32, ptr %.sroa.610.0..sroa_idx, align 4, !alias.scope !539
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.b = load i32, ptr %2, align 4, !alias.scope !540 ; 2 uses
  %i.c = load i32, ptr %3, align 4, !alias.scope !541 ; 2 uses
  %i.d = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.e = fcmp oge float %i.d, f0xCF000000
  %i.f = fcmp olt float %i.d, f0x4F000000
  %or.cond.i.i.i.i = and i1 %i.e, %i.f
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #26, !noalias !542
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i: ; preds = %bb.a
  %i.g = extractelement <2 x float> %i.a, i64 1   ; 2 uses
  %i.h = fcmp oge float %i.g, f0xCF000000
  %i.i = fcmp olt float %i.g, f0x4F000000
  %or.cond.i.i.i.1.i = and i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.i
  %i.j = fcmp oge float %.sroa.5.0.copyload, f0xCF000000
  %i.k = fcmp olt float %.sroa.5.0.copyload, f0x4F000000
  %or.cond.i.i.i.2.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0NCB1p_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0NCB1p_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1u_fE0B8_.exit.1.i
  %i.l = fptosi <2 x float> %i.a to <2 x i32>
  %i.m = fptosi float %.sroa.5.0.copyload to i32
  %i.n = add i32 %i.b, %i.m                       ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %i.c)
  %.sroa.0.0.i.i.2.i = select i1 %i.o, i32 0, i32 %..i.i.2.i
  %i.p = sitofp i32 %.sroa.0.0.i.i.2.i to float
  %i.q = insertelement <2 x i32> poison, i32 %i.b, i64 0
  %i.r = shufflevector <2 x i32> %i.q, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.s = add <2 x i32> %i.r, %i.l                 ; 2 uses
  %i.t = icmp slt <2 x i32> %i.s, zeroinitializer
  %i.u = insertelement <2 x i32> poison, i32 %i.c, i64 0
  %i.v = shufflevector <2 x i32> %i.u, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.w = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.s, <2 x i32> %i.v)
  %i.x = select <2 x i1> %i.t, <2 x i32> zeroinitializer, <2 x i32> %i.w
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  store <2 x float> %i.y, ptr %0, align 4
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.p, ptr %.sroa.8.0..sroa_idx5, align 4
  %.sroa.10.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.610.0.copyload, ptr %.sroa.10.0..sroa_idx7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.a = load float, ptr %2, align 4, !alias.scope !549, !noundef !5
  %i.b = load float, ptr %3, align 4, !alias.scope !550, !noundef !5
  %i.c = load <4 x float>, ptr %1, align 4, !alias.scope !551
  %i.d = insertelement <4 x float> poison, float %i.a, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.f = fdiv <4 x float> %i.c, %i.e
  %i.g = fadd <4 x float> %i.f, splat (float -5.000000e-01)
  %i.h = insertelement <4 x float> poison, float %i.b, i64 0
  %i.i = shufflevector <4 x float> %i.h, <4 x float> poison, <4 x i32> zeroinitializer
  %i.j = fmul <4 x float> %i.i, %i.g
  %i.k = fadd <4 x float> %i.j, splat (float 5.000000e-01)
  %i.l = fmul <4 x float> %i.e, %i.k              ; 3 uses
  %i.m = fcmp olt <4 x float> %i.l, zeroinitializer
  %i.n = fcmp ogt <4 x float> %i.l, %i.e
  %i.o = select <4 x i1> %i.n, <4 x float> %i.e, <4 x float> %i.l
  %i.p = select <4 x i1> %i.m, <4 x float> zeroinitializer, <4 x float> %i.o
  store <4 x float> %i.p, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, ptr noundef nonnull readonly %i.d), !noalias !559
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !560 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !560 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !560 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !560 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %3, align 4, !alias.scope !557
  %i.g = load i32, ptr %4, align 4, !alias.scope !558
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load float, ptr %i.j, align 4, !noalias !559, !noundef !5 ; 3 uses
  %i.l = load float, ptr %i.i, align 4, !noalias !559, !noundef !5 ; 4 uses
  %i.m = fcmp oge float %i.l, f0xCF000000
  %i.n = fcmp olt float %i.l, f0x4F000000
  %or.cond.i.i.i.i = and i1 %i.m, %i.n
  %i.o = fptosi float %i.l to i32                 ; 2 uses
  br i1 %or.cond.i.i.i.i, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.p = fcmp oge float %i.k, f0xCF000000
  %i.q = fcmp olt float %i.k, f0x4F000000
  %or.cond.i.i10.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i10.i.i, label %bb.d, label %bb.e, !prof !13

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #26, !noalias !559
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = fptosi float %i.k to i32
  %i.s = sub i32 %i.o, %i.r                       ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.s, i1 false)
  %i.t = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.t, label %bb.f, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #26, !noalias !559
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.u = add i32 %i.s, %i.o                       ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.u, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.v, i32 0, i32 %..i.i.i
  %i.w = sitofp i32 %.sroa.0.0.i.i.i to float
  br label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i6.i = phi float [ %i.w, %bb.f ], [ %i.l, %bb.d ]
  store float %.sroa.0.0.i6.i, ptr %i.i, align 4, !noalias !559
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbafENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEBy_fE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1t_fE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1n_s_0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i32, ptr %0, align 1               ; 4 uses
  %.sroa.8.0.extract.shift = lshr i32 %.val, 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  %i.a = load i32, ptr %1, align 4, !alias.scope !565, !noundef !5 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !alias.scope !566, !noundef !5 ; 3 uses
  %i.c = and i32 %.val, 255
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !567
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i32 %.val, 8
  %i.f = and i32 %.sroa.6.0.extract.shift, 255
  %i.g = add i32 %i.a, %i.f                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %..i.i.1.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.b)
  %.sroa.0.0.i.i.1.i = select i1 %i.h, i32 0, i32 %..i.i.1.i ; 2 uses
  %or.cond.i.i.i.1.i = icmp ult i32 %.sroa.0.0.i.i.1.i, 256
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i
  %i.i = and i32 %.sroa.8.0.extract.shift, 255
  %i.j = add i32 %i.a, %i.i                       ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.b)
  %.sroa.0.0.i.i.2.i = select i1 %i.k, i32 0, i32 %..i.i.2.i ; 2 uses
  %or.cond.i.i.i.2.i = icmp ult i32 %.sroa.0.0.i.i.2.i, 256
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1p_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1p_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i
  %.sroa.10.0.extract.shift = and i32 %.val, -16777216
  %.sroa.8.0.insert.shift = shl nuw nsw i32 %.sroa.0.0.i.i.2.i, 16
  %.sroa.8.0.insert.insert = or disjoint i32 %.sroa.8.0.insert.shift, %.sroa.10.0.extract.shift
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.0.0.i.i.1.i, 8
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.8.0.insert.insert, %.sroa.6.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.0.0.i.i.i
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i32, ptr %0, align 1               ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8
  %.sroa.8.0.extract.shift = lshr i32 %.val, 16
  %.sroa.8.0.extract.trunc = trunc i32 %.sroa.8.0.extract.shift to i8
  %.sroa.10.0.extract.shift = lshr i32 %.val, 24
  %.sroa.10.0.extract.trunc = trunc nuw i32 %.sroa.10.0.extract.shift to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.a = load float, ptr %1, align 4, !alias.scope !572, !noundef !5 ; 16 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !573, !noundef !5 ; 4 uses
  %i.c = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 2.560000e+02
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.2.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !574
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i32 %.val, 8
  %.sroa.6.0.extract.trunc = trunc i32 %.sroa.6.0.extract.shift to i8
  %i.m = uitofp i8 %.sroa.6.0.extract.trunc to float
  %i.n = fdiv float %i.m, %i.a
  %i.o = fadd float %i.n, -5.000000e-01
  %i.p = fmul float %i.b, %i.o
  %i.q = fadd float %i.p, 5.000000e-01
  %i.r = fmul float %i.a, %i.q                    ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  %i.t = fcmp ogt float %i.r, %i.a
  %..i.i.1.i = select i1 %i.t, float %i.a, float %i.r
  %.sroa.0.0.i.i.1.i = select i1 %i.s, float 0.000000e+00, float %..i.i.1.i ; 3 uses
  %i.u = fcmp ogt float %.sroa.0.0.i.i.1.i, -1.000000e+00
  %i.v = fcmp olt float %.sroa.0.0.i.i.1.i, 2.560000e+02
  %or.cond.i.i.i.1.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i
  %i.w = uitofp i8 %.sroa.8.0.extract.trunc to float
  %i.x = fdiv float %i.w, %i.a
  %i.y = fadd float %i.x, -5.000000e-01
  %i.z = fmul float %i.b, %i.y
  %i.aa = fadd float %i.z, 5.000000e-01
  %i.ab = fmul float %i.a, %i.aa                  ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fcmp ogt float %i.ab, %i.a
  %..i.i.2.i = select i1 %i.ad, float %i.a, float %i.ab
  %.sroa.0.0.i.i.2.i = select i1 %i.ac, float 0.000000e+00, float %..i.i.2.i ; 3 uses
  %i.ae = fcmp ogt float %.sroa.0.0.i.i.2.i, -1.000000e+00
  %i.af = fcmp olt float %.sroa.0.0.i.i.2.i, 2.560000e+02
  %or.cond.i.i.i.2.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i.2.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.2.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.2.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i
  %i.ag = uitofp i8 %.sroa.10.0.extract.trunc to float
  %i.ah = fdiv float %i.ag, %i.a
  %i.ai = fadd float %i.ah, -5.000000e-01
  %i.aj = fmul float %i.b, %i.ai
  %i.ak = fadd float %i.aj, 5.000000e-01
  %i.al = fmul float %i.a, %i.ak                  ; 3 uses
  %i.am = fcmp olt float %i.al, 0.000000e+00
  %i.an = fcmp ogt float %i.al, %i.a
  %..i.i.3.i = select i1 %i.an, float %i.a, float %i.al
  %.sroa.0.0.i.i.3.i = select i1 %i.am, float 0.000000e+00, float %..i.i.3.i ; 3 uses
  %i.ao = fcmp ogt float %.sroa.0.0.i.i.3.i, -1.000000e+00
  %i.ap = fcmp olt float %.sroa.0.0.i.i.3.i, 2.560000e+02
  %or.cond.i.i.i.3.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i.i.i.3.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit, label %bb.b, !prof !13

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.2.i
  %i.aq = insertelement <4 x float> poison, float %.sroa.0.0.i.i.i, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %.sroa.0.0.i.i.1.i, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %.sroa.0.0.i.i.2.i, i64 2
  %i.at = insertelement <4 x float> %i.as, float %.sroa.0.0.i.i.3.i, i64 3
  %i.au = fptoui <4 x float> %i.at to <4 x i8>
  %i.av = bitcast <4 x i8> %i.au to i32
  ret i32 %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i32, ptr %0, align 1
  store i32 %.val, ptr %i.b, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull dereferenceable(4) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly dereferenceable(4) %1, ptr noundef nonnull readonly %i.d), !noalias !582
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !583 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !583 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !583 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !583 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !580, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !581
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !582, !noundef !5
  %i.l = load i8, ptr %i.i, align 1, !noalias !582, !noundef !5 ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = zext i8 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i8
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !582
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i8 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i8 %.sroa.0.0.i6.i, ptr %i.i, align 1, !noalias !582
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1n_s_0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 2               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.val to i32 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i64 %.val, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  %i.a = load i32, ptr %1, align 4, !alias.scope !588, !noundef !5 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !alias.scope !589, !noundef !5 ; 3 uses
  %i.c = and i32 %.sroa.0.0.extract.trunc, 65535
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !590
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i: ; preds = %bb.a
  %i.f = lshr i32 %.sroa.0.0.extract.trunc, 16
  %i.g = add i32 %i.a, %i.f                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %..i.i.1.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.b)
  %.sroa.0.0.i.i.1.i = select i1 %i.h, i32 0, i32 %..i.i.1.i ; 2 uses
  %or.cond.i.i.i.1.i = icmp ult i32 %.sroa.0.0.i.i.1.i, 65536
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i
  %i.i = and i32 %.sroa.8.0.extract.trunc, 65535
  %i.j = add i32 %i.a, %i.i                       ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.b)
  %.sroa.0.0.i.i.2.i = select i1 %i.k, i32 0, i32 %..i.i.2.i ; 2 uses
  %or.cond.i.i.i.2.i = icmp ult i32 %.sroa.0.0.i.i.2.i, 65536
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1p_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1p_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i
  %.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0.0.i.i.i to i64
  %.sroa.10.0.extract.shift = and i64 %.val, -281474976710656
  %.sroa.8.0.insert.ext = zext nneg i32 %.sroa.0.0.i.i.2.i to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.10.0.extract.shift
  %i.l = shl nuw i32 %.sroa.0.0.i.i.1.i, 16
  %.sroa.6.0.insert.shift = zext i32 %i.l to i64
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.insert, %.sroa.6.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel3mapNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 2               ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.val to i16
  %.sroa.8.0.extract.shift = lshr i64 %.val, 32
  %.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.0.extract.shift to i16
  %.sroa.10.0.extract.shift = lshr i64 %.val, 48
  %.sroa.10.0.extract.trunc = trunc nuw i64 %.sroa.10.0.extract.shift to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.a = load float, ptr %1, align 4, !alias.scope !595, !noundef !5 ; 16 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !596, !noundef !5 ; 4 uses
  %i.c = uitofp i16 %.sroa.0.0.extract.trunc to float
  %i.d = fdiv float %i.c, %i.a
  %i.e = fadd float %i.d, -5.000000e-01
  %i.f = fmul float %i.b, %i.e
  %i.g = fadd float %i.f, 5.000000e-01
  %i.h = fmul float %i.a, %i.g                    ; 3 uses
  %i.i = fcmp olt float %i.h, 0.000000e+00
  %i.j = fcmp ogt float %i.h, %i.a
  %..i.i.i = select i1 %i.j, float %i.a, float %i.h
  %.sroa.0.0.i.i.i = select i1 %i.i, float 0.000000e+00, float %..i.i.i ; 3 uses
  %i.k = fcmp ogt float %.sroa.0.0.i.i.i, -1.000000e+00
  %i.l = fcmp olt float %.sroa.0.0.i.i.i, 6.553600e+04
  %or.cond.i.i.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.2.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !597
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i: ; preds = %bb.a
  %.sroa.6.0.extract.shift = lshr i64 %.val, 16
  %.sroa.6.0.extract.trunc = trunc i64 %.sroa.6.0.extract.shift to i16
  %i.m = uitofp i16 %.sroa.6.0.extract.trunc to float
  %i.n = fdiv float %i.m, %i.a
  %i.o = fadd float %i.n, -5.000000e-01
  %i.p = fmul float %i.b, %i.o
  %i.q = fadd float %i.p, 5.000000e-01
  %i.r = fmul float %i.a, %i.q                    ; 3 uses
  %i.s = fcmp olt float %i.r, 0.000000e+00
  %i.t = fcmp ogt float %i.r, %i.a
  %..i.i.1.i = select i1 %i.t, float %i.a, float %i.r
  %.sroa.0.0.i.i.1.i = select i1 %i.s, float 0.000000e+00, float %..i.i.1.i ; 3 uses
  %i.u = fcmp ogt float %.sroa.0.0.i.i.1.i, -1.000000e+00
  %i.v = fcmp olt float %.sroa.0.0.i.i.1.i, 6.553600e+04
  %or.cond.i.i.i.1.i = and i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i
  %i.w = uitofp i16 %.sroa.8.0.extract.trunc to float
  %i.x = fdiv float %i.w, %i.a
  %i.y = fadd float %i.x, -5.000000e-01
  %i.z = fmul float %i.b, %i.y
  %i.aa = fadd float %i.z, 5.000000e-01
  %i.ab = fmul float %i.a, %i.aa                  ; 3 uses
  %i.ac = fcmp olt float %i.ab, 0.000000e+00
  %i.ad = fcmp ogt float %i.ab, %i.a
  %..i.i.2.i = select i1 %i.ad, float %i.a, float %i.ab
  %.sroa.0.0.i.i.2.i = select i1 %i.ac, float 0.000000e+00, float %..i.i.2.i ; 3 uses
  %i.ae = fcmp ogt float %.sroa.0.0.i.i.2.i, -1.000000e+00
  %i.af = fcmp olt float %.sroa.0.0.i.i.2.i, 6.553600e+04
  %or.cond.i.i.i.2.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i.2.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.2.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.2.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i
  %i.ag = uitofp i16 %.sroa.10.0.extract.trunc to float
  %i.ah = fdiv float %i.ag, %i.a
  %i.ai = fadd float %i.ah, -5.000000e-01
  %i.aj = fmul float %i.b, %i.ai
  %i.ak = fadd float %i.aj, 5.000000e-01
  %i.al = fmul float %i.a, %i.ak                  ; 3 uses
  %i.am = fcmp olt float %i.al, 0.000000e+00
  %i.an = fcmp ogt float %i.al, %i.a
  %..i.i.3.i = select i1 %i.an, float %i.a, float %i.al
  %.sroa.0.0.i.i.3.i = select i1 %i.am, float 0.000000e+00, float %..i.i.3.i ; 3 uses
  %i.ao = fcmp ogt float %.sroa.0.0.i.i.3.i, -1.000000e+00
  %i.ap = fcmp olt float %.sroa.0.0.i.i.3.i, 6.553600e+04
  %or.cond.i.i.i.3.i = and i1 %i.ao, %i.ap
  br i1 %or.cond.i.i.i.3.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit, label %bb.b, !prof !13

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel5applyNCINvNtNtB8_8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8contrastINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.2.i
  %i.aq = insertelement <4 x float> poison, float %.sroa.0.0.i.i.i, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %.sroa.0.0.i.i.1.i, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %.sroa.0.0.i.i.2.i, i64 2
  %i.at = insertelement <4 x float> %i.as, float %.sroa.0.0.i.i.3.i, i64 3
  %i.au = fptoui <4 x float> %i.at to <4 x i16>
  %i.av = bitcast <4 x i16> %i.au to i64
  ret i64 %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel4map2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val = load i64, ptr %0, align 2
  store i64 %.val, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 2 dereferenceable(8) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 2 dereferenceable(8) %1, ptr noundef nonnull readonly %i.d), !noalias !605
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !606 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !606 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !606 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !606 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i), "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !603, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !604
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i16, ptr %i.j, align 2, !noalias !605, !noundef !5
  %i.l = load i16, ptr %i.i, align 2, !noalias !605, !noundef !5 ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  %i.n = zext i16 %i.k to i32
  %i.o = sub nsw i32 %i.m, %i.n                   ; 2 uses
  %.sroa.06.0.i.i = call i32 @llvm.abs.i32(i32 %i.o, i1 true)
  %i.p = icmp sgt i32 %.sroa.06.0.i.i, %i.f
  br i1 %i.p, label %bb.b, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.q = add nsw i32 %i.o, %i.m                   ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.g)
  %.sroa.0.0.i.i.i = select i1 %i.r, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  %i.s = trunc nuw i32 %.sroa.0.0.i.i.i to i16
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !605
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i16 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i16 %.sroa.0.0.i6.i, ptr %i.i, align 2, !noalias !605
  %exitcond.not.i = icmp eq i64 %i.h, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.copyload
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMs_NtNtCs53gkmrwjETj_4tiff7decoder5imageNtB7_5Image11from_readerINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEs0_0Csa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.a = tail call noundef dereferenceable_or_null(1) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4225) 1, i64 noundef range(i64 1, 9) 1) #27 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #28
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i8 1, ptr %i.a, align 1
  store i64 1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE3newCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 3 uses
  store i8 0, ptr %i.d, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %bb.a

bb.a:                                             ; preds = %bb.b, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !609
  invoke void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1v_6cursor6CursorRShEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 8, !range !7, !noalias !609, !noundef !5
  switch i8 %i.f, label %bb.e [
    i8 2, label %_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image.exit.thread10
    i8 0, label %bb.b
  ]

_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image.exit.thread10: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !609
  br label %_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image.exit.thread

bb.b:                                             ; preds = %.noexc
  %i.g = load i8, ptr %i.e, align 1, !noalias !609, !noundef !5
  %i.h = load i32, ptr %i.c, align 8, !alias.scope !609, !noundef !5
  %i.i = shl i32 %i.h, 8
  %i.j = zext i8 %i.g to i32
  %i.k = or disjoint i32 %i.i, %i.j
  store i32 %i.k, ptr %i.c, align 8, !alias.scope !609
  %i.l = load i8, ptr %i.d, align 4, !alias.scope !609, !noundef !5
  %i.m = add i8 %i.l, 8                           ; 2 uses
  store i8 %i.m, ptr %i.d, align 4, !alias.scope !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !609
  %i.n = icmp ult i8 %i.m, 16
  br i1 %i.n, label %bb.a, label %_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val6 = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %.val6, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsch97uQowpgv_3fax10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1d_8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB2w_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef range(i64 1, 0) %.val6, i64 noundef 1) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsch97uQowpgv_3fax10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1d_8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB2w_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !609, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !609
  store ptr %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val4 = load i64, ptr %i.u, align 8, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %.val4, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsch97uQowpgv_3fax10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1d_8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB2w_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image.exit7, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val4, i64 noundef 1) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsch97uQowpgv_3fax10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1d_8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB2w_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image.exit7

_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.b, %_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image.exit.thread10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsch97uQowpgv_3fax10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1d_8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB2w_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image.exit7

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsch97uQowpgv_3fax10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1d_8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB2w_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image.exit7: ; preds = %bb.f, %bb.e, %_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCsch97uQowpgv_3fax10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtB1d_8buffered9bufreader9BufReaderINtNtNtB4_2io4util4TakeQINtNtB2w_6cursor6CursorRShEEEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs0_Csch97uQowpgv_3faxINtB5_10ByteReaderINtNtNtCs4wP2HXfJTCR_5alloc2io4util5BytesINtNtNtBK_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB22_6cursor6CursorRShEEEEE4fillCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.c = load i8, ptr %i.b, align 4, !noundef !5
  %i.d = icmp ult i8 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB1v_6cursor6CursorRShEEEENtNtNtNtB1x_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  %i.g = load i8, ptr %i.a, align 8, !range !7, !noundef !5
  switch i8 %i.g, label %bb.c [
    i8 2, label %.loopexit.sink.split
    i8 0, label %bb.d
  ]

.loopexit.sink.split:                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.ph = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ null, %bb.d ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  br label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.e, align 1, !noundef !5
  %i.k = load i32, ptr %i.f, align 8, !noundef !5
  %i.l = shl i32 %i.k, 8
  %i.m = zext i8 %i.j to i32
  %i.n = or disjoint i32 %i.l, %i.m
  store i32 %i.n, ptr %i.f, align 8
  %i.o = load i8, ptr %i.b, align 4, !noundef !5
  %i.p = add i8 %i.o, 8                           ; 2 uses
  store i8 %i.p, ptr %i.b, align 4
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image:bb.a
  %.sroa.478.0.copyload.i.i = load i8, ptr %i.lz, align 1, !noalias !703
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.17346.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.579.0..sroa_idx.i.i, i64 30, i1 false), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !703
  br label %bb.it

bb.is:                                            ; preds = %bb.gh
  %i.aez = load i8, ptr %i.kt, align 1, !range !704, !noalias !689, !noundef !5
  %.not67.i = icmp eq i8 %i.aez, 4
  br i1 %.not67.i, label %bb.jj, label %bb.jk

bb.it:                                            ; preds = %.split166.us.i.i, %.split197.us.i.i, %bb.gm
  %.sroa.14.0.ph.i = phi i8 [ %i.wv, %bb.gm ], [ %.sroa.478.0.copyload.i.i, %.split166.us.i.i ], [ %.sroa.491.0.copyload.i.i, %.split197.us.i.i ]
  %.sroa.10.0.ph.i = phi i8 [ %i.wu, %bb.gm ], [ %.lcssa286.i.i, %.split166.us.i.i ], [ %.lcssa270.i.i, %.split197.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.516.sroa.9.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.17346.i, i64 30, i1 false), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17346.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  %.sroa.5445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5445.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.516.sroa.9.i, i64 30, i1 false), !noalias !677
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.10.0.ph.i, ptr %i.afa, align 8, !alias.scope !676
  %.sroa.4444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.14.0.ph.i, ptr %.sroa.4444.0..sroa_idx.i, align 1, !alias.scope !676
  store i64 -1, ptr %0, align 8, !alias.scope !676
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !689
  br label %bb.ji

bb.iu:                                            ; preds = %.split203.us.us.us.1.i.i
  %.sroa.8340.4.copyload341.i = load i32, ptr %i.m, align 4, !noalias !707
  %.sroa.10.4.copyload343.i = load i8, ptr %.sroa.10.4..sroa_idx342.i, align 4, !noalias !707
  %.sroa.14.4.copyload345.i = load i8, ptr %.sroa.14.4..sroa_idx344.i, align 1, !noalias !707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.17346.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.17346.4..sroa_idx347.i, i64 30, i1 false), !noalias !707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1500) %.sroa.20.i, ptr noundef nonnull align 4 dereferenceable(1500) %.sroa.20.4..sroa_idx348.i, i64 1500, i1 false), !noalias !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.516.sroa.9.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.17346.i, i64 30, i1 false), !noalias !689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1500) %.sroa.7436.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(1500) %.sroa.20.i, i64 1500, i1 false), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17346.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6435.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.516.sroa.9.i, i64 30, i1 false), !noalias !689
  store i32 %.sroa.8340.4.copyload341.i, ptr %i.aw, align 4, !noalias !689
  store i8 %.sroa.10.4.copyload343.i, ptr %.sroa.4433.0..sroa_idx.i, align 4, !noalias !689
  store i8 %.sroa.14.4.copyload345.i, ptr %.sroa.5434.0..sroa_idx.i, align 1, !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516.sroa.9.i)
  br label %bb.iv

bb.iv:                                            ; preds = %bb.kg, %bb.iu
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !689
  %i.afb = load i16, ptr %i.dm, align 4, !alias.scope !710, !noundef !5
  %i.afc = zext i16 %i.afb to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !711
  %i.afd = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !710, !nonnull !5, !noundef !5 ; 2 uses
  %i.afe = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !710, !noundef !5 ; 5 uses
  %i.aff = load ptr, ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !710, !nonnull !5, !noundef !5 ; 18 uses
  %i.afg = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !710, !noundef !5 ; 3 uses
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp818create_border_luma(ptr noalias nofree noundef nonnull sret([357 x i8]) align 1 captures(none) dereferenceable(357) %i.h, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i, i64 noundef range(i64 0, 65535) %.sroa.025.0858.i, i64 noundef %i.afc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afd, i64 noundef %i.afe, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aff, i64 noundef %i.afg)
          to label %.noexc203.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc203.i:                                      ; preds = %bb.iv
  %i.afh = load i8, ptr %i.kt, align 1, !range !704, !alias.scope !709, !noalias !689, !noundef !5
  switch i8 %i.afh, label %default.unreachable [
    i8 0, label %bb.iw
    i8 1, label %bb.ix
    i8 2, label %bb.iy
    i8 3, label %bb.iz
    i8 4, label %bb.ja
  ]

bb.iw:                                            ; preds = %.noexc203.i
  %i.afi = icmp ne i64 %.sroa.027.0857.i, 0
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, i64 noundef 16, i64 noundef 21, i1 noundef zeroext %i.qj, i1 noundef zeroext %i.afi)
          to label %.loopexit.i202.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.ix:                                            ; preds = %.noexc203.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_vpred(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, i64 noundef 16, i64 noundef 1, i64 noundef 1, i64 noundef 21)
          to label %.loopexit.i202.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.iy:                                            ; preds = %.noexc203.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_hpred(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, i64 noundef 16, i64 noundef 1, i64 noundef 1, i64 noundef 21)
          to label %.loopexit.i202.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.iz:                                            ; preds = %.noexc203.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, i64 noundef 16, i64 noundef 1, i64 noundef 1, i64 noundef 21)
          to label %.loopexit.i202.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.ja:                                            ; preds = %.noexc203.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811predict_4x4(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mb, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aw, i64 noundef 384)
          to label %.loopexit78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.loopexit.i202.i:                                 ; preds = %bb.iz, %bb.iy, %bb.ix, %bb.iw
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.aw, i64 noundef 1, i64 noundef 1, i64 noundef 21)
          to label %.noexc209.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc209.i:                                      ; preds = %.loopexit.i202.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mc, i64 noundef 1, i64 noundef 5, i64 noundef 21)
          to label %.noexc210.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc210.i:                                      ; preds = %.noexc209.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.md, i64 noundef 1, i64 noundef 9, i64 noundef 21)
          to label %.noexc211.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc211.i:                                      ; preds = %.noexc210.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.me, i64 noundef 1, i64 noundef 13, i64 noundef 21)
          to label %.noexc212.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc212.i:                                      ; preds = %.noexc211.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mf, i64 noundef 5, i64 noundef 1, i64 noundef 21)
          to label %.noexc213.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc213.i:                                      ; preds = %.noexc212.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mg, i64 noundef 5, i64 noundef 5, i64 noundef 21)
          to label %.noexc214.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc214.i:                                      ; preds = %.noexc213.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mh, i64 noundef 5, i64 noundef 9, i64 noundef 21)
          to label %.noexc215.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc215.i:                                      ; preds = %.noexc214.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mi, i64 noundef 5, i64 noundef 13, i64 noundef 21)
          to label %.noexc216.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc216.i:                                      ; preds = %.noexc215.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mj, i64 noundef 9, i64 noundef 1, i64 noundef 21)
          to label %.noexc217.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc217.i:                                      ; preds = %.noexc216.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mk, i64 noundef 9, i64 noundef 5, i64 noundef 21)
          to label %.noexc218.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc218.i:                                      ; preds = %.noexc217.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.ml, i64 noundef 9, i64 noundef 9, i64 noundef 21)
          to label %.noexc219.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc219.i:                                      ; preds = %.noexc218.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mm, i64 noundef 9, i64 noundef 13, i64 noundef 21)
          to label %.noexc220.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc220.i:                                      ; preds = %.noexc219.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mn, i64 noundef 13, i64 noundef 1, i64 noundef 21)
          to label %.noexc221.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc221.i:                                      ; preds = %.noexc220.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mo, i64 noundef 13, i64 noundef 5, i64 noundef 21)
          to label %.noexc222.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc222.i:                                      ; preds = %.noexc221.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mp, i64 noundef 13, i64 noundef 9, i64 noundef 21)
          to label %.noexc223.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc223.i:                                      ; preds = %.noexc222.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.h, i64 noundef 357, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.mq, i64 noundef 13, i64 noundef 13, i64 noundef 21)
          to label %.loopexit78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.loopexit78.i.i:                                  ; preds = %.noexc223.i, %bb.ja
  %.not.i199.i = icmp eq i64 %i.afg, 0
  br i1 %.not.i199.i, label %.invoke1682.i, label %bb.jb

.invoke1682.i:                                    ; preds = %.loopexit78.i.i, %bb.gn, %bb.gk, %bb.gj, %bb.fd, %bb.fc, %bb.eu, %.noexc138.i, %bb.fn, %.noexc136.i, %bb.fk, %.noexc134.i, %bb.fh, %.noexc131.i, %.preheader.i.i, %bb.hp, %bb.hj, %bb.hi, %bb.hc, %bb.hb, %bb.gv, %bb.gu, %.split.us.us.i.i, %bb.iq, %bb.ik, %bb.ij, %.split203.us.us.us.i.i, %bb.id, %bb.hx, %bb.hw, %bb.hv, %.split189.us.us.us.i.i, %.split222.us.us.i.i, %bb.ir, %.split183.i.i
  %i.afj = phi i64 [ %.sroa.027.0857.i, %bb.hv ], [ %.sroa.027.0857.i, %.split183.i.i ], [ %i.wc, %bb.ir ], [ %.sroa.027.0857.i, %.noexc138.i ], [ %.sroa.027.0857.i, %bb.hp ], [ %.sroa.027.0857.i, %bb.id ], [ %.sroa.027.0857.i, %bb.ij ], [ %.sroa.027.0857.i, %bb.iq ], [ %.sroa.027.0857.i, %bb.hw ], [ %.sroa.027.0857.i, %.split203.us.us.us.i.i ], [ %.sroa.027.0857.i, %bb.ik ], [ %i.abf, %.split222.us.us.i.i ], [ %.sroa.027.0857.i, %.split189.us.us.us.i.i ], [ 9, %bb.hx ], [ %.sroa.027.0857.i, %.split.us.us.i.i ], [ %.sroa.027.0857.i, %bb.gu ], [ %.sroa.027.0857.i, %bb.gv ], [ %.sroa.027.0857.i, %bb.hb ], [ %.sroa.027.0857.i, %bb.hc ], [ %.sroa.027.0857.i, %bb.hi ], [ %.sroa.027.0857.i, %bb.hj ], [ %.sroa.027.0857.i, %.preheader.i.i ], [ %.sroa.027.0857.i, %.noexc131.i ], [ %.sroa.027.0857.i, %bb.fh ], [ %.sroa.027.0857.i, %.noexc134.i ], [ %.sroa.027.0857.i, %bb.fk ], [ %.sroa.027.0857.i, %.noexc136.i ], [ %.sroa.027.0857.i, %bb.fn ], [ %.sroa.027.0857.i, %bb.eu ], [ %.sroa.027.0857.i, %bb.gj ], [ %i.wc, %bb.gk ], [ %.sroa.027.0857.i, %bb.gn ], [ 0, %.loopexit78.i.i ], [ %.sroa.027.0857.i, %bb.fc ], [ %.sroa.027.0857.i, %bb.fd ]
  %i.afk = phi i64 [ %i.abz, %bb.hv ], [ %i.aex, %.split183.i.i ], [ 4, %bb.ir ], [ %i.tt, %bb.fk ], [ %i.aay, %bb.hp ], [ %i.acw, %bb.id ], [ %i.adu, %bb.ij ], [ %i.aeq, %bb.iq ], [ %i.acf, %bb.hw ], [ %i.add, %.split203.us.us.us.i.i ], [ %i.aea, %bb.ik ], [ 9, %.split222.us.us.i.i ], [ %i.abi, %.split189.us.us.us.i.i ], [ 9, %bb.hx ], [ %i.aaj, %bb.hj ], [ %i.aad, %bb.hi ], [ %i.zo, %bb.hc ], [ %i.zi, %bb.hb ], [ %i.yt, %bb.gv ], [ %i.yn, %bb.gu ], [ %i.xx, %.split.us.us.i.i ], [ %i.sy, %.noexc131.i ], [ %i.rx, %.preheader.i.i ], [ %i.to, %.noexc134.i ], [ %i.uj, %bb.fn ], [ %i.ue, %.noexc136.i ], [ %i.td, %bb.fh ], [ %i.uu, %.noexc138.i ], [ %i.rq, %bb.eu ], [ %i.wf, %bb.gj ], [ 4, %bb.gk ], [ %i.ww, %bb.gn ], [ 0, %.loopexit78.i.i ], [ %i.sc, %bb.fc ], [ %i.sh, %bb.fd ]
  %i.afl = phi ptr [ @112, %bb.hv ], [ @113, %.split183.i.i ], [ @114, %bb.ir ], [ @126, %bb.fk ], [ @115, %bb.hp ], [ @112, %bb.id ], [ @112, %bb.ij ], [ @112, %bb.iq ], [ @110, %bb.hw ], [ @110, %.split203.us.us.us.i.i ], [ @110, %bb.ik ], [ @109, %.split222.us.us.i.i ], [ @110, %.split189.us.us.us.i.i ], [ @111, %bb.hx ], [ @113, %bb.hj ], [ @115, %bb.hi ], [ @113, %bb.hc ], [ @115, %bb.hb ], [ @113, %bb.gv ], [ @115, %bb.gu ], [ @113, %.split.us.us.i.i ], [ @128, %.noexc131.i ], [ @126, %.preheader.i.i ], [ @128, %.noexc134.i ], [ @126, %bb.fn ], [ @128, %.noexc136.i ], [ @126, %bb.fh ], [ @128, %.noexc138.i ], [ @123, %bb.eu ], [ @105, %bb.gj ], [ @106, %bb.gk ], [ @107, %bb.gn ], [ @99, %.loopexit78.i.i ], [ @124, %bb.fc ], [ @125, %bb.fd ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.afj, i64 noundef %i.afk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.afl) #26
          to label %.cont1683.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.cont1683.i:                                      ; preds = %.invoke1682.i
  unreachable

bb.jb:                                            ; preds = %.loopexit78.i.i
  %i.afm = load i8, ptr %i.mr, align 1, !noalias !711, !noundef !5
  store i8 %i.afm, ptr %i.aff, align 1, !noalias !712
  %i.afn = add i64 %i.afg, -1                     ; 2 uses
  %i.afo = icmp ugt i64 %i.afn, 15
  br i1 %i.afo, label %bb.jh, label %.invoke.i, !prof !13

bb.jc:                                            ; preds = %bb.jh
  %i.afp = sub nuw i64 %i.afe, %i.ajz             ; 2 uses
  %i.afq = icmp ugt i64 %i.afp, 15
  br i1 %i.afq, label %bb.jd, label %.invoke.i, !prof !13

bb.jd:                                            ; preds = %bb.jc
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.ajz ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.afr, ptr noundef nonnull %i.afs, ptr noundef nonnull readonly %i.ni, ptr noundef nonnull readonly %i.nj)
          to label %.noexc229.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc229.i:                                      ; preds = %bb.jd
  %.sroa.054.0.copyload.i.i = load ptr, ptr %i.g, align 8, !noalias !711 ; 9 uses
  %.sroa.455.0.copyload.i.i = load ptr, ptr %.sroa.455.0..sroa_idx.i200.i, align 8, !noalias !711 ; 9 uses
  %.sroa.557.0.copyload.i.i = load i64, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !noalias !711 ; 7 uses
  %.sroa.758.0.copyload.i.i = load i64, ptr %.sroa.758.0..sroa_idx.i.i, align 8, !noalias !711 ; 5 uses
  %i.aft = icmp ult i64 %.sroa.557.0.copyload.i.i, %.sroa.758.0.copyload.i.i
  br i1 %i.aft, label %iter.check709, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i

iter.check709:                                    ; preds = %.noexc229.i
  %.sroa.455.0.copyload.i.i695 = ptrtoaddr ptr %.sroa.455.0.copyload.i.i to i64
  %.sroa.054.0.copyload.i.i694 = ptrtoaddr ptr %.sroa.054.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.054.0.copyload.i.i), "nonnull"(ptr %.sroa.455.0.copyload.i.i) ]
  %i.afu = sub nuw i64 %.sroa.758.0.copyload.i.i, %.sroa.557.0.copyload.i.i ; 7 uses
  %min.iters.check697 = icmp ult i64 %i.afu, 8
  %i.afv = sub i64 %.sroa.455.0.copyload.i.i695, %.sroa.054.0.copyload.i.i694
  %diff.check696 = icmp ugt i64 %i.afv, -32
  %or.cond723 = select i1 %min.iters.check697, i1 true, i1 %diff.check696
  br i1 %or.cond723, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.main.loop.iter.check698

vector.main.loop.iter.check698:                   ; preds = %iter.check709
  %min.iters.check699 = icmp ult i64 %i.afu, 32
  br i1 %min.iters.check699, label %vec.epilog.ph713, label %vector.ph700

vector.ph700:                                     ; preds = %vector.main.loop.iter.check698
  %i.afw = and i64 %i.afu, 24
  %n.vec701 = and i64 %i.afu, -32                 ; 4 uses
  %i.afx = add i64 %.sroa.557.0.copyload.i.i, %n.vec701
  br label %vector.body702

vector.body702:                                   ; preds = %vector.ph700, %vector.body702
  %index703 = phi i64 [ 0, %vector.ph700 ], [ %index.next706, %vector.body702 ] ; 2 uses
  %i.afy = add nuw i64 %.sroa.557.0.copyload.i.i, %index703 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.i.i, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload.i.i, i64 %i.afy ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %wide.load704 = load <16 x i8>, ptr %i.aga, align 1, !noalias !712
  %wide.load705 = load <16 x i8>, ptr %i.agb, align 1, !noalias !712
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  store <16 x i8> %wide.load704, ptr %i.afz, align 1, !noalias !712
  store <16 x i8> %wide.load705, ptr %i.agc, align 1, !noalias !712
  %index.next706 = add nuw i64 %index703, 32      ; 2 uses
  %i.agd = icmp eq i64 %index.next706, %n.vec701
  br i1 %i.agd, label %middle.block707, label %vector.body702, !llvm.loop !651

middle.block707:                                  ; preds = %vector.body702
  %cmp.n708 = icmp eq i64 %i.afu, %n.vec701
  br i1 %cmp.n708, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i, label %vec.epilog.iter.check710

vec.epilog.iter.check710:                         ; preds = %middle.block707
  %min.epilog.iters.check712 = icmp eq i64 %i.afw, 0
  br i1 %min.epilog.iters.check712, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vec.epilog.ph713, !prof !713

vec.epilog.ph713:                                 ; preds = %vector.main.loop.iter.check698, %vec.epilog.iter.check710
  %vec.epilog.resume.val714 = phi i64 [ %n.vec701, %vec.epilog.iter.check710 ], [ 0, %vector.main.loop.iter.check698 ]
  %n.vec715 = and i64 %i.afu, -8                  ; 3 uses
  %i.age = add i64 %.sroa.557.0.copyload.i.i, %n.vec715
  br label %vec.epilog.vector.body716

vec.epilog.vector.body716:                        ; preds = %vec.epilog.vector.body716, %vec.epilog.ph713
  %index717 = phi i64 [ %vec.epilog.resume.val714, %vec.epilog.ph713 ], [ %index.next719, %vec.epilog.vector.body716 ] ; 2 uses
  %i.agf = add nuw i64 %.sroa.557.0.copyload.i.i, %index717 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.i.i, i64 %i.agf
  %i.agh = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload.i.i, i64 %i.agf
  %wide.load718 = load <8 x i8>, ptr %i.agh, align 1, !noalias !712
  store <8 x i8> %wide.load718, ptr %i.agg, align 1, !noalias !712
  %index.next719 = add nuw i64 %index717, 8       ; 2 uses
  %i.agi = icmp eq i64 %index.next719, %n.vec715
  br i1 %i.agi, label %vec.epilog.middle.block720, label %vec.epilog.vector.body716, !llvm.loop !652

vec.epilog.middle.block720:                       ; preds = %vec.epilog.vector.body716
  %cmp.n721 = icmp eq i64 %i.afu, %n.vec715
  br i1 %cmp.n721, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %iter.check709, %vec.epilog.iter.check710, %vec.epilog.middle.block720
  %.sroa.557.090.i.i.ph = phi i64 [ %.sroa.557.0.copyload.i.i, %iter.check709 ], [ %i.afx, %vec.epilog.iter.check710 ], [ %i.age, %vec.epilog.middle.block720 ] ; 4 uses
  %i.agj = sub i64 %.sroa.758.0.copyload.i.i, %.sroa.557.090.i.i.ph
  %xtraiter = and i64 %i.agj, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.557.090.i.i.prol = phi i64 [ %i.agm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.557.090.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.i.i, i64 %.sroa.557.090.i.i.prol
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload.i.i, i64 %.sroa.557.090.i.i.prol
  %i.agm = add nuw i64 %.sroa.557.090.i.i.prol, 1 ; 2 uses
  %i.agn = load i8, ptr %i.agl, align 1, !noalias !712, !noundef !5
  store i8 %i.agn, ptr %i.agk, align 1, !noalias !712
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !653

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.557.090.i.i.unr = phi i64 [ %.sroa.557.090.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.agm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ago = sub i64 %.sroa.557.090.i.i.ph, %.sroa.758.0.copyload.i.i
  %i.agp = icmp ugt i64 %i.ago, -4
  br i1 %i.agp, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block707, %vec.epilog.middle.block720, %.noexc229.i
  %i.agq = load i64, ptr %i.nk, align 8, !alias.scope !710, !noundef !5 ; 4 uses
  %i.agr = load ptr, ptr %i.nl, align 8, !alias.scope !710, !nonnull !5
  br label %bb.je

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.557.090.i.i = phi i64 [ %i.ahg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.557.090.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.i.i, i64 %.sroa.557.090.i.i
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload.i.i, i64 %.sroa.557.090.i.i
  %i.agu = add nuw i64 %.sroa.557.090.i.i, 1      ; 2 uses
  %i.agv = load i8, ptr %i.agt, align 1, !noalias !712, !noundef !5
  store i8 %i.agv, ptr %i.ags, align 1, !noalias !712
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.i.i, i64 %i.agu
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload.i.i, i64 %i.agu
  %i.agy = add nuw i64 %.sroa.557.090.i.i, 2      ; 2 uses
  %i.agz = load i8, ptr %i.agx, align 1, !noalias !712, !noundef !5
  store i8 %i.agz, ptr %i.agw, align 1, !noalias !712
  %i.aha = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.i.i, i64 %i.agy
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload.i.i, i64 %i.agy
  %i.ahc = add nuw i64 %.sroa.557.090.i.i, 3      ; 2 uses
  %i.ahd = load i8, ptr %i.ahb, align 1, !noalias !712, !noundef !5
  store i8 %i.ahd, ptr %i.aha, align 1, !noalias !712
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.054.0.copyload.i.i, i64 %i.ahc
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sroa.455.0.copyload.i.i, i64 %i.ahc
  %i.ahg = add nuw i64 %.sroa.557.090.i.i, 4      ; 2 uses
  %i.ahh = load i8, ptr %i.ahf, align 1, !noalias !712, !noundef !5
  store i8 %i.ahh, ptr %i.ahe, align 1, !noalias !712
  %exitcond.not.i201.i.3 = icmp eq i64 %i.ahg, %.sroa.758.0.copyload.i.i
  br i1 %exitcond.not.i201.i.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !654

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i, %middle.block677, %vec.epilog.middle.block690, %.noexc232.i
  %exitcond105.not.i.i = icmp eq i64 %i.ahi, 16
  br i1 %exitcond105.not.i.i, label %bb.jm, label %bb.je

bb.je:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i
  %.sroa.021.092.i.i = phi i64 [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.preheader.i.i ], [ %i.ahi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i ] ; 2 uses
  %i.ahi = add nuw nsw i64 %.sroa.021.092.i.i, 1  ; 3 uses
  %i.ahj = add nuw nsw i64 %.sroa.021.092.i.i, %i.qk
  %i.ahk = mul nuw nsw i64 %i.ahj, %i.afc
  %i.ahl = add nuw nsw i64 %i.ahk, %.sroa.027.0857.i
  %i.ahm = shl nuw nsw i64 %i.ahl, 4              ; 4 uses
  %i.ahn = icmp ugt i64 %i.ahm, %i.agq
  br i1 %i.ahn, label %.invoke.i, label %bb.jf, !prof !11

bb.jf:                                            ; preds = %bb.je
  %i.aho = sub nuw i64 %i.agq, %i.ahm             ; 2 uses
  %i.ahp = icmp ugt i64 %i.aho, 15
  br i1 %i.ahp, label %bb.jg, label %.invoke.i, !prof !13

bb.jg:                                            ; preds = %bb.jf
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agr, i64 %i.ahm ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  %i.ahs = mul nuw nsw i64 %i.ahi, 21
  %i.aht = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ahs ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 1
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aht, i64 17
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.ahq, ptr noundef nonnull %i.ahr, ptr noundef nonnull %i.ahu, ptr noundef nonnull %i.ahv)
          to label %.noexc232.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc232.i:                                      ; preds = %bb.jg
  %.sroa.059.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !711 ; 9 uses
  %.sroa.461.0.copyload.i.i = load ptr, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !711 ; 9 uses
  %.sroa.563.0.copyload.i.i = load i64, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !711 ; 7 uses
  %.sroa.764.0.copyload.i.i = load i64, ptr %.sroa.764.0..sroa_idx.i.i, align 8, !noalias !711 ; 5 uses
  %i.ahw = icmp ult i64 %.sroa.563.0.copyload.i.i, %.sroa.764.0.copyload.i.i
  br i1 %i.ahw, label %iter.check679, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i

iter.check679:                                    ; preds = %.noexc232.i
  %.sroa.461.0.copyload.i.i665 = ptrtoaddr ptr %.sroa.461.0.copyload.i.i to i64
  %.sroa.059.0.copyload.i.i664 = ptrtoaddr ptr %.sroa.059.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.059.0.copyload.i.i), "nonnull"(ptr %.sroa.461.0.copyload.i.i) ]
  %i.ahx = sub nuw i64 %.sroa.764.0.copyload.i.i, %.sroa.563.0.copyload.i.i ; 7 uses
  %min.iters.check667 = icmp ult i64 %i.ahx, 8
  %i.ahy = sub i64 %.sroa.461.0.copyload.i.i665, %.sroa.059.0.copyload.i.i664
  %diff.check666 = icmp ugt i64 %i.ahy, -32
  %or.cond724 = select i1 %min.iters.check667, i1 true, i1 %diff.check666
  br i1 %or.cond724, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check679
  %min.iters.check669 = icmp ult i64 %i.ahx, 32
  br i1 %min.iters.check669, label %vec.epilog.ph683, label %vector.ph670

vector.ph670:                                     ; preds = %vector.main.loop.iter.check668
  %i.ahz = and i64 %i.ahx, 24
  %n.vec671 = and i64 %i.ahx, -32                 ; 4 uses
  %i.aia = add i64 %.sroa.563.0.copyload.i.i, %n.vec671
  br label %vector.body672

vector.body672:                                   ; preds = %vector.ph670, %vector.body672
  %index673 = phi i64 [ 0, %vector.ph670 ], [ %index.next676, %vector.body672 ] ; 2 uses
  %i.aib = add nuw i64 %.sroa.563.0.copyload.i.i, %index673 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i.i, i64 %i.aib ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.461.0.copyload.i.i, i64 %i.aib ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.aid, align 1, !noalias !712
  %wide.load675 = load <16 x i8>, ptr %i.aie, align 1, !noalias !712
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aic, i64 16
  store <16 x i8> %wide.load674, ptr %i.aic, align 1, !noalias !712
  store <16 x i8> %wide.load675, ptr %i.aif, align 1, !noalias !712
  %index.next676 = add nuw i64 %index673, 32      ; 2 uses
  %i.aig = icmp eq i64 %index.next676, %n.vec671
  br i1 %i.aig, label %middle.block677, label %vector.body672, !llvm.loop !655

middle.block677:                                  ; preds = %vector.body672
  %cmp.n678 = icmp eq i64 %i.ahx, %n.vec671
  br i1 %cmp.n678, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %vec.epilog.iter.check680

vec.epilog.iter.check680:                         ; preds = %middle.block677
  %min.epilog.iters.check682 = icmp eq i64 %i.ahz, 0
  br i1 %min.epilog.iters.check682, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader, label %vec.epilog.ph683, !prof !713

vec.epilog.ph683:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check680
  %vec.epilog.resume.val684 = phi i64 [ %n.vec671, %vec.epilog.iter.check680 ], [ 0, %vector.main.loop.iter.check668 ]
  %n.vec685 = and i64 %i.ahx, -8                  ; 3 uses
  %i.aih = add i64 %.sroa.563.0.copyload.i.i, %n.vec685
  br label %vec.epilog.vector.body686

vec.epilog.vector.body686:                        ; preds = %vec.epilog.vector.body686, %vec.epilog.ph683
  %index687 = phi i64 [ %vec.epilog.resume.val684, %vec.epilog.ph683 ], [ %index.next689, %vec.epilog.vector.body686 ] ; 2 uses
  %i.aii = add nuw i64 %.sroa.563.0.copyload.i.i, %index687 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i.i, i64 %i.aii
  %i.aik = getelementptr inbounds nuw i8, ptr %.sroa.461.0.copyload.i.i, i64 %i.aii
  %wide.load688 = load <8 x i8>, ptr %i.aik, align 1, !noalias !712
  store <8 x i8> %wide.load688, ptr %i.aij, align 1, !noalias !712
  %index.next689 = add nuw i64 %index687, 8       ; 2 uses
  %i.ail = icmp eq i64 %index.next689, %n.vec685
  br i1 %i.ail, label %vec.epilog.middle.block690, label %vec.epilog.vector.body686, !llvm.loop !656

vec.epilog.middle.block690:                       ; preds = %vec.epilog.vector.body686
  %cmp.n691 = icmp eq i64 %i.ahx, %n.vec685
  br i1 %cmp.n691, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader: ; preds = %iter.check679, %vec.epilog.iter.check680, %vec.epilog.middle.block690
  %.sroa.563.091.i.i.ph = phi i64 [ %.sroa.563.0.copyload.i.i, %iter.check679 ], [ %i.aia, %vec.epilog.iter.check680 ], [ %i.aih, %vec.epilog.middle.block690 ] ; 4 uses
  %i.aim = sub i64 %.sroa.764.0.copyload.i.i, %.sroa.563.091.i.i.ph
  %xtraiter858 = and i64 %i.aim, 3                ; 2 uses
  %lcmp.mod859.not = icmp eq i64 %xtraiter858, 0
  br i1 %lcmp.mod859.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol
  %.sroa.563.091.i.i.prol = phi i64 [ %i.aip, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol ], [ %.sroa.563.091.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader ] ; 3 uses
  %prol.iter860 = phi i64 [ %prol.iter860.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader ]
  %i.ain = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i.i, i64 %.sroa.563.091.i.i.prol
  %i.aio = getelementptr inbounds nuw i8, ptr %.sroa.461.0.copyload.i.i, i64 %.sroa.563.091.i.i.prol
  %i.aip = add nuw i64 %.sroa.563.091.i.i.prol, 1 ; 2 uses
  %i.aiq = load i8, ptr %i.aio, align 1, !noalias !712, !noundef !5
  store i8 %i.aiq, ptr %i.ain, align 1, !noalias !712
  %prol.iter860.next = add i64 %prol.iter860, 1   ; 2 uses
  %prol.iter860.cmp.not = icmp eq i64 %prol.iter860.next, %xtraiter858
  br i1 %prol.iter860.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol, !llvm.loop !657

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader
  %.sroa.563.091.i.i.unr = phi i64 [ %.sroa.563.091.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.preheader ], [ %i.aip, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol ]
  %i.air = sub i64 %.sroa.563.091.i.i.ph, %.sroa.764.0.copyload.i.i
  %i.ais = icmp ugt i64 %i.air, -4
  br i1 %i.ais, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i
  %.sroa.563.091.i.i = phi i64 [ %i.ajh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i ], [ %.sroa.563.091.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i.prol.loopexit ] ; 6 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i.i, i64 %.sroa.563.091.i.i
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.461.0.copyload.i.i, i64 %.sroa.563.091.i.i
  %i.aiv = add nuw i64 %.sroa.563.091.i.i, 1      ; 2 uses
  %i.aiw = load i8, ptr %i.aiu, align 1, !noalias !712, !noundef !5
  store i8 %i.aiw, ptr %i.ait, align 1, !noalias !712
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i.i, i64 %i.aiv
  %i.aiy = getelementptr inbounds nuw i8, ptr %.sroa.461.0.copyload.i.i, i64 %i.aiv
  %i.aiz = add nuw i64 %.sroa.563.091.i.i, 2      ; 2 uses
  %i.aja = load i8, ptr %i.aiy, align 1, !noalias !712, !noundef !5
  store i8 %i.aja, ptr %i.aix, align 1, !noalias !712
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i.i, i64 %i.aiz
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.461.0.copyload.i.i, i64 %i.aiz
  %i.ajd = add nuw i64 %.sroa.563.091.i.i, 3      ; 2 uses
  %i.aje = load i8, ptr %i.ajc, align 1, !noalias !712, !noundef !5
  store i8 %i.aje, ptr %i.ajb, align 1, !noalias !712
  %i.ajf = getelementptr inbounds nuw i8, ptr %.sroa.059.0.copyload.i.i, i64 %i.ajd
  %i.ajg = getelementptr inbounds nuw i8, ptr %.sroa.461.0.copyload.i.i, i64 %i.ajd
  %i.ajh = add nuw i64 %.sroa.563.091.i.i, 4      ; 2 uses
  %i.aji = load i8, ptr %i.ajg, align 1, !noalias !712, !noundef !5
  store i8 %i.aji, ptr %i.ajf, align 1, !noalias !712
  %exitcond104.not.i.i.3 = icmp eq i64 %i.ajh, %.sroa.764.0.copyload.i.i
  br i1 %exitcond104.not.i.i.3, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit53.i.i, !llvm.loop !658

bb.jh:                                            ; preds = %bb.jb
  %.sroa.0.0.ptr86.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 1
  %i.ajj = load i8, ptr %i.ms, align 1, !noalias !711, !noundef !5
  store i8 %i.ajj, ptr %.sroa.0.0.ptr86.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 2
  %i.ajk = load i8, ptr %i.mt, align 1, !noalias !711, !noundef !5
  store i8 %i.ajk, ptr %.sroa.0.0.ptr.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 3
  %i.ajl = load i8, ptr %i.mu, align 1, !noalias !711, !noundef !5
  store i8 %i.ajl, ptr %.sroa.0.0.ptr.1.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 4
  %i.ajm = load i8, ptr %i.mv, align 1, !noalias !711, !noundef !5
  store i8 %i.ajm, ptr %.sroa.0.0.ptr.2.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 5
  %i.ajn = load i8, ptr %i.mw, align 1, !noalias !711, !noundef !5
  store i8 %i.ajn, ptr %.sroa.0.0.ptr.3.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 6
  %i.ajo = load i8, ptr %i.mx, align 1, !noalias !711, !noundef !5
  store i8 %i.ajo, ptr %.sroa.0.0.ptr.4.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 7
  %i.ajp = load i8, ptr %i.my, align 1, !noalias !711, !noundef !5
  store i8 %i.ajp, ptr %.sroa.0.0.ptr.5.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.ajq = load i8, ptr %i.mz, align 1, !noalias !711, !noundef !5
  store i8 %i.ajq, ptr %.sroa.0.0.ptr.6.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 9
  %i.ajr = load i8, ptr %i.na, align 1, !noalias !711, !noundef !5
  store i8 %i.ajr, ptr %.sroa.0.0.ptr.7.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 10
  %i.ajs = load i8, ptr %i.nb, align 1, !noalias !711, !noundef !5
  store i8 %i.ajs, ptr %.sroa.0.0.ptr.8.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 11
  %i.ajt = load i8, ptr %i.nc, align 1, !noalias !711, !noundef !5
  store i8 %i.ajt, ptr %.sroa.0.0.ptr.9.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 12
  %i.aju = load i8, ptr %i.nd, align 1, !noalias !711, !noundef !5
  store i8 %i.aju, ptr %.sroa.0.0.ptr.10.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.11.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 13
  %i.ajv = load i8, ptr %i.ne, align 1, !noalias !711, !noundef !5
  store i8 %i.ajv, ptr %.sroa.0.0.ptr.11.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.12.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 14
  %i.ajw = load i8, ptr %i.nf, align 1, !noalias !711, !noundef !5
  store i8 %i.ajw, ptr %.sroa.0.0.ptr.12.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 15
  %i.ajx = load i8, ptr %i.ng, align 1, !noalias !711, !noundef !5
  store i8 %i.ajx, ptr %.sroa.0.0.ptr.13.i.i, align 1, !noalias !712
  %.sroa.0.0.ptr.14.i.i = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  %i.ajy = load i8, ptr %i.nh, align 1, !noalias !711, !noundef !5
  store i8 %i.ajy, ptr %.sroa.0.0.ptr.14.i.i, align 1, !noalias !712
  %i.ajz = shl nuw nsw i64 %.sroa.027.0857.i, 4   ; 4 uses
  %i.aka = icmp ugt i64 %i.ajz, %i.afe
  br i1 %i.aka, label %.invoke.i, label %bb.jc, !prof !11

bb.ji:                                            ; preds = %bb.it, %.loopexit490.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !689
  br label %bb.kh

bb.jj:                                            ; preds = %bb.jl, %bb.is
  store i8 0, ptr %i.ok, align 1, !alias.scope !677
  %i.akb = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.akc = icmp ult i64 %.sroa.027.0857.i, %i.akb
  br i1 %i.akc, label %bb.jz, label %.invoke1686.i

bb.jk:                                            ; preds = %bb.is
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 2, !alias.scope !677
  %i.akd = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.ake = icmp ult i64 %.sroa.027.0857.i, %i.akd
  br i1 %i.ake, label %bb.jl, label %.invoke1686.i

bb.jl:                                            ; preds = %bb.jk
  %i.akf = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.akg = getelementptr inbounds nuw [30 x i8], ptr %i.akf, i64 %.sroa.027.0857.i
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 20
  store i8 0, ptr %i.akh, align 1, !noalias !676
  br label %bb.jj

bb.jm:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !689
  %.val74.i = load i8, ptr %i.nm, align 1, !noalias !689
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !689
  %i.aki = load i16, ptr %i.dm, align 4, !alias.scope !716, !noundef !5
  %i.akj = zext i16 %i.aki to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !717
  %i.akk = load ptr, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akl = load i64, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  %i.akm = load ptr, ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akn = load i64, ptr %.sroa.516.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp820create_border_chroma(ptr noalias nofree noundef nonnull sret([81 x i8]) align 1 captures(none) dereferenceable(81) %i.e, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i, i64 noundef range(i64 0, 65535) %.sroa.025.0858.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akk, i64 noundef %i.akl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akm, i64 noundef %i.akn)
          to label %.noexc235.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc235.i:                                      ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !717
  %i.ako = load ptr, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akp = load i64, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  %i.akq = load ptr, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !716, !nonnull !5, !noundef !5 ; 2 uses
  %i.akr = load i64, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !716, !noundef !5 ; 2 uses
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp820create_border_chroma(ptr noalias nofree noundef nonnull sret([81 x i8]) align 1 captures(none) dereferenceable(81) %i.d, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i, i64 noundef range(i64 0, 65535) %.sroa.025.0858.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ako, i64 noundef %i.akp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.akq, i64 noundef %i.akr)
          to label %.noexc236.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc236.i:                                      ; preds = %.noexc235.i
  switch i8 %.val74.i, label %default.unreachable.i.i [
    i8 0, label %bb.jn
    i8 1, label %bb.jo
    i8 2, label %bb.jp
    i8 3, label %bb.jq
  ]

default.unreachable.i.i:                          ; preds = %.noexc236.i
  unreachable

bb.jn:                                            ; preds = %.noexc236.i
  %i.aks = icmp ne i64 %.sroa.027.0857.i, 0       ; 2 uses
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 9, i1 noundef zeroext %i.qj, i1 noundef zeroext %i.aks)
          to label %.noexc237.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc237.i:                                      ; preds = %bb.jn
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_dcpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 9, i1 noundef zeroext %i.qj, i1 noundef zeroext %i.aks)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jo:                                            ; preds = %.noexc236.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_vpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc239.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc239.i:                                      ; preds = %bb.jo
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_vpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jp:                                            ; preds = %.noexc236.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_hpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc241.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc241.i:                                      ; preds = %bb.jp
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp813predict_hpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jq:                                            ; preds = %.noexc236.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc243.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc243.i:                                      ; preds = %bb.jq
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp814predict_tmpred(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, i64 noundef 8, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.loopexit.i233.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.loopexit.i233.i:                                 ; preds = %.noexc243.i, %.noexc241.i, %.noexc239.i, %.noexc237.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nn, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc245.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc245.i:                                      ; preds = %.loopexit.i233.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.no, i64 noundef 1, i64 noundef 1, i64 noundef 9)
          to label %.noexc246.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc246.i:                                      ; preds = %.noexc245.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.np, i64 noundef 1, i64 noundef 5, i64 noundef 9)
          to label %.noexc247.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc247.i:                                      ; preds = %.noexc246.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nq, i64 noundef 1, i64 noundef 5, i64 noundef 9)
          to label %.noexc248.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc248.i:                                      ; preds = %.noexc247.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nr, i64 noundef 5, i64 noundef 1, i64 noundef 9)
          to label %.noexc249.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc249.i:                                      ; preds = %.noexc248.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.ns, i64 noundef 5, i64 noundef 1, i64 noundef 9)
          to label %.noexc250.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc250.i:                                      ; preds = %.noexc249.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.e, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nt, i64 noundef 5, i64 noundef 5, i64 noundef 9)
          to label %.noexc251.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc251.i:                                      ; preds = %.noexc250.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nu, i64 noundef 5, i64 noundef 5, i64 noundef 9)
          to label %.noexc252.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc252.i:                                      ; preds = %.noexc251.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull %i.akm, i64 noundef %i.akn, ptr noalias nofree noundef nonnull %i.akk, i64 noundef %i.akl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 81, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i)
          to label %.noexc253.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc253.i:                                      ; preds = %.noexc252.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull %i.akq, i64 noundef %i.akr, ptr noalias nofree noundef nonnull %i.ako, i64 noundef %i.akp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 81, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i)
          to label %.noexc254.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc254.i:                                      ; preds = %.noexc253.i
  %i.akt = load i64, ptr %i.nv, align 8, !alias.scope !716, !noundef !5 ; 4 uses
  %i.aku = load ptr, ptr %i.nw, align 8, !alias.scope !716, !nonnull !5
  %i.akv = load i64, ptr %i.nx, align 8, !alias.scope !716 ; 4 uses
  %i.akw = load ptr, ptr %i.ny, align 8, !alias.scope !716, !nonnull !5
  br label %bb.jr

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %vec.epilog.middle.block, %.noexc261.i
  %exitcond45.not.i.i = icmp eq i64 %i.akx, 8
  br i1 %exitcond45.not.i.i, label %bb.jw, label %bb.jr

bb.jr:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, %.noexc254.i
  %.sroa.09.034.i.i = phi i64 [ 0, %.noexc254.i ], [ %i.akx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i ] ; 2 uses
  %i.akx = add nuw nsw i64 %.sroa.09.034.i.i, 1   ; 3 uses
  %i.aky = add nuw nsw i64 %.sroa.09.034.i.i, %i.ql
  %i.akz = mul nuw nsw i64 %i.aky, %i.akj
  %i.ala = add nuw nsw i64 %i.akz, %.sroa.027.0857.i
  %i.alb = shl nuw nsw i64 %i.ala, 3              ; 8 uses
  %i.alc = mul nuw nsw i64 %i.akx, 9
  %i.ald = add nuw nsw i64 %i.alc, 1              ; 2 uses
  %i.ale = icmp ugt i64 %i.alb, %i.akt
  br i1 %i.ale, label %.invoke.i, label %bb.js, !prof !11

bb.js:                                            ; preds = %bb.jr
  %i.alf = sub nuw i64 %i.akt, %i.alb             ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.aku, i64 %i.alb ; 2 uses
  %i.alh = icmp ugt i64 %i.alf, 7
  br i1 %i.alh, label %bb.jt, label %.invoke.i, !prof !13

bb.jt:                                            ; preds = %bb.js
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  %i.alj = icmp ugt i64 %i.alb, %i.akv
  br i1 %i.alj, label %.invoke.i, label %bb.ju, !prof !11

bb.ju:                                            ; preds = %bb.jt
  %i.alk = sub nuw i64 %i.akv, %i.alb             ; 2 uses
  %i.all = icmp ugt i64 %i.alk, 7
  br i1 %i.all, label %bb.jv, label %.invoke.i, !prof !13

.invoke.i:                                        ; preds = %bb.jh, %bb.jc, %bb.jb, %bb.jf, %bb.je, %bb.ju, %bb.jt, %bb.js, %bb.jr
  %i.alm = phi i64 [ %i.alb, %bb.jt ], [ 0, %bb.jf ], [ 0, %bb.ju ], [ %i.alb, %bb.jr ], [ 0, %bb.js ], [ %i.ahm, %bb.je ], [ 0, %bb.jb ], [ %i.ajz, %bb.jh ], [ 0, %bb.jc ]
  %i.aln = phi i64 [ %i.akv, %bb.jt ], [ 16, %bb.jf ], [ 8, %bb.ju ], [ %i.akt, %bb.jr ], [ 8, %bb.js ], [ %i.agq, %bb.je ], [ 16, %bb.jb ], [ %i.afe, %bb.jh ], [ 16, %bb.jc ]
  %i.alo = phi i64 [ %i.akv, %bb.jt ], [ %i.aho, %bb.jf ], [ %i.alk, %bb.ju ], [ %i.akt, %bb.jr ], [ %i.alf, %bb.js ], [ %i.agq, %bb.je ], [ %i.afn, %bb.jb ], [ %i.afe, %bb.jh ], [ %i.afp, %bb.jc ]
  %i.alp = phi ptr [ @118, %bb.jt ], [ @102, %bb.jf ], [ @117, %bb.ju ], [ @119, %bb.jr ], [ @116, %bb.js ], [ @103, %bb.je ], [ @100, %bb.jb ], [ @104, %bb.jh ], [ @101, %bb.jc ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.alm, i64 noundef %i.aln, i64 noundef %i.alo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alp) #26
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.alq = getelementptr inbounds nuw i8, ptr %i.akw, i64 %i.alb ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !718
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.alg, ptr noundef nonnull %i.ali, ptr noundef nonnull %i.alq, ptr noundef nonnull %i.alr)
          to label %.noexc259.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc259.i:                                      ; preds = %bb.jv
  %i.als = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ald ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !719
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EINtB13_4IterhEEINtB5_7ZipImplBW_B1A_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %i.als, ptr noundef nonnull %i.alt)
          to label %.noexc260.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc260.i:                                      ; preds = %.noexc259.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !718
  %i.alu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ald ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.alu, ptr noundef nonnull %i.alv)
          to label %.noexc261.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.noexc261.i:                                      ; preds = %.noexc260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !719
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !noalias !717 ; 7 uses
  %.sroa.0.0.copyload.i.i645 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.41.0.copyload.i.i644 = ptrtoaddr ptr %.sroa.41.0.copyload.i.i to i64 ; 3 uses
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !717 ; 9 uses
  %.sroa.63.0.copyload.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.63.0.copyload.i.i646 = ptrtoaddr ptr %.sroa.63.0.copyload.i.i to i64 ; 2 uses
  %.sroa.74.0.copyload.i.i = load i64, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.85.0.copyload.i.i = load ptr, ptr %.sroa.85.0..sroa_idx.i.i, align 8, !noalias !717 ; 7 uses
  %.sroa.85.0.copyload.i.i648 = ptrtoaddr ptr %.sroa.85.0.copyload.i.i to i64 ; 2 uses
  %.sroa.96.0.copyload.i.i = load i64, ptr %.sroa.96.0..sroa_idx.i.i, align 8, !noalias !717 ; 8 uses
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !717 ; 5 uses
  %i.alw = icmp ult i64 %.sroa.96.0.copyload.i.i, %.sroa.11.0.copyload.i.i
  br i1 %i.alw, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i

iter.check:                                       ; preds = %.noexc261.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i), "nonnull"(ptr %.sroa.41.0.copyload.i.i), "nonnull"(ptr %.sroa.63.0.copyload.i.i), "nonnull"(ptr %.sroa.85.0.copyload.i.i) ]
  %i.alx = sub nuw i64 %.sroa.11.0.copyload.i.i, %.sroa.96.0.copyload.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.alx, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aly = sub i64 %.sroa.0.0.copyload.i.i645, %.sroa.41.0.copyload.i.i644
  %diff.check = icmp ugt i64 %i.aly, -16
  %i.alz = add i64 %.sroa.52.0.copyload.i.i, %.sroa.0.0.copyload.i.i645
  %i.ama = sub i64 %.sroa.63.0.copyload.i.i646, %i.alz
  %diff.check647 = icmp ugt i64 %i.ama, -16
  %conflict.rdx = or i1 %diff.check, %diff.check647
  %i.amb = add i64 %.sroa.52.0.copyload.i.i, %.sroa.74.0.copyload.i.i
  %i.amc = add i64 %i.amb, %.sroa.0.0.copyload.i.i645
  %i.amd = sub i64 %.sroa.85.0.copyload.i.i648, %i.amc
  %diff.check649 = icmp ugt i64 %i.amd, -16
  %conflict.rdx650 = or i1 %conflict.rdx, %diff.check649
  %i.ame = add i64 %.sroa.52.0.copyload.i.i, %.sroa.41.0.copyload.i.i644
  %i.amf = sub i64 %.sroa.63.0.copyload.i.i646, %i.ame
  %diff.check651 = icmp ugt i64 %i.amf, -16
  %conflict.rdx652 = or i1 %conflict.rdx650, %diff.check651
  %i.amg = add i64 %.sroa.52.0.copyload.i.i, %.sroa.74.0.copyload.i.i
  %i.amh = add i64 %i.amg, %.sroa.41.0.copyload.i.i644
  %i.ami = sub i64 %.sroa.85.0.copyload.i.i648, %i.amh
  %diff.check653 = icmp ugt i64 %i.ami, -16
  %conflict.rdx654 = or i1 %conflict.rdx652, %diff.check653
  br i1 %conflict.rdx654, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check655 = icmp ult i64 %i.alx, 16
  br i1 %min.iters.check655, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.amj = and i64 %i.alx, 12
  %n.vec = and i64 %i.alx, -16                    ; 4 uses
  %i.amk = add i64 %.sroa.96.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aml = add nuw i64 %.sroa.96.0.copyload.i.i, %index ; 2 uses
  %i.amm = add i64 %i.aml, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.amn = add i64 %i.amm, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.amn
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.aml
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.amm
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.amn
  %wide.load = load <16 x i8>, ptr %i.amq, align 1, !noalias !720
  %wide.load656 = load <16 x i8>, ptr %i.amp, align 1, !noalias !720
  store <16 x i8> %wide.load, ptr %i.amo, align 1, !noalias !720
  store <16 x i8> %wide.load656, ptr %i.amr, align 1, !noalias !720
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ams = icmp eq i64 %index.next, %n.vec
  br i1 %i.ams, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.alx, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.amj, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vec.epilog.ph, !prof !721

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec657 = and i64 %i.alx, -4                  ; 3 uses
  %i.amt = add i64 %.sroa.96.0.copyload.i.i, %n.vec657
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index658 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next661, %vec.epilog.vector.body ] ; 2 uses
  %i.amu = add nuw i64 %.sroa.96.0.copyload.i.i, %index658 ; 2 uses
  %i.amv = add i64 %i.amu, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.amw = add i64 %i.amv, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.amw
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.amu
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.amv
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.amw
  %wide.load659 = load <4 x i8>, ptr %i.amz, align 1, !noalias !720
  %wide.load660 = load <4 x i8>, ptr %i.amy, align 1, !noalias !720
  store <4 x i8> %wide.load659, ptr %i.amx, align 1, !noalias !720
  store <4 x i8> %wide.load660, ptr %i.ana, align 1, !noalias !720
  %index.next661 = add nuw i64 %index658, 4       ; 2 uses
  %i.anb = icmp eq i64 %index.next661, %n.vec657
  br i1 %i.anb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !669

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n662 = icmp eq i64 %i.alx, %n.vec657
  br i1 %cmp.n662, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.96.033.i.i.ph = phi i64 [ %.sroa.96.0.copyload.i.i, %iter.check ], [ %.sroa.96.0.copyload.i.i, %vector.memcheck ], [ %i.amk, %vec.epilog.iter.check ], [ %i.amt, %vec.epilog.middle.block ] ; 6 uses
  %i.anc = sub i64 %.sroa.11.0.copyload.i.i, %.sroa.96.033.i.i.ph
  %.neg = add i64 %.sroa.96.033.i.i.ph, 1
  %xtraiter861 = and i64 %i.anc, 1
  %lcmp.mod862.not = icmp eq i64 %xtraiter861, 0
  br i1 %lcmp.mod862.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.and = add i64 %.sroa.96.033.i.i.ph, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.ane = add i64 %i.and, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ane
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %.sroa.96.033.i.i.ph
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.and
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.ane
  %i.anj = add nuw i64 %.sroa.96.033.i.i.ph, 1
  %i.ank = load i8, ptr %i.anh, align 1, !noalias !720, !noundef !5
  %i.anl = load i8, ptr %i.ang, align 1, !noalias !720, !noundef !5
  store i8 %i.ank, ptr %i.anf, align 1, !noalias !720
  store i8 %i.anl, ptr %i.ani, align 1, !noalias !720
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.96.033.i.i.unr = phi i64 [ %.sroa.96.033.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.anj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.anm = icmp eq i64 %.sroa.11.0.copyload.i.i, %.neg
  br i1 %i.anm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.96.033.i.i = phi i64 [ %i.aoc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.96.033.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.ann = add i64 %.sroa.96.033.i.i, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.ano = add i64 %i.ann, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ano
  %i.anq = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %.sroa.96.033.i.i
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.ann
  %i.ans = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.ano
  %i.ant = add nuw i64 %.sroa.96.033.i.i, 1       ; 2 uses
  %i.anu = load i8, ptr %i.anr, align 1, !noalias !720, !noundef !5
  %i.anv = load i8, ptr %i.anq, align 1, !noalias !720, !noundef !5
  store i8 %i.anu, ptr %i.anp, align 1, !noalias !720
  store i8 %i.anv, ptr %i.ans, align 1, !noalias !720
  %i.anw = add i64 %i.ant, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.anx = add i64 %i.anw, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.anx
  %i.anz = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.ant
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.anw
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.anx
  %i.aoc = add nuw i64 %.sroa.96.033.i.i, 2       ; 2 uses
  %i.aod = load i8, ptr %i.aoa, align 1, !noalias !720, !noundef !5
  %i.aoe = load i8, ptr %i.anz, align 1, !noalias !720, !noundef !5
  store i8 %i.aod, ptr %i.any, align 1, !noalias !720
  store i8 %i.aoe, ptr %i.aob, align 1, !noalias !720
  %exitcond.not.i234.i.1 = icmp eq i64 %i.aoc, %.sroa.11.0.copyload.i.i
  br i1 %exitcond.not.i234.i.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !670

bb.jw:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !689
  %i.aof = load i64, ptr %i.nz, align 8, !alias.scope !722, !noundef !5 ; 3 uses
  %i.aog = load i64, ptr %i.bm, align 8, !range !17, !alias.scope !722, !noundef !5
  %i.aoh = icmp eq i64 %i.aof, %i.aog
  br i1 %i.aoh, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm) #30
          to label %bb.jy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %i.aoi = load ptr, ptr %i.oa, align 8, !alias.scope !722, !nonnull !5, !noundef !5
  %i.aoj = getelementptr inbounds nuw [30 x i8], ptr %i.aoi, i64 %i.aof
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.aoj, ptr noundef nonnull align 1 dereferenceable(30) %i.ax, i64 30, i1 false), !noalias !676
  %i.aok = add i64 %i.aof, 1
  store i64 %i.aok, ptr %i.nz, align 8, !alias.scope !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !689
  %exitcond.not.i = icmp eq i64 %i.qq, %i.qi
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ek

.invoke1686.i:                                    ; preds = %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jk, %bb.jj, %.lr.ph864.i
  %i.aol = phi i64 [ %i.qa, %.lr.ph864.i ], [ %.sroa.027.0857.i, %bb.jj ], [ %.sroa.027.0857.i, %bb.jk ], [ %.sroa.027.0857.i, %bb.jz ], [ %.sroa.027.0857.i, %bb.ka ], [ %.sroa.027.0857.i, %bb.kb ], [ %.sroa.027.0857.i, %bb.kc ], [ %.sroa.027.0857.i, %bb.kd ], [ %.sroa.027.0857.i, %bb.ke ], [ %.sroa.027.0857.i, %bb.kf ]
  %i.aom = phi i64 [ %i.qb, %.lr.ph864.i ], [ %i.apq, %bb.ke ], [ %i.apl, %bb.kd ], [ %i.apg, %bb.kc ], [ %i.apb, %bb.kb ], [ %i.aow, %bb.ka ], [ %i.aor, %bb.jz ], [ %i.akd, %bb.jk ], [ %i.akb, %bb.jj ], [ %i.apv, %bb.kf ]
  %i.aon = phi ptr [ @77, %.lr.ph864.i ], [ @80, %bb.ke ], [ @80, %bb.kd ], [ @80, %bb.kc ], [ @80, %bb.kb ], [ @80, %bb.ka ], [ @80, %bb.jz ], [ @79, %bb.jk ], [ @80, %bb.jj ], [ @80, %bb.kf ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aol, i64 noundef %i.aom, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aon) #28
          to label %.cont1687.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !676

.cont1687.i:                                      ; preds = %.invoke1686.i
  unreachable

bb.jz:                                            ; preds = %bb.jj
  %i.aoo = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.aop = getelementptr inbounds nuw [30 x i8], ptr %i.aoo, i64 %.sroa.027.0857.i
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 21
  store i8 0, ptr %i.aoq, align 1, !noalias !676
  store i8 0, ptr %i.ol, align 4, !alias.scope !677
  %i.aor = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.aos = icmp ult i64 %.sroa.027.0857.i, %i.aor
  br i1 %i.aos, label %bb.ka, label %.invoke1686.i

bb.ka:                                            ; preds = %bb.jz
  %i.aot = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.aou = getelementptr inbounds nuw [30 x i8], ptr %i.aot, i64 %.sroa.027.0857.i
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 22
  store i8 0, ptr %i.aov, align 1, !noalias !676
  store i8 0, ptr %i.om, align 1, !alias.scope !677
  %i.aow = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !677, !noundef !5 ; 2 uses
  %i.aox = icmp ult i64 %.sroa.027.0857.i, %i.aow
  br i1 %i.aox, label %bb.kb, label %.invoke1686.i

bb.kb:                                            ; preds = %bb.ka
  %i.aoy = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !677, !nonnull !5, !noundef !5
  %i.aoz = getelementptr inbounds nuw [30 x i8], ptr %i.aoy, i64 %.sroa.027.0857.i
end_hunk_1
