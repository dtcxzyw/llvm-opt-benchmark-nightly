Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1m_s_0EB8_:bb.a
  %.sroa.8.0.extract.trunc = zext nneg i24 %.sroa.8.0.extract.shift to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.a = load i32, ptr %1, align 4, !alias.scope !469, !noalias !471, !noundef !5 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !alias.scope !470, !noalias !472, !noundef !5 ; 3 uses
  %i.c = and i24 %.val, 255
  %i.d = zext nneg i24 %i.c to i32
  %i.e = add i32 %i.a, %i.d                       ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.f, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !473
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.a = load float, ptr %1, align 4, !alias.scope !478, !noalias !480, !noundef !5 ; 12 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !479, !noalias !481, !noundef !5 ; 3 uses
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
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !482
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull dereferenceable(3) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly dereferenceable(3) %1, ptr noundef nonnull readonly %i.d), !noalias !490
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !491 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !491 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !491 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !491 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbhENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !488, !noalias !492, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !489, !noalias !493
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !490, !noundef !5
  %i.l = load i8, ptr %i.i, align 1, !noalias !490, !noundef !5 ; 2 uses
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
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !490
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i8 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i8 %.sroa.0.0.i6.i, ptr %i.i, align 1, !noalias !490
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.a = load i32, ptr %1, align 4, !alias.scope !498, !noalias !500, !noundef !5 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !alias.scope !499, !noalias !501, !noundef !5 ; 3 uses
  %i.c = and i32 %.sroa.0.0.extract.trunc, 65535
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !502
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i: ; preds = %bb.a
  %3 = lshr i32 %.sroa.0.0.extract.trunc, 16
  %i.f = add i32 %i.a, %3                         ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %..i.i.1.i = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.b)
  %.sroa.0.0.i.i.1.i = select i1 %i.g, i32 0, i32 %..i.i.1.i ; 2 uses
  %or.cond.i.i.i.1.i = icmp ult i32 %.sroa.0.0.i.i.1.i, 65536
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i
  %i.h = add i32 %i.a, %.sroa.8.0.extract.trunc   ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.b)
  %.sroa.0.0.i.i.2.i = select i1 %i.i, i32 0, i32 %..i.i.2.i ; 2 uses
  %or.cond.i.i.i.2.i = icmp ult i32 %.sroa.0.0.i.i.2.i, 65536
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1o_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1o_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i
  %.sroa.8.0.insert.ext = zext nneg i32 %.sroa.0.0.i.i.2.i to i48
  %.sroa.8.0.insert.shift = shl nuw i48 %.sroa.8.0.insert.ext, 32
  %i.j = shl nuw i32 %.sroa.0.0.i.i.1.i, 16
  %.sroa.6.0.insert.shift = zext i32 %i.j to i48
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.a = load float, ptr %1, align 4, !alias.scope !507, !noalias !509, !noundef !5 ; 12 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !508, !noalias !510, !noundef !5 ; 3 uses
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
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !511
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 2 dereferenceable(6) %1, ptr noundef nonnull readonly %i.d), !noalias !519
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !520 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !520 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !520 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !520 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB6_3RgbtENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !517, !noalias !521, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !518, !noalias !522
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i16, ptr %i.j, align 2, !noalias !519, !noundef !5
  %i.l = load i16, ptr %i.i, align 2, !noalias !519, !noundef !5 ; 2 uses
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
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !519
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i16 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i16 %.sroa.0.0.i6.i, ptr %i.i, align 2, !noalias !519
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.a = load i32, ptr %1, align 4, !alias.scope !527, !noalias !529, !noundef !5
  %i.b = load i32, ptr %2, align 4, !alias.scope !528, !noalias !530, !noundef !5
  %i.c = zext i8 %.val to i32
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 256
  br i1 %or.cond.i.i.i.i, label %_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1p_s_0EB8_.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !531
  unreachable

_RINvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB6_4LumahENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1p_s_0EB8_.exit: ; preds = %bb.a
  %i.f = trunc nuw i32 %.sroa.0.0.i.i.i to i8
  ret i8 %i.f
}

end_hunk_0
begin_hunk_1_@_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel14map_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0NCB1n_s_0EB8_:bb.a

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1u_hE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !625
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.a = load float, ptr %1, align 4, !alias.scope !630, !noalias !632, !noundef !5 ; 16 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !631, !noalias !633, !noundef !5 ; 4 uses
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
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !634
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull dereferenceable(4) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly dereferenceable(4) %1, ptr noundef nonnull readonly %i.d), !noalias !642
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !643 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !643 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !643 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !643 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbahENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VechEEBy_hE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !640, !noalias !644, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !641, !noalias !645
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !642, !noundef !5
  %i.l = load i8, ptr %i.i, align 1, !noalias !642, !noundef !5 ; 2 uses
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
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !642
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1t_hE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i8 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i8 %.sroa.0.0.i6.i, ptr %i.i, align 1, !noalias !642
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.a = load i32, ptr %1, align 4, !alias.scope !650, !noalias !652, !noundef !5 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !alias.scope !651, !noalias !653, !noundef !5 ; 3 uses
  %i.c = and i32 %.sroa.0.0.extract.trunc, 65535
  %i.d = add i32 %i.a, %i.c                       ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.b)
  %.sroa.0.0.i.i.i = select i1 %i.e, i32 0, i32 %..i.i.i ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %.sroa.0.0.i.i.i, 65536
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #26, !noalias !654
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i: ; preds = %bb.a
  %3 = lshr i32 %.sroa.0.0.extract.trunc, 16
  %i.f = add i32 %i.a, %3                         ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %..i.i.1.i = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.b)
  %.sroa.0.0.i.i.1.i = select i1 %i.g, i32 0, i32 %..i.i.1.i ; 2 uses
  %or.cond.i.i.i.1.i = icmp ult i32 %.sroa.0.0.i.i.1.i, 65536
  br i1 %or.cond.i.i.i.1.i, label %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i, label %bb.b, !prof !13

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.i
  %i.h = and i32 %.sroa.8.0.extract.trunc, 65535
  %i.i = add i32 %i.a, %i.h                       ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  %..i.i.2.i = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.b)
  %.sroa.0.0.i.i.2.i = select i1 %i.j, i32 0, i32 %..i.i.2.i ; 2 uses
  %or.cond.i.i.i.2.i = icmp ult i32 %.sroa.0.0.i.i.2.i, 65536
  br i1 %or.cond.i.i.i.2.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1p_s_0EB8_.exit, label %bb.b, !prof !13

_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel16apply_with_alphaNCINvNtNtB8_8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0NCB1p_s_0EB8_.exit: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops8colorops8brightenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1u_tE0B8_.exit.1.i
  %.sroa.0.0.insert.ext = zext nneg i32 %.sroa.0.0.i.i.i to i64
  %.sroa.10.0.extract.shift = and i64 %.val, -281474976710656
  %.sroa.8.0.insert.ext = zext nneg i32 %.sroa.0.0.i.i.2.i to i64
  %.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.8.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.10.0.extract.shift
  %i.k = shl nuw i32 %.sroa.0.0.i.i.1.i, 16
  %.sroa.6.0.insert.shift = zext i32 %i.k to i64
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.a = load float, ptr %1, align 4, !alias.scope !659, !noalias !661, !noundef !5 ; 16 uses
  %i.b = load float, ptr %2, align 4, !alias.scope !660, !noalias !662, !noundef !5 ; 4 uses
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
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26, !noalias !663
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull align 2 dereferenceable(8) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull readonly align 2 dereferenceable(8) %1, ptr noundef nonnull readonly %i.d), !noalias !671
  %.sroa.07.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !672 ; 2 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !672 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !672 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !672 ; 2 uses
  %i.e = icmp ult i64 %.sroa.59.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB6_4RgbatENtNtB8_6traits5Pixel6apply2NCINvNtNtB8_8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferBy_INtNtCs4wP2HXfJTCR_5alloc3vec3VectEEBy_tE0EB8_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.48.0.copyload.i) ]
  %i.f = load i32, ptr %2, align 4, !alias.scope !669, !noalias !673, !noundef !5
  %i.g = load i32, ptr %3, align 4, !alias.scope !670, !noalias !674
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.59.014.i = phi i64 [ %.sroa.59.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.h, %_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i ] ; 3 uses
  %i.h = add i64 %.sroa.59.014.i, 1               ; 2 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.07.0.copyload.i, i64 %.sroa.59.014.i ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.48.0.copyload.i, i64 %.sroa.59.014.i
  %i.k = load i16, ptr %i.j, align 2, !noalias !671, !noundef !5
  %i.l = load i16, ptr %i.i, align 2, !noalias !671, !noundef !5 ; 2 uses
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
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #26, !noalias !671
  unreachable

_RNCINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9unsharpenINtNtNtB8_6images6buffer11ImageBufferINtNtB8_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1t_tE0B8_.exit.i: ; preds = %bb.b, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i6.i = phi i16 [ %i.l, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuttEINtBZ_4ItertEEINtB5_7ZipImplBW_B1r_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.s, %bb.b ]
  store i16 %.sroa.0.0.i6.i, ptr %i.i, align 2, !noalias !671
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

end_hunk_1
begin_hunk_2_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image:bb.a
  br i1 %i.cq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit63.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i
  %.val47.i = load ptr, ptr %i.bb, align 8, !noalias !744, !nonnull !5, !noundef !5
  %i.cr = shl nuw nsw i64 %.val48.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47.i, i64 noundef range(i64 1, 0) %i.cr, i64 noundef 1) #27, !noalias !744
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit63.i

bb.x:                                             ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !744
  invoke void @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.az)
          to label %bb.ab unwind label %bb.z, !noalias !744

bb.z:                                             ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val46.i = load i64, ptr %i.cu, align 8, !noalias !744, !noundef !5 ; 2 uses
  %i.cv = icmp eq i64 %.val46.i, 0
  br i1 %i.cv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val45.i = load ptr, ptr %i.ba, align 8, !noalias !744, !nonnull !5, !noundef !5
  %i.cw = shl nuw nsw i64 %.val46.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 1) #27, !noalias !744
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i

bb.ab:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i64 48, i1 false), !noalias !744
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false), !noalias !744
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !noalias !744
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false), !noalias !744
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !744
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !noalias !744
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !744
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !744
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !744
  %i.de = tail call noundef dereferenceable_or_null(4224) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4225) 4224, i64 noundef range(i64 1, 9) 1) #27, !noalias !744 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ac, label %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image.exit, !prof !11

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 4224) #28
          to label %.noexc.i unwind label %bb.ad, !noalias !744

.noexc.i:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueANtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderj8_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(384) %i.bh) #24, !noalias !744
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i

bb.ae:                                            ; preds = %.thread.i, %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !744
  unreachable

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj) #24
          to label %bb.ag unwind label %bb.ae, !noalias !744

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val44.i = load i64, ptr %i.di, align 8, !noalias !744, !noundef !5 ; 2 uses
  %i.dj = icmp eq i64 %.val44.i, 0
  br i1 %i.dj, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load ptr, ptr %i.bk, align 8, !noalias !744, !nonnull !5, !noundef !5
  %i.dk = shl nuw nsw i64 %.val44.i, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dk, i64 noundef 1) #27, !noalias !744
  br label %common.resume

.thread.i:                                        ; preds = %bb.d, %bb.b
  %.pn41.pn.ph.i = phi { ptr, i32 } [ %i.bq, %bb.b ], [ %i.br, %bb.d ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp3vp85FrameECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.bl) #24
          to label %common.resume unwind label %bb.ae, !noalias !744

common.resume:                                    ; preds = %.body.i, %bb.ea, %bb.ag, %bb.ah, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %.pn41.i, %bb.ag ], [ %.pn41.pn.ph.i, %.thread.i ], [ %.pn41.i, %bb.ah ], [ %.pn68.i, %.body.i ], [ %.pn64.i, %bb.ea ]
  resume { ptr, i32 } %common.resume.op

_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4224) %i.de, ptr noundef nonnull align 1 dereferenceable(4224) @131, i64 4224, i1 false), !noalias !744
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 344 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !744
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bm, i64 368 ; 23 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i64 48, i1 false), !noalias !743
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 884 ; 12 uses
  store i16 0, ptr %i.dn, align 4, !alias.scope !742, !noalias !743
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 886 ; 5 uses
  store i16 0, ptr %i.do, align 2, !alias.scope !742, !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(896) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !743
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dp, ptr noundef nonnull align 8 dereferenceable(88) %i.bl, i64 88, i1 false), !noalias !743
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bm, i64 888 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bm, i64 889
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bm, i64 280 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, i8 0, i64 64, i1 false), !alias.scope !742, !noalias !743
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bm, i64 890
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 808
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 416 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.du, i8 0, i64 32, i1 false), !alias.scope !742, !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.dv, ptr noundef nonnull align 8 dereferenceable(384) %i.bh, i64 384, i1 false), !noalias !743
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bm, i64 891 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.dq, align 8, !alias.scope !742, !noalias !743
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bm, i64 840 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dx, ptr noundef nonnull align 1 dereferenceable(12) @132, i64 12, i1 false), !noalias !743
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bm, i64 800 ; 3 uses
  store ptr %i.de, ptr %i.dy, align 8, !alias.scope !742, !noalias !743
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bm, i64 892 ; 3 uses
  store i8 0, ptr %i.dz, align 4, !alias.scope !742, !noalias !743
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bm, i64 852 ; 3 uses
  store i8 0, ptr %i.ea, align 4, !alias.scope !742, !noalias !743
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bm, i64 112 ; 6 uses
  store i64 0, ptr %i.eb, align 8, !alias.scope !742, !noalias !743
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 120 ; 40 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 128 ; 41 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 854 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 874 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.ec, i8 0, i64 20, i1 false), !alias.scope !742, !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.8.i, i64 9, i1 false), !noalias !743
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 883 ; 3 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !742, !noalias !743
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bm, i64 136 ; 6 uses
  store i64 0, ptr %i.ed, align 8, !alias.scope !742, !noalias !743
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 144 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 152 ; 2 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 168 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !742, !noalias !743
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 176 ; 4 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !742, !noalias !743
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 200 ; 2 uses
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 216 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !742, !noalias !743
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 224 ; 4 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !742, !noalias !743
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 248 ; 2 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 264 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !742, !noalias !743
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 272 ; 4 uses
  store i64 0, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !742, !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !744
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !748
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.y, i8 0, i64 3, i1 false), !noalias !748
  %i.ee = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.y, i64 noundef 3)
          to label %.noexc.i1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745 ; 2 uses

.noexc.i1:                                        ; preds = %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image.exit
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !748
  %i.ef = ptrtoint ptr %i.ee to i64
  br label %bb.df

bb.aj:                                            ; preds = %.noexc.i1
  %i.eg = invoke noundef i32 @_RNvYNtCsbQ1pTce3Gzu_14byteorder_lite12LittleEndianNtB4_9ByteOrder8read_u24Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 3)
          to label %.noexc75.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745 ; 2 uses

.noexc75.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !748
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bm, i64 100 ; 6 uses
  %i.ei = trunc i32 %i.eg to i8                   ; 3 uses
  %i.ej = and i8 %i.ei, 1                         ; 2 uses
  %i.ek = xor i8 %i.ej, 1
  store i8 %i.ek, ptr %i.eh, align 4, !alias.scope !749, !noalias !750
  %i.el = getelementptr inbounds nuw i8, ptr %i.bm, i64 103
  %2 = lshr i8 %i.ei, 1
  %i.em = and i8 %2, 7
  store i8 %i.em, ptr %i.el, align 1, !alias.scope !749, !noalias !750
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 101
  %3 = lshr i8 %i.ei, 4
  %i.eo = and i8 %3, 1
  store i8 %i.eo, ptr %i.en, align 1, !alias.scope !749, !noalias !750
  %i.ep = lshr i32 %i.eg, 5
  %.not160.not.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not160.not.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.bq, %.noexc75.i
  %i.eq = zext nneg i32 %i.ep to i64              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !751
  %i.er = add nuw nsw i64 %i.eq, 3
  %.sroa.039.0.i.i = lshr i64 %i.er, 2            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !753
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef range(i64 0, 2305843009213693953) %.sroa.039.0.i.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 4)
          to label %.noexc76.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745

.noexc76.i:                                       ; preds = %bb.ak
  %i.es = load i64, ptr %i.x, align 8, !range !12, !noalias !753, !noundef !5
  %i.et = trunc nuw i64 %i.es to i1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !15, !noalias !753, !noundef !5 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.et, label %bb.al, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemAhj4_NtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i, !prof !11

bb.al:                                            ; preds = %.noexc76.i
  %i.ex = load i64, ptr %i.ew, align 8, !noalias !753
  br label %.invoke1666.i

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemAhj4_NtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc76.i
  %i.ey = load ptr, ptr %i.ew, align 8, !noalias !753, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !753
  store i64 %i.ev, ptr %i.ai, align 8, !alias.scope !752, !noalias !751
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ey, ptr %i.ez, align 8, !alias.scope !752, !noalias !751
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.039.0.i.i, ptr %i.fa, align 8, !alias.scope !752, !noalias !751
  %i.fb = invoke { ptr, i64 } @_RNvMs0_NtCsj6eKBz9Db1c_4core5sliceSAhj4_16as_flattened_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.ey, i64 noundef %.sroa.039.0.i.i)
          to label %bb.br unwind label %bb.dc, !noalias !750 ; 2 uses

bb.am:                                            ; preds = %.noexc75.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !751
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.at, i8 0, i64 3, i1 false), !noalias !751
  %i.fc = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.at, i64 noundef 3)
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745 ; 2 uses

.noexc78.i:                                       ; preds = %bb.am
  %.not.i.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc78.i
  %i.fd = ptrtoint ptr %i.fc to i64
  br label %bb.de

bb.ao:                                            ; preds = %.noexc78.i
  %i.fe = load i24, ptr %i.at, align 4, !noalias !751 ; 3 uses
  %.not124.i.i = icmp eq i24 %i.fe, 2752925
  br i1 %.not124.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !754
  store i16 0, ptr %i.w, align 2, !noalias !754
  %i.ff = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.w, i64 noundef 2)
          to label %.noexc79.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745 ; 2 uses

.noexc79.i:                                       ; preds = %bb.ap
  %.not.i138.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i138.i.i, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fg = lshr i24 %i.fe, 8
  %i.fh = trunc nuw i24 %i.fg to i16
  %i.fi = trunc i24 %i.fe to i8
  br label %bb.de

bb.ar:                                            ; preds = %.noexc79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !754
  %i.fj = ptrtoint ptr %i.ff to i64
  br label %bb.de

bb.as:                                            ; preds = %.noexc79.i
  %.val.i.i.i = load i16, ptr %i.w, align 2, !noalias !754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !755
  store i16 0, ptr %i.v, align 2, !noalias !755
  %i.fk = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.v, i64 noundef 2)
          to label %.noexc80.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745 ; 2 uses

.noexc80.i:                                       ; preds = %bb.as
  %.not.i140.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i140.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.noexc80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !755
  %i.fl = ptrtoint ptr %i.fk to i64
  br label %bb.de

bb.au:                                            ; preds = %.noexc80.i
  %.val.i142.i.i = load i16, ptr %i.v, align 2, !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !755
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bm, i64 96 ; 3 uses
  %i.fn = and i16 %.val.i.i.i, 16383              ; 2 uses
  store i16 %i.fn, ptr %i.fm, align 8, !alias.scope !749, !noalias !750
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bm, i64 98
  %i.fp = and i16 %.val.i142.i.i, 16383
  store i16 %i.fp, ptr %i.fo, align 2, !alias.scope !749, !noalias !750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !751
  %i.fq = zext nneg i16 %i.fn to i64
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp820init_top_macroblocks(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, i64 noundef %i.fq)
          to label %.noexc81.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745

.noexc81.i:                                       ; preds = %bb.au
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb)
          to label %bb.aw unwind label %bb.av, !noalias !750

bb.av:                                            ; preds = %.noexc81.i
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !750
  br label %.body.i

bb.aw:                                            ; preds = %.noexc81.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i), !noalias !751
  %i.fs = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !749, !noalias !750, !noundef !5
  %.not125.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not125.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.8.i.i, i8 0, i64 16, i1 false), !noalias !751
  invoke void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %.sroa.9.i.i)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745

bb.ay:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !749, !noalias !750, !nonnull !5, !noundef !5 ; 4 uses
  %i.fu = load <4 x i8>, ptr %i.ft, align 1, !noalias !750
  %.sroa.773.0..sroa.035.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.773.0..sroa.035.0..sroa_idx.i.i, i64 16, i1 false), !noalias !750
  %.sroa.874.0..sroa.035.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.874.0..sroa.035.0..sroa_idx.i.i, i64 9, i1 false), !noalias !750
  %.sroa.975.0..sroa.035.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 29
  %.sroa.975.0.copyload.i.i = load i8, ptr %.sroa.975.0..sroa.035.0..sroa_idx.i.i, align 1, !noalias !750
  br label %.noexc82.i

.noexc82.i:                                       ; preds = %bb.ay, %bb.ax
  %.sroa.10.0.i.i = phi i8 [ %.sroa.975.0.copyload.i.i, %bb.ay ], [ 0, %bb.ax ]
  %i.fv = phi <4 x i8> [ %i.fu, %bb.ay ], [ zeroinitializer, %bb.ax ]
  store <4 x i8> %i.fv, ptr %i.ec, align 2, !alias.scope !749, !noalias !750
  %.sroa.8.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.8.0..sroa_idx24.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.9.i.i, i64 9, i1 false), !noalias !750
  store i8 %.sroa.10.0.i.i, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !749, !noalias !750
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i), !noalias !751
  %i.fw = load <2 x i16>, ptr %i.fm, align 8, !alias.scope !749, !noalias !750 ; 2 uses
  %i.fx = lshr <2 x i16> %i.fw, splat (i16 4)
  %i.fy = and <2 x i16> %i.fw, splat (i16 15)
  %i.fz = icmp ne <2 x i16> %i.fy, zeroinitializer
  %i.ga = zext <2 x i1> %i.fz to <2 x i16>
  %i.gb = add nuw nsw <2 x i16> %i.fx, %i.ga      ; 3 uses
  store <2 x i16> %i.gb, ptr %i.dn, align 4, !alias.scope !749, !noalias !750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !751
  %i.gc = extractelement <2 x i16> %i.gb, i64 0
  %i.gd = zext nneg i16 %i.gc to i64
  %i.ge = extractelement <2 x i16> %i.gb, i64 1
  %i.gf = zext nneg i16 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gd, 8
  %i.gh = mul nuw nsw i64 %i.gg, %i.gf
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ar, i8 noundef 0, i64 noundef %i.gh) #29
          to label %.noexc83.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745

.noexc83.i:                                       ; preds = %.noexc82.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dp)
          to label %bb.ba unwind label %bb.az, !noalias !750

bb.az:                                            ; preds = %.noexc83.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !750
  br label %.body.i

bb.ba:                                            ; preds = %.noexc83.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !751
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !751
  %i.gj = load i16, ptr %i.dn, align 4, !alias.scope !749, !noalias !750, !noundef !5
  %i.gk = zext i16 %i.gj to i64
  %i.gl = load i16, ptr %i.do, align 2, !alias.scope !749, !noalias !750, !noundef !5
  %i.gm = zext i16 %i.gl to i64
  %i.gn = shl nuw nsw i64 %i.gk, 6
  %i.go = mul nuw nsw i64 %i.gn, %i.gm
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aq, i8 noundef 0, i64 noundef %i.go) #29
          to label %.noexc84.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !745

.noexc84.i:                                       ; preds = %bb.ba
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gp)
          to label %bb.bc unwind label %bb.bb, !noalias !750

bb.bb:                                            ; preds = %.noexc84.i
end_hunk_2
