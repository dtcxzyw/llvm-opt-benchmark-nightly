Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_list_stroke_circle:bb.a
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float %i.p, float f0xBB7C6287)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.h, float %i.q, float f0x3BF19642)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.h, float %i.r, float f0x3CEAD9F6)
  %i.t = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float f0x3C540BB7)
  %i.u = tail call float @llvm.fmuladd.f32(float %i.h, float %i.t, float f0xBF01A908)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.h, float %i.u, float f0x3AA47B71)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %i.v, float 9.999600e-01)
  %i.x = insertelement <2 x float> poison, float %2, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, <float 9.999600e-01, float f0x0C780258>
  %i.aa = fneg float %i.o
  %i.ab = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.aa, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.036.i = phi i32 [ 0, %bb.c ], [ %i.ak, %bb.d ]
  %i.af = phi <2 x float> [ %i.z, %bb.c ], [ %i.aj, %bb.d ] ; 3 uses
  %i.ag = fadd <2 x float> %1, %i.af
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ag)
  %i.ah = fmul <2 x float> %i.ae, %i.af
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ac, <2 x float> %i.ai)
  %i.ak = add i32 %.036.i, 1                      ; 2 uses
  %.not33.i = icmp ugt i32 %i.ak, %4
  br i1 %.not33.i, label %nk_draw_list_path_arc_to.exit, label %bb.d, !llvm.loop !12

nk_draw_list_path_arc_to.exit:                    ; preds = %bb.d, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_path_arc_to.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_draw_list_path_arc_to.exit
  %.0.i.i = phi ptr [ %i.ao, %bb.e ], [ null, %nk_draw_list_path_arc_to.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !162
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.aq, i32 %3, i32 noundef 1, float noundef %5, i32 noundef %i.as)
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i = sub i64 %i.ax, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !76
  %i.ba = add i64 %.neg.i.i.i, %i.az
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !76
  %i.bb = load i8, ptr %i.at, align 8, !tbaa !86, !range !88, !noundef !89
  %i.bc = trunc nuw i8 %i.bb to i1
  %spec.select.i.i.i = select i1 %i.bc, i64 %i.ax, i64 0
  store i64 %spec.select.i.i.i, ptr %i.au, align 8, !tbaa !77
  store i8 0, ptr %i.at, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.ap, align 8, !tbaa !162
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.bd, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_curve(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, i32 %5, i32 noundef %6, float noundef %7) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %5, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not40.i = icmp eq i32 %i.d, 0
  br i1 %.not40.i, label %nk_draw_list_path_curve_to.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @llvm.umax.i32(i32 %6, i32 1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151, !nonnull !89, !noundef !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !170
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = add i32 %i.d, -1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.p, align 4, !tbaa !54
  %i.q = uitofp i32 %i.e to float
  %i.r = fdiv nnan float 1.000000e+00, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.042.i = phi i32 [ 1, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.s = uitofp i32 %.042.i to float
  %i.t = fmul float %i.r, %i.s                    ; 7 uses
  %i.u = fsub float 1.000000e+00, %i.t            ; 5 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = fmul float %i.u, %i.v
  %i.x = fmul float %i.u, 3.000000e+00            ; 2 uses
  %i.y = fmul float %i.u, %i.x
  %i.z = fmul float %i.t, %i.y
  %i.aa = fmul float %i.t, %i.x
  %i.ab = fmul float %i.t, %i.aa
  %i.ac = fmul float %i.t, %i.t
  %i.ad = fmul float %i.t, %i.ac
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %2, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %i.ag)
  %i.ak = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %3, <2 x float> %i.aj)
  %i.an = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %4, <2 x float> %i.am)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ap)
  %i.aq = add i32 %.042.i, 1                      ; 2 uses
  %.not41.i = icmp ugt i32 %i.aq, %i.e
  br i1 %.not41.i, label %nk_draw_list_path_curve_to.exit, label %bb.d, !llvm.loop !13

nk_draw_list_path_curve_to.exit:                  ; preds = %bb.d, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_path_curve_to.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_draw_list_path_curve_to.exit
  %.0.i.i = phi ptr [ %i.au, %bb.e ], [ null, %nk_draw_list_path_curve_to.exit ]
  %i.av = load i32, ptr %i.c, align 8, !tbaa !162
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.av, i32 %5, i32 noundef 0, float noundef %7, i32 noundef %i.ax)
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i = sub i64 %i.bc, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 96 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !76
  %i.bf = add i64 %.neg.i.i.i, %i.be
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !76
  %i.bg = load i8, ptr %i.ay, align 8, !tbaa !86, !range !88, !noundef !89
  %i.bh = trunc nuw i8 %i.bg to i1
  %spec.select.i.i.i = select i1 %i.bh, i64 %i.bc, i64 0
  store i64 %spec.select.i.i.i, ptr %i.az, align 8, !tbaa !77
  store i8 0, ptr %i.ay, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.c, align 8, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.bi, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_add_image(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i16>, ptr %i.b, align 8        ; 2 uses
  %5 = icmp ne <2 x i16> %i.c, zeroinitializer    ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %or.cond = select i1 %6, i1 true, i1 %7
  br i1 %or.cond, label %nk_image_is_subimage.exit.thread, label %bb.c

nk_image_is_subimage.exit.thread:                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = uitofp <2 x i16> %i.c to <2 x float>     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <2 x i16>, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.h = uitofp <2 x i16> %i.g to <2 x float>
  %i.i = fdiv <2 x float> %i.h, %i.e
  %i.j = zext <2 x i16> %i.g to <2 x i32>
  %i.k = load <2 x i16>, ptr %i.f, align 8, !tbaa !106
  %i.l = zext <2 x i16> %i.k to <2 x i32>
  %i.m = add nuw nsw <2 x i32> %i.l, %i.j
  %i.n = uitofp nneg <2 x i32> %i.m to <2 x float>
  %i.o = fdiv <2 x float> %i.n, %i.e
  %i.p = fadd <2 x float> %2, %3
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef %0, <2 x float> %2, <2 x float> %i.p, <2 x float> %i.i, <2 x float> %i.o, i32 %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = fadd <2 x float> %2, %3
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef %0, <2 x float> %2, <2 x float> %i.q, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %nk_image_is_subimage.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @nk_image_is_subimage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !173
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !174
  %i.f = icmp ne i16 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_list_push_rect_uv(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, i32 %5) unnamed_addr #20 {
bb.a:
  %i.a = bitcast i32 %5 to <4 x i8>
  %i.b = shufflevector <4 x i8> %i.a, <4 x i8> poison, <2 x i32> <i32 0, i32 1>
  %i.c = uitofp <2 x i8> %i.b to <2 x float>
  %i.d = fmul nnan <2 x float> %i.c, splat (float f0x3B808081) ; 4 uses
  %i.e = bitcast i32 %5 to <4 x i8>
  %i.f = shufflevector <4 x i8> %i.e, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fmul nnan <2 x float> %i.g, splat (float f0x3B808081) ; 4 uses
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %4, <2 x float> %3, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i52 = shufflevector <2 x float> %3, <2 x float> %4, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i54 = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i56 = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !155
  %i.m = getelementptr i8, ptr %0, i64 160        ; 5 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !164
  %i.o = shl i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load i64, ptr %i.p, align 8, !tbaa !165
  %i.r = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.l, i32 noundef 0, i64 noundef %i.o, i64 noundef %i.q) ; 2 uses
  %.not.i = icmp eq ptr %i.r, null                ; 2 uses
  br i1 %.not.i, label %nk_draw_list_alloc_vertices.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.i, align 4, !tbaa !159
  %i.t = add i32 %i.s, 4
  store i32 %i.t, ptr %i.i, align 4, !tbaa !159
  br label %nk_draw_list_alloc_vertices.exit

nk_draw_list_alloc_vertices.exit:                 ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !154
  %i.w = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.v, i32 noundef 0, i64 noundef 12, i64 noundef 2) ; 7 uses
  %.not.i57 = icmp eq ptr %i.w, null
  br i1 %.not.i57, label %nk_draw_list_alloc_elements.exit.thread, label %nk_draw_list_alloc_elements.exit

nk_draw_list_alloc_elements.exit:                 ; preds = %nk_draw_list_alloc_vertices.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151, !nonnull !89, !noundef !89 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !160
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !161
  %i.aj = add i32 %i.ai, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ag, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !158
  %i.ap = add i32 %i.ao, 6
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !158
  %i.aq = load i32, ptr %i.am, align 8, !tbaa !167
  %i.ar = add i32 %i.aq, 6
  store i32 %i.ar, ptr %i.am, align 8, !tbaa !167
  br i1 %.not.i, label %nk_draw_list_alloc_elements.exit.thread, label %bb.c

bb.c:                                             ; preds = %nk_draw_list_alloc_elements.exit
  %i.as = trunc i32 %i.j to i16                   ; 5 uses
  store i16 %i.as, ptr %i.w, align 2, !tbaa !106
  %i.at = add i16 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !106
  %i.av = add i16 %i.as, 2                        ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !106
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  store i16 %i.as, ptr %i.ax, align 2, !tbaa !106
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i16 %i.av, ptr %i.ay, align 2, !tbaa !106
  %i.az = add i16 %i.as, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !106
  %i.bb = getelementptr i8, ptr %0, i64 152       ; 4 uses
  %.val49 = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val50 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.bc = tail call fastcc ptr @nk_draw_vertex(ptr noundef nonnull %i.r, ptr %.val49, i64 %.val50, <2 x float> %1, <2 x float> %3, <2 x float> %i.d, <2 x float> %i.h)
  %.val47 = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val48 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.bd = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.bc, ptr %.val47, i64 %.val48, <2 x float> %.sroa.0.4.vec.insert.i54, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %i.d, <2 x float> %i.h)
  %.val45 = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val46 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.be = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.bd, ptr %.val45, i64 %.val46, <2 x float> %2, <2 x float> %4, <2 x float> %i.d, <2 x float> %i.h)
  %.val = load ptr, ptr %i.bb, align 8, !tbaa !168
  %.val44 = load i64, ptr %i.m, align 8, !tbaa !169
  %i.bf = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.be, ptr %.val, i64 %.val44, <2 x float> %.sroa.0.4.vec.insert.i56, <2 x float> %.sroa.0.4.vec.insert.i52, <2 x float> %i.d, <2 x float> %i.h) ; 0 uses
  br label %nk_draw_list_alloc_elements.exit.thread

nk_draw_list_alloc_elements.exit.thread:          ; preds = %nk_draw_list_alloc_vertices.exit, %nk_draw_list_alloc_elements.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_add_text(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, float noundef %6, i32 %7) local_unnamed_addr #20 {
bb.a:
  %8 = alloca %struct.nk_user_font_glyph, align 8 ; 8 uses
  %.sroa.2.0.extract.shift = lshr i32 %7, 24
  %.sroa.2.0.extract.trunc = trunc nuw i32 %.sroa.2.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %5, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %4, null
  %or.cond3 = and i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.b, label %nk_utf_decode.exit.thread101

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !752  ; 2 uses
  %.sroa.044.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.f = fcmp olt float %i.d, %i.e
  br i1 %i.f, label %bb.c, label %nk_utf_decode.exit.thread101

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !753
  %i.i = fadd float %i.d, %i.h
  %i.j = fcmp olt float %.sroa.044.0.vec.extract, %i.i
  br i1 %i.j, label %bb.d, label %nk_utf_decode.exit.thread101

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !754 ; 2 uses
  %foldExtExtBinop161 = fadd <2 x float> %2, %3
  %i.m = extractelement <2 x float> %foldExtExtBinop161, i64 1
  %i.n = fcmp olt float %i.l, %i.m
  br i1 %i.n, label %bb.e, label %nk_utf_decode.exit.thread101

bb.e:                                             ; preds = %bb.d
  %.sroa.044.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !755
  %i.q = fadd float %i.l, %i.p
  %i.r = fcmp olt float %.sroa.044.4.vec.extract, %i.q
  br i1 %i.r, label %bb.f, label %nk_utf_decode.exit.thread101

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.t)
  %i.u = load i8, ptr %4, align 1, !tbaa !56      ; 7 uses
  %i.v = icmp slt i8 %i.u, -64
  br i1 %i.v, label %nk_utf_decode.exit.thread101, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp slt i8 %i.u, 0
  br i1 %i.w, label %bb.h, label %._crit_edge.thread82.i
end_hunk_0
begin_hunk_1_@nk_convert:bb.a
  %i.qy = sitofp <2 x i16> %i.qx to <2 x float>
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.qy)
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %i.qz = load i16, ptr %i.ao, align 2, !tbaa !123
  %i.ra = zext i16 %i.qz to i64
  %i.rb = icmp samesign ult i64 %indvars.iv.next436, %i.ra
  br i1 %i.rb, label %bb.bc, label %._crit_edge423, !llvm.loop !757

._crit_edge423:                                   ; preds = %bb.bc, %.preheader
  %i.rc = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.rd = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.re = load i16, ptr %i.rd, align 4, !tbaa !122
  %i.rf = uitofp i16 %i.re to float
  %i.rg = load i32, ptr %i.rc, align 8
  %i.rh = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i362 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i362, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge423
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 64
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !69
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge423
  %.0.i.i363 = phi ptr [ %i.rj, %bb.bd ], [ null, %._crit_edge423 ]
  %i.rk = load i32, ptr %i.w, align 8, !tbaa !162
  %i.rl = load i32, ptr %i.y, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %i.k, ptr noundef %.0.i.i363, i32 noundef %i.rk, i32 %i.rg, i32 noundef 1, float noundef %i.rf, i32 noundef %i.rl)
  %i.rm = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i364 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i364, label %nk_draw_list_path_stroke.exit367, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 88 ; 2 uses
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !77
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i365 = sub i64 %i.rq, %i.ro
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rm, i64 96 ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !76
  %i.rt = add i64 %.neg.i.i.i365, %i.rs
  store i64 %i.rt, ptr %i.rr, align 8, !tbaa !76
  %i.ru = load i8, ptr %i.rm, align 8, !tbaa !86, !range !88, !noundef !89
  %i.rv = trunc nuw i8 %i.ru to i1
  %spec.select.i.i.i366 = select i1 %i.rv, i64 %i.rq, i64 0
  store i64 %spec.select.i.i.i366, ptr %i.rn, align 8, !tbaa !77
  store i8 0, ptr %i.rm, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit367

nk_draw_list_path_stroke.exit367:                 ; preds = %bb.be, %bb.bf
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.bg:                                            ; preds = %.lr.ph419, %bb.bg
  %indvars.iv432 = phi i64 [ 0, %.lr.ph419 ], [ %indvars.iv.next433, %bb.bg ] ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv432
  %i.rx = load <2 x i16>, ptr %i.rw, align 2, !tbaa !106
  %i.ry = sitofp <2 x i16> %i.rx to <2 x float>
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.ry)
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %i.rz = load i16, ptr %i.al, align 4, !tbaa !125
  %i.sa = zext i16 %i.rz to i64
  %i.sb = icmp samesign ult i64 %indvars.iv.next433, %i.sa
  br i1 %i.sb, label %bb.bg, label %._crit_edge420, !llvm.loop !758

._crit_edge420:                                   ; preds = %bb.bg, %.preheader415
  %i.sc = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.sd = load i32, ptr %i.sc, align 8
  %i.se = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i370 = icmp eq ptr %i.se, null
  br i1 %.not.i.i370, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge420
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 64
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !69
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %._crit_edge420
  %.0.i.i371 = phi ptr [ %i.sg, %bb.bh ], [ null, %._crit_edge420 ]
  %i.sh = load i32, ptr %i.w, align 8, !tbaa !162
  %i.si = load i32, ptr %i.aa, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %i.k, ptr noundef %.0.i.i371, i32 noundef %i.sh, i32 %i.sd, i32 noundef %i.si)
  %i.sj = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i372 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i372, label %nk_draw_list_path_fill.exit375, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 88 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !77
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i373 = sub i64 %i.sn, %i.sl
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 96 ; 2 uses
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !76
  %i.sq = add i64 %.neg.i.i.i373, %i.sp
  store i64 %i.sq, ptr %i.so, align 8, !tbaa !76
  %i.sr = load i8, ptr %i.sj, align 8, !tbaa !86, !range !88, !noundef !89
  %i.ss = trunc nuw i8 %i.sr to i1
  %spec.select.i.i.i374 = select i1 %i.ss, i64 %i.sn, i64 0
  store i64 %spec.select.i.i.i374, ptr %i.sk, align 8, !tbaa !77
  store i8 0, ptr %i.sj, align 8, !tbaa !86
  br label %nk_draw_list_path_fill.exit375

nk_draw_list_path_fill.exit375:                   ; preds = %bb.bi, %bb.bj
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.bk:                                            ; preds = %.lr.ph, %bb.bk
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bk ] ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.su = load <2 x i16>, ptr %i.st, align 4, !tbaa !106
  %i.sv = sitofp <2 x i16> %i.su to <2 x float>
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.sv)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sw = load i16, ptr %i.ai, align 2, !tbaa !127
  %i.sx = zext i16 %i.sw to i64
  %i.sy = icmp samesign ult i64 %indvars.iv.next, %i.sx
  br i1 %i.sy, label %bb.bk, label %._crit_edge, !llvm.loop !759

._crit_edge:                                      ; preds = %bb.bk, %.preheader416
  %i.sz = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.tb = load i16, ptr %i.ta, align 4, !tbaa !128
  %i.tc = uitofp i16 %i.tb to float
  %i.td = load i32, ptr %i.sz, align 8
  %i.te = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i378 = icmp eq ptr %i.te, null
  br i1 %.not.i.i378, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 64
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !69
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge
  %.0.i.i379 = phi ptr [ %i.tg, %bb.bl ], [ null, %._crit_edge ]
  %i.th = load i32, ptr %i.w, align 8, !tbaa !162
  %i.ti = load i32, ptr %i.y, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %i.k, ptr noundef %.0.i.i379, i32 noundef %i.th, i32 %i.td, i32 noundef 0, float noundef %i.tc, i32 noundef %i.ti)
  %i.tj = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i380 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i380, label %nk_draw_list_path_stroke.exit383, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 88 ; 2 uses
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !77
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i381 = sub i64 %i.tn, %i.tl
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 96 ; 2 uses
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !76
  %i.tq = add i64 %.neg.i.i.i381, %i.tp
  store i64 %i.tq, ptr %i.to, align 8, !tbaa !76
  %i.tr = load i8, ptr %i.tj, align 8, !tbaa !86, !range !88, !noundef !89
  %i.ts = trunc nuw i8 %i.tr to i1
  %spec.select.i.i.i382 = select i1 %i.ts, i64 %i.tn, i64 0
  store i64 %spec.select.i.i.i382, ptr %i.tk, align 8, !tbaa !77
  store i8 0, ptr %i.tj, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit383

nk_draw_list_path_stroke.exit383:                 ; preds = %bb.bm, %bb.bn
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.bo:                                            ; preds = %bb.c
  %i.tt = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !143
  %i.tv = getelementptr inbounds nuw i8, ptr %.0249425, i64 32
  %i.tw = load <2 x i16>, ptr %i.tv, align 8, !tbaa !106
  %i.tx = sitofp <2 x i16> %i.tw to <2 x float>
  %i.ty = getelementptr inbounds nuw i8, ptr %.0249425, i64 36
  %i.tz = load <2 x i16>, ptr %i.ty, align 4, !tbaa !106
  %i.ua = uitofp <2 x i16> %i.tz to <2 x float>
  %i.ub = getelementptr inbounds nuw i8, ptr %.0249425, i64 48
  %i.uc = getelementptr inbounds nuw i8, ptr %.0249425, i64 44
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !144
  %i.ue = getelementptr inbounds nuw i8, ptr %.0249425, i64 40
  %i.uf = load float, ptr %i.ue, align 8, !tbaa !145
  %i.ug = getelementptr inbounds nuw i8, ptr %.0249425, i64 28
  %i.uh = load i32, ptr %i.ug, align 4
  tail call void @nk_draw_list_add_text(ptr noundef nonnull %i.k, ptr noundef %i.tu, <2 x float> %i.tx, <2 x float> %i.ua, ptr noundef nonnull %i.ub, i32 noundef %i.ud, float noundef %i.uf, i32 %i.uh)
  br label %nk_draw_list_stroke_line.exit

bb.bp:                                            ; preds = %bb.c
  %i.ui = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  %i.uj = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.uk = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.ul = load <2 x i16>, ptr %i.uj, align 8, !tbaa !106
  %i.um = sitofp <2 x i16> %i.ul to <2 x float>   ; 4 uses
  %i.un = load <2 x i16>, ptr %i.uk, align 4, !tbaa !106
  %i.uo = uitofp <2 x i16> %i.un to <2 x float>   ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.0249425, i64 48
  %i.uq = load i32, ptr %i.up, align 8            ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ui, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0249425, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0249425, i64 36
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0249425, i64 40
  %i.ur = load <2 x i16>, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %5 = load <2 x i16>, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %i.us = load <2 x i16>, ptr %.sroa.8.0..sroa_idx, align 8
  tail call fastcc void @nk_draw_list_push_image(ptr noundef nonnull %i.k, ptr %.sroa.0.0.copyload)
  %6 = icmp ne <2 x i16> %i.ur, zeroinitializer   ; 2 uses
  %7 = extractelement <2 x i1> %6, i64 0
  %8 = extractelement <2 x i1> %6, i64 1
  %or.cond.i = select i1 %7, i1 true, i1 %8
  br i1 %or.cond.i, label %nk_image_is_subimage.exit.thread.i, label %bb.bq

nk_image_is_subimage.exit.thread.i:               ; preds = %bb.bp
  %i.ut = uitofp <2 x i16> %i.ur to <2 x float>   ; 2 uses
  %i.uu = uitofp <2 x i16> %5 to <2 x float>
  %i.uv = fdiv <2 x float> %i.uu, %i.ut
  %i.uw = zext <2 x i16> %5 to <2 x i32>
  %i.ux = zext <2 x i16> %i.us to <2 x i32>
  %i.uy = add nuw nsw <2 x i32> %i.ux, %i.uw
  %i.uz = uitofp nneg <2 x i32> %i.uy to <2 x float>
  %i.va = fdiv <2 x float> %i.uz, %i.ut
  %i.vb = fadd <2 x float> %i.um, %i.uo
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef nonnull %i.k, <2 x float> %i.um, <2 x float> %i.vb, <2 x float> %i.uv, <2 x float> %i.va, i32 %i.uq)
  br label %nk_draw_list_stroke_line.exit

bb.bq:                                            ; preds = %bb.bp
  %i.vc = fadd <2 x float> %i.um, %i.uo
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef nonnull %i.k, <2 x float> %i.um, <2 x float> %i.vc, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), i32 %i.uq)
  br label %nk_draw_list_stroke_line.exit

bb.br:                                            ; preds = %bb.c
  %i.vd = getelementptr inbounds nuw i8, ptr %.0249425, i64 32
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !137
  %i.vf = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.vg = load i16, ptr %i.vf, align 8, !tbaa !775
  %i.vh = getelementptr inbounds nuw i8, ptr %.0249425, i64 18
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !776
  %i.vj = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.vk = load i16, ptr %i.vj, align 4, !tbaa !777
  %i.vl = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  %i.vm = load i16, ptr %i.vl, align 2, !tbaa !778
  %i.vn = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8
  tail call void %i.ve(ptr noundef nonnull %i.k, i16 noundef signext %i.vg, i16 noundef signext %i.vi, i16 noundef zeroext %i.vk, i16 noundef zeroext %i.vm, ptr %i.vo) #50
  br label %nk_draw_list_stroke_line.exit

nk_draw_list_stroke_line.exit:                    ; preds = %bb.c, %bb.br, %bb.bo, %nk_draw_list_path_stroke.exit383, %nk_draw_list_path_fill.exit375, %nk_draw_list_path_stroke.exit367, %nk_draw_list_path_fill.exit, %nk_draw_list_path_stroke.exit, %bb.af, %bb.ae, %bb.ad, %bb.d, %bb.e, %nk_draw_list_path_stroke.exit.i, %bb.m, %nk_draw_list_path_stroke.exit.i275, %bb.t, %nk_draw_list_path_stroke.exit.i288, %bb.y, %nk_draw_list_path_fill.exit.i, %bb.as, %nk_draw_list_path_stroke.exit.i347, %bb.ax, %nk_draw_list_path_fill.exit.i359, %nk_image_is_subimage.exit.thread.i, %bb.bq
  %i.vp = load i32, ptr %i.ae, align 8, !tbaa !215
  %.not.i = icmp eq i32 %i.vp, 0
  br i1 %.not.i, label %._crit_edge427, label %bb.bs

bb.bs:                                            ; preds = %nk_draw_list_stroke_line.exit
  %i.vq = getelementptr inbounds nuw i8, ptr %.0249425, i64 8
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !103 ; 2 uses
  %i.vs = load i64, ptr %i.af, align 8, !tbaa !216
  %.not14.i = icmp ult i64 %i.vr, %i.vs
  br i1 %.not14.i, label %nk__next.exit, label %._crit_edge427

nk__next.exit:                                    ; preds = %bb.bs
  %i.vt = load ptr, ptr %i.ag, align 8, !tbaa !217 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 %i.vr
  %.not257 = icmp eq ptr %i.vt, null
  br i1 %.not257, label %._crit_edge427, label %bb.c, !llvm.loop !760

._crit_edge427:                                   ; preds = %nk_draw_list_stroke_line.exit, %bb.bs, %nk__next.exit, %nk_draw_list_setup.exit
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !76
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !77
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !70
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !71
  %i.wd = add i64 %i.wa, %i.vy
  %i.we = sub i64 %i.wd, %i.wc
  %i.wf = icmp ugt i64 %i.vw, %i.we
  %i.wg = select i1 %i.wf, i32 2, i32 0
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !76
  %i.wj = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !77
  %i.wl = icmp ugt i64 %i.wi, %i.wk
  %i.wm = select i1 %i.wl, i32 4, i32 0
  %i.wn = or disjoint i32 %i.wg, %i.wm
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !76
  %i.wq = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !77
  %i.ws = icmp ugt i64 %i.wp, %i.wr
  %i.wt = select i1 %i.ws, i32 8, i32 0
  %i.wu = or disjoint i32 %i.wn, %i.wt
  br label %bb.bt

bb.bt:                                            ; preds = %bb.a, %bb.b, %._crit_edge427
  %.0 = phi i32 [ %i.wu, %._crit_edge427 ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @nk__begin(ptr noundef %0) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18576
  %i.b = load i32, ptr %i.a, align 8, !tbaa !215
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %.critedge27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9800 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18456 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !218
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %.033.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !219
  br label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !220  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221  ; 3 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !220
  %.not72.i = icmp eq ptr %i.j, null
  br i1 %.not72.i, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %i.j, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 389
  %i.m = load i8, ptr %i.l, align 1, !tbaa !222
  %.not73.i = icmp eq i8 %i.m, 0
  br i1 %.not73.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.o = load i32, ptr %i.n, align 8, !tbaa !223
  %.not74.i = icmp eq i32 %i.o, 0
  br i1 %.not74.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18392 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9736
  store ptr %i.q, ptr %i.p, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 18416
  store i32 0, ptr %i.r, align 8, !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9824 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 18432
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18440 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18448
  store i64 %i.t, ptr %i.u, align 8, !tbaa !224
  store i64 %i.t, ptr %i.v, align 8, !tbaa !104
  store i64 %i.t, ptr %i.w, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 18400
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) @nk_null_rect, i64 16, i1 false), !tbaa.struct !157
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aa = load <2 x float>, ptr %i.y, align 4, !tbaa !54
  %i.ab = load <2 x float>, ptr %i.z, align 8, !tbaa !54
  %i.ac = fsub <2 x float> %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ae = load <2 x float>, ptr %i.ad, align 8, !tbaa !54
  tail call void @nk_draw_image(ptr noundef nonnull %i.p, <2 x float> %i.ac, <2 x float> %i.ae, ptr noundef nonnull %i.k, i32 -1)
  %.val.i = load i64, ptr %i.s, align 8, !tbaa !216
  store i64 %.val.i, ptr %i.v, align 8, !tbaa !104
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !217
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread.i, %bb.e
  %i.af = phi ptr [ %.pre, %bb.g ], [ %i.d, %bb.f ], [ %i.d, %.thread.i ], [ %i.d, %bb.e ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !225 ; 4 uses
  %.not7589.i = icmp eq ptr %i.ah, null
  br i1 %.not7589.i, label %nk_build.exit, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18580
  br label %bb.i

bb.i:                                             ; preds = %.critedge84.i, %.lr.ph92.i
  %.06591.i = phi ptr [ %i.ah, %.lr.ph92.i ], [ %.1.i, %.critedge84.i ] ; 5 uses
  %.06790.i = phi ptr [ null, %.lr.ph92.i ], [ %.168.i, %.critedge84.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.06591.i, i64 528
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !234 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.06591.i, i64 160
  %i.am = load i64, ptr %i.al, align 8, !tbaa !783 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06591.i, i64 144
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !784
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %.critedge84.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.06591.i, i64 72
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !235
  %i.as = and i32 %i.ar, 8192
  %.not79.i = icmp eq i32 %i.as, 0
  br i1 %.not79.i, label %bb.k, label %.critedge84.i

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %.06591.i, align 8, !tbaa !236 ; 2 uses
  %i.au = load i32, ptr %i.ai, align 4, !tbaa !237
  %.not80.i = icmp eq i32 %i.at, %i.au
  br i1 %.not80.i, label %bb.l, label %.critedge84.i

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.am ; 4 uses
  %.not8187.i = icmp eq ptr %i.ak, null
  br i1 %.not8187.i, label %.lr.ph96.i.preheader, label %.lr.ph.i
end_hunk_1
begin_hunk_2_@stbtt_GetScaledFontVMetrics:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !287
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 18
  %.val.i11 = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.ai = getelementptr i8, ptr %i.ag, i64 19
  %.val3.i = load i8, ptr %i.ai, align 1, !tbaa !56
  %i.aj = zext i8 %.val.i11 to i16
  %i.ak = shl nuw i16 %i.aj, 8
  %i.al = zext i8 %.val3.i to i16
  %i.am = or disjoint i16 %i.ak, %i.al
  %i.an = uitofp i16 %i.am to float
  %i.ao = fdiv float %i.aa, %i.an
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 36
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !282
  %.phi.trans.insert15 = sext i32 %.pre to i64    ; 2 uses
  %.phi.trans.insert16 = getelementptr inbounds i8, ptr %i.ac, i64 %.phi.trans.insert15 ; 4 uses
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert16, i64 4
  %.val19.i.pre = load i8, ptr %.phi.trans.insert17, align 1, !tbaa !56
  %.phi.trans.insert19 = getelementptr i8, ptr %.phi.trans.insert16, i64 5
  %.val20.i.pre = load i8, ptr %.phi.trans.insert19, align 1, !tbaa !56
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert16, i64 6
  %.val17.i.pre = load i8, ptr %.phi.trans.insert21, align 1, !tbaa !56
  %.phi.trans.insert23 = getelementptr i8, ptr %.phi.trans.insert16, i64 7
  %.val18.i.pre = load i8, ptr %.phi.trans.insert23, align 1, !tbaa !56
  %.pre25 = zext i8 %.val19.i.pre to i16
  %.pre27 = shl nuw i16 %.pre25, 8
  %.pre29 = zext i8 %.val20.i.pre to i16
  %.pre31 = or disjoint i16 %.pre27, %.pre29
  %.pre33 = zext i8 %.val17.i.pre to i16
  %.pre35 = shl nuw i16 %.pre33, 8
  %.pre37 = zext i8 %.val18.i.pre to i16
  %.pre39 = or disjoint i16 %.pre35, %.pre37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi40 = phi i16 [ %.pre39, %bb.c ], [ %i.v, %bb.b ]
  %.pre-phi32 = phi i16 [ %.pre31, %bb.c ], [ %i.o, %bb.b ]
  %.pre-phi = phi i64 [ %.phi.trans.insert15, %bb.c ], [ %i.h, %bb.b ]
  %i.ap = phi ptr [ %i.ac, %bb.c ], [ %i.e, %bb.b ]
  %i.aq = phi float [ %i.ao, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %.pre-phi ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val.i12 = load i8, ptr %i.as, align 1, !tbaa !56
  %i.at = getelementptr i8, ptr %i.ar, i64 9
  %.val16.i = load i8, ptr %i.at, align 1, !tbaa !56
  %i.au = zext i8 %.val.i12 to i16
  %i.av = shl nuw i16 %i.au, 8
  %i.aw = zext i8 %.val16.i to i16
  %i.ax = or disjoint i16 %i.av, %i.aw
  %i.ay = sitofp i16 %.pre-phi32 to float
  %i.az = fmul float %i.aq, %i.ay
  store float %i.az, ptr %3, align 4, !tbaa !54
  %i.ba = sitofp i16 %.pre-phi40 to float
  %i.bb = fmul float %i.aq, %i.ba
  store float %i.bb, ptr %4, align 4, !tbaa !54
  %i.bc = sitofp i16 %i.ax to float
  %i.bd = fmul float %i.aq, %i.bc
  store float %i.bd, ptr %5, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbtt_GetPackedQuad(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %6, i32 noundef %7) local_unnamed_addr #18 {
bb.a:
  %i.a = sext i32 %3 to i64
  %i.b = getelementptr inbounds [28 x i8], ptr %0, i64 %i.a ; 9 uses
  %.not = icmp eq i32 %7, 0
  %i.c = load float, ptr %4, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !889 ; 2 uses
  %i.f = fadd float %i.c, %i.e                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %5, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !890 ; 2 uses
  %i.j = fadd float %i.g, %i.i
  %i.k = insertelement <2 x float> poison, float %i.f, i64 0
  %i.l = insertelement <2 x float> %i.k, float %i.j, i64 1
  %i.m = fadd <2 x float> %i.l, splat (float 5.000000e-01)
  %i.n = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.m)
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = sitofp <2 x i32> %i.o to <2 x float>     ; 2 uses
  store <2 x float> %i.p, ptr %6, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !54
  %i.t = fadd <2 x float> %i.s, %i.p              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fsub float %i.u, %i.e
  store float %i.v, ptr %i.r, align 4, !tbaa !892
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fsub float %i.w, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store float %i.f, ptr %6, align 4, !tbaa !893
  %i.y = load float, ptr %5, align 4, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !890
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.ab, ptr %i.ac, align 4, !tbaa !894
  %i.ad = load float, ptr %4, align 4, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !895
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.ag, ptr %i.ah, align 4, !tbaa !892
  %i.ai = load float, ptr %5, align 4, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !321
  %i.al = fadd float %i.ai, %i.ak
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ %i.al, %bb.c ], [ %i.x, %bb.b ]
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %.sink, ptr %i.am, align 4, !tbaa !896
  %i.an = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.ao = insertelement <2 x i32> %i.an, i32 %2, i64 1
  %i.ap = sitofp <2 x i32> %i.ao to <2 x float>
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = fdiv <2 x float> splat (float 1.000000e+00), %i.ap ; 2 uses
  %i.as = load <2 x i16>, ptr %i.b, align 4, !tbaa !106
  %i.at = uitofp <2 x i16> %i.as to <2 x float>
  %i.au = fmul <2 x float> %i.ar, %i.at
  store <2 x float> %i.au, ptr %i.aq, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ax = load <2 x i16>, ptr %i.av, align 4, !tbaa !106
  %i.ay = uitofp <2 x i16> %i.ax to <2 x float>
  %i.az = fmul <2 x float> %i.ar, %i.ay
  store <2 x float> %i.az, ptr %i.aw, align 4, !tbaa !54
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !326
  %i.bc = load float, ptr %4, align 4, !tbaa !54
  %i.bd = fadd float %i.bb, %i.bc
  store float %i.bd, ptr %4, align 4, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbtt_GetGlyphSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = fcmp oeq float %1, 0.000000e+00
  br i1 %i.f, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i32 0, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.g = call i32 @stbtt_GetGlyphBox(ptr noundef readonly %0, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread, label %stbtt_GetGlyphBitmapBoxSubpixel.exit

stbtt_GetGlyphBitmapBoxSubpixel.exit.thread:      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.bp

stbtt_GetGlyphBitmapBoxSubpixel.exit:             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !55
  %i.i = load i32, ptr %i.d, align 4, !tbaa !55
  %i.j = sub nsw i32 0, %i.i
  %i.k = load i32, ptr %i.c, align 4, !tbaa !55
  %i.l = load i32, ptr %i.b, align 4, !tbaa !55
  %i.m = sub nsw i32 0, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %i.n = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %i.h, i64 1
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %1, i64 0 ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.r, <2 x float> zeroinitializer)
  %i.t = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.s)
  %i.u = fptosi <2 x float> %i.t to <2 x i32>     ; 3 uses
  %i.v = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %i.k, i64 1
  %i.x = sitofp <2 x i32> %i.w to <2 x float>
  %i.y = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.r, <2 x float> zeroinitializer)
  %i.z = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 3 uses
  %i.ab = icmp eq <2 x i32> %i.u, %i.aa           ; 2 uses
  %10 = extractelement <2 x i1> %i.ab, i64 0
  %11 = extractelement <2 x i1> %i.ab, i64 1
  %or.cond519 = select i1 %11, i1 true, i1 %10
  br i1 %or.cond519, label %bb.bp, label %bb.c

bb.c:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit
  %i.ac = extractelement <2 x i32> %i.u, i64 1
  %i.ad = sub i32 %i.ac, %3                       ; 5 uses
  %i.ae = extractelement <2 x i32> %i.u, i64 0
  %i.af = sub nsw i32 %i.ae, %3                   ; 5 uses
  %i.ag = extractelement <2 x i32> %i.aa, i64 1
  %i.ah = add nsw i32 %3, %i.ag                   ; 3 uses
  %i.ai = extractelement <2 x i32> %i.aa, i64 0
  %i.aj = add nsw i32 %3, %i.ai                   ; 3 uses
  %i.ak = sub nsw i32 %i.ah, %i.ad                ; 3 uses
  %i.al = sub nsw i32 %i.aj, %i.af                ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.ak, ptr %6, align 4, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not474 = icmp eq ptr %7, null
  br i1 %.not474, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.al, ptr %7, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not475 = icmp eq ptr %8, null
  br i1 %.not475, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ad, ptr %8, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not476 = icmp eq ptr %9, null
  br i1 %.not476, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.af, ptr %9, align 4, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = fneg float %1                           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #50
  %i.an = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %i.e) ; 5 uses
  %i.ao = mul nsw i32 %i.al, %i.ak
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load ptr, ptr %0, align 8, !tbaa !271   ; 2 uses
  %.val490 = load ptr, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val491 = load ptr, ptr %i.ar, align 8, !tbaa !74
  %i.as = call ptr %.val491(ptr %.val490, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.ap) #50, !inline_history !17 ; 2 uses
  %i.at = sext i32 %i.an to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = load ptr, ptr %0, align 8, !tbaa !271   ; 2 uses
  %.val = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val489 = load ptr, ptr %i.aw, align 8, !tbaa !74
  %i.ax = call ptr %.val489(ptr %.val, ptr noundef null, i64 noundef range(i64 -51539607552, 51539607529) %i.au) #50, !inline_history !17 ; 4 uses
  %i.ay = icmp sgt i32 %i.an, 0                   ; 2 uses
  %.pre.pre = load ptr, ptr %i.e, align 8         ; 6 uses
  br i1 %i.ay, label %.lr.ph, label %.preheader525

.lr.ph:                                           ; preds = %bb.k
  %i.az = add nsw i32 %i.an, -1
  %wide.trip.count = zext nneg i32 %i.an to i64
  %i.ba = zext nneg i32 %i.az to i64
  br label %bb.l

.preheader525:                                    ; preds = %bb.p, %bb.k
  %i.bb = icmp slt i32 %i.af, %i.aj
  br i1 %i.bb, label %.preheader.lr.ph, label %._crit_edge535.split

.preheader.lr.ph:                                 ; preds = %.preheader525
  %i.bc = icmp slt i32 %i.ad, %i.ah
  %wide.trip.count.i = zext i32 %i.an to i64      ; 2 uses
  %i.bd = uitofp i8 %4 to float
  br i1 %i.bc, label %.preheader.preheader, label %._crit_edge535.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = sext i32 %i.ad to i64
  %i.bf = sext i32 %i.ah to i64
  %i.bg = insertelement <2 x float> %i.q, float %i.am, i64 1 ; 3 uses
  br label %.preheader

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 4 uses
  %.0441527 = phi i64 [ %i.ba, %.lr.ph ], [ %indvars.iv, %bb.p ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !273
  switch i8 %i.bj, label %bb.p [
    i8 2, label %bb.m
    i8 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bk = load i16, ptr %i.bh, align 2, !tbaa !274
  %i.bl = sitofp i16 %i.bk to float
  %i.bm = fmul float %1, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !275
  %i.bp = sitofp i16 %i.bo to float
  %i.bq = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0441527 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !274
  %i.bs = sitofp i16 %i.br to float
  %i.bt = fmul float %1, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !275
  %i.bw = sitofp i16 %i.bv to float
  %i.bx = fsub float %i.bt, %i.bm                 ; 2 uses
  %i.by = fmul float %1, %i.bp
  %i.bz = fmul float %1, %i.bw
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.ca, %i.ca
  %i.cc = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.cb) ; 2 uses
  %sqrt = call float @llvm.sqrt.f32(float %i.cc)
  %i.cd = fcmp oeq float %i.cc, 0.000000e+00
  %i.ce = fdiv float 1.000000e+00, %sqrt
  %i.cf = select i1 %i.cd, float 0.000000e+00, float %i.ce
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %.0441527 ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !274
  %i.ci = sitofp i16 %i.ch to float
  %i.cj = fmul float %1, %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !275
  %i.cm = sitofp i16 %i.cl to float
  %i.cn = load <4 x i16>, ptr %i.bh, align 2, !tbaa !106
  %i.co = sitofp <4 x i16> %i.cn to <4 x float>   ; 4 uses
  %i.cp = extractelement <4 x float> %i.co, i64 2
  %i.cq = fmul float %1, %i.cp
  %i.cr = extractelement <4 x float> %i.co, i64 3
  %i.cs = fmul float %i.cr, %i.am
  %i.ct = extractelement <4 x float> %i.co, i64 0
  %i.cu = fmul float %1, %i.ct
  %i.cv = extractelement <4 x float> %i.co, i64 1
  %i.cw = fmul float %i.cv, %i.am
  %i.cx = call float @llvm.fmuladd.f32(float %i.cq, float -2.000000e+00, float %i.cu)
  %i.cy = fadd float %i.cj, %i.cx                 ; 2 uses
  %i.cz = call float @llvm.fmuladd.f32(float %i.cs, float -2.000000e+00, float %i.cw)
  %i.da = fmul float %1, %i.cm
  %i.db = fsub float %i.cz, %i.da                 ; 2 uses
  %i.dc = fmul float %i.db, %i.db
  %i.dd = call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.dc) ; 2 uses
  %i.de = fcmp une float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = fdiv float 1.000000e+00, %i.dd
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.o, %bb.m
  %.sink = phi float [ %i.df, %bb.o ], [ 0.000000e+00, %bb.n ], [ %i.cf, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store float %.sink, ptr %i.dg, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader525, label %bb.l, !llvm.loop !897

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge533
  %.0440534 = phi i32 [ %i.vg, %._crit_edge533 ], [ %i.af, %.preheader.preheader ] ; 3 uses
  %i.dh = sitofp i32 %.0440534 to float
  %i.di = fadd float %i.dh, 5.000000e-01          ; 8 uses
  %i.dj = fdiv float %i.di, %i.am                 ; 4 uses
  %i.dk = fpext float %i.dj to double
  %i.dl = fadd float %i.dj, f0xBC23D70A
  %i.dm = fadd float %i.dj, f0x3C23D70A
  %i.dn = sub nsw i32 %.0440534, %i.af
  %i.do = mul nuw nsw i32 %i.dn, %i.ak
  %i.dp = sub i32 %i.do, %i.ad
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.bo
  %indvars.iv542 = phi i64 [ %i.be, %.preheader ], [ %indvars.iv.next543, %bb.bo ] ; 2 uses
  %i.dq = trunc nsw i64 %indvars.iv542 to i32     ; 2 uses
  %i.dr = sitofp i32 %i.dq to float
  %i.ds = fadd float %i.dr, 5.000000e-01          ; 8 uses
  %i.dt = fdiv float %i.ds, %1                    ; 7 uses
  %i.du = call double @fmod(double noundef %i.dk, double noundef 1.000000e+00) #50 ; 2 uses
  %i.dv = fcmp olt double %i.du, f0x3F847AE130000000
  br i1 %i.dv, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = fcmp ogt double %i.du, f0x3FEFAE1490000000
  br i1 %i.dw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %.0150.i = phi float [ %i.dj, %bb.r ], [ %i.dl, %bb.s ], [ %i.dm, %bb.q ] ; 10 uses
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.thread

.lr.ph.i:                                         ; preds = %bb.t
  %i.dx = fmul float %i.dt, 0.000000e+00
end_hunk_2
begin_hunk_3_@nk_chart_add_slot_colored:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_chart_add_slot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.c = load i32, ptr %i.a, align 8              ; 5 uses
  %i.d = load i32, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !415  ; 2 uses
  %.not34.i = icmp eq ptr %i.f, null
  br i1 %.not34.i, label %nk_chart_add_slot_colored.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !416  ; 3 uses
  %.not35.i = icmp eq ptr %i.h, null
  br i1 %.not35.i, label %nk_chart_add_slot_colored.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 248 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !651  ; 3 uses
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %nk_chart_add_slot_colored.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  %i.m = add nsw i32 %i.j, 1
  store i32 %i.m, ptr %i.i, align 8, !tbaa !642
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [44 x i8], ptr %i.l, i64 %i.n ; 8 uses
  store i32 %1, ptr %i.o, align 4, !tbaa !644
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 %2, ptr %i.p, align 4, !tbaa !645
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5988
  %i.s = load float, ptr %i.r, align 4, !tbaa !646 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.c, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %i.c, 16 ; 2 uses
  %i.t = fcmp oeq float %i.s, 1.000000e+00
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.c to i8
  br label %nk_rgb_factor.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = and i32 %i.c, 255
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fmul float %i.s, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.z = uitofp nneg i32 %i.y to float
  %i.aa = fmul float %i.s, %i.z
  %i.ab = fptoui float %i.aa to i8
  %i.ac = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.ad = uitofp nneg i32 %i.ac to float
  %i.ae = fmul float %i.s, %i.ad
  %i.af = fptoui float %i.ae to i8
  br label %nk_rgb_factor.exit.i

nk_rgb_factor.exit.i:                             ; preds = %bb.f, %bb.e
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.e ], [ %i.ab, %bb.f ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.e ], [ %i.x, %bb.f ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.e ], [ %i.af, %bb.f ]
  %.sroa.9.0.extract.shift.i.i = and i32 %i.c, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  store i32 %.sroa.011.0.insert.insert.i.i, ptr %i.q, align 4, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.d, ptr %i.ag, align 4, !tbaa !56
  %i.ah = fcmp olt float %3, %4                   ; 2 uses
  %i.ai = select i1 %i.ah, float %3, float %4     ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store float %i.ai, ptr %i.aj, align 4, !tbaa !647
  %i.ak = select i1 %i.ah, float %4, float %3     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store float %i.ak, ptr %i.al, align 4, !tbaa !648
  %i.am = fsub float %i.ak, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  store float %i.am, ptr %i.an, align 4, !tbaa !649
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5996
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !412, !range !88, !noundef !89
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i8 %i.ap, ptr %i.aq, align 4, !tbaa !650
  br label %nk_chart_add_slot_colored.exit

nk_chart_add_slot_colored.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %nk_rgb_factor.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @nk_chart_push_slot(ptr nofree noundef readonly captures(address_is_null) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_chart_push_column.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp sgt i32 %2, 3
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %nk_chart_push_column.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.h = load i32, ptr %i.g, align 8, !tbaa !651
  %.not26 = icmp slt i32 %2, %i.h
  br i1 %.not26, label %bb.d, label %nk_chart_push_column.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.j = sext i32 %2 to i64
  %i.k = getelementptr inbounds [44 x i8], ptr %i.i, i64 %i.j ; 21 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !644
  switch i32 %i.l, label %nk_chart_push_column.exit [
    i32 0, label %bb.e
    i32 1, label %bb.w
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.n = load i8, ptr %i.m, align 8, !tbaa !475, !range !88, !noundef !89
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !648
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !647 ; 2 uses
  %i.u = fsub float %i.r, %i.t
  %i.v = fsub float %1, %i.t
  %i.w = fdiv float %i.v, %i.u                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1203 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !1204
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.af = load float, ptr %i.ae, align 8, !tbaa !1205 ; 2 uses
  %i.ag = fadd float %i.ad, %i.af
  %i.ah = fneg float %i.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aj = load float, ptr %i.aa, align 4, !tbaa !1206 ; 3 uses
  store float %i.aj, ptr %i.ab, align 4, !tbaa !1207
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.ag) ; 3 uses
  store float %i.ak, ptr %i.ai, align 4, !tbaa !1208
  %i.al = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ak, i64 1
  %i.an = fadd <2 x float> %i.am, splat (float -2.000000e+00) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.05.0.copyload.i = load i32, ptr %i.ao, align 4, !tbaa !56 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !488
  %i.ar = and i32 %i.aq, 4096
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond.not.i = or i1 %i.as, %i.o
  br i1 %or.cond.not.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = fadd float %i.aj, -3.000000e+00         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !391 ; 2 uses
  %i.ax = fcmp ole float %i.at, %i.aw
  %i.ay = fadd float %i.at, 6.000000e+00
  %i.az = fcmp olt float %i.aw, %i.ay
  %or.cond.i = and i1 %i.ax, %i.az
  br i1 %or.cond.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ba = fadd float %i.ak, -3.000000e+00         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bc = load float, ptr %i.bb, align 8, !tbaa !392 ; 2 uses
  %i.bd = fcmp ole float %i.ba, %i.bc
  %i.be = fadd float %i.ba, 6.000000e+00
  %i.bf = fcmp olt float %i.bc, %i.be
  %or.cond131.i = and i1 %i.bd, %i.bf
  br i1 %or.cond131.i, label %nk_input_is_mouse_hovering_rect.exit.i, label %bb.k

nk_input_is_mouse_hovering_rect.exit.i:           ; preds = %bb.h
  %i.bg = load <2 x float>, ptr %i.av, align 4, !tbaa !54 ; 2 uses
  %i.bh = fcmp ole <2 x float> %i.an, %i.bg
  %i.bi = fadd <2 x float> %i.an, splat (float 4.000000e+00)
  %i.bj = fcmp olt <2 x float> %i.bg, %i.bi
  %i.bk = and <2 x i1> %i.bh, %i.bj               ; 2 uses
  %3 = extractelement <2 x i1> %i.bk, i64 0
  %4 = extractelement <2 x i1> %i.bk, i64 1
  %narrow.i = select i1 %3, i1 %4, i1 false
  %.0.i.i = zext i1 %narrow.i to i32              ; 2 uses
  %i.bl = load i8, ptr %i.au, align 4, !tbaa !388, !range !88, !noundef !89
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !383
  %.not128.i = icmp eq i32 %i.bo, 0
  %i.bp = select i1 %.not128.i, i32 0, i32 2
  %i.bq = or disjoint i32 %i.bp, %.0.i.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %nk_input_is_mouse_hovering_rect.exit.i
  %i.br = phi i32 [ %.0.i.i, %nk_input_is_mouse_hovering_rect.exit.i ], [ %i.bq, %bb.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.05.0.copyload6.i = load i32, ptr %i.bs, align 4, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g, %bb.f
  %.0119.i = phi i32 [ %i.br, %bb.j ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.sroa.05.0.i = phi i32 [ %.sroa.05.0.copyload6.i, %bb.j ], [ %.sroa.05.0.copyload.i, %bb.g ], [ %.sroa.05.0.copyload.i, %bb.h ], [ %.sroa.05.0.copyload.i, %bb.f ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !650, !range !88, !noundef !89
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.l, label %nk_chart_push_line.exit

bb.l:                                             ; preds = %bb.k
  tail call void @nk_fill_rect(ptr noundef nonnull %i.p, <2 x float> %i.an, <2 x float> splat (float 4.000000e+00), float noundef 0.000000e+00, i32 %.sroa.05.0.i)
  br label %nk_chart_push_line.exit

bb.m:                                             ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 260
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !1209
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !645
  %i.ca = sitofp i32 %i.bz to float
  %i.cb = fdiv float %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.05.0.copyload7.i = load i32, ptr %i.cc, align 4, !tbaa !56 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !1206
  %i.cf = sitofp i32 %i.y to float
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.ch = load float, ptr %i.cg, align 8, !tbaa !1204
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !1205 ; 2 uses
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = fneg float %i.w
  %i.cm = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cn = insertelement <2 x float> %i.cm, float %i.cl, i64 1
  %i.co = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cj, i64 1
  %i.cq = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.ck, i64 1
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.cp, <2 x float> %i.cr) ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ct, align 4, !tbaa !54
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !99
  %i.cw = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.cv, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i, label %nk_stroke_line.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !99  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !69
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !100
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 39
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = and i64 %i.dg, -8
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  store i32 2, ptr %i.cw, align 8, !tbaa !102
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !77
  %i.dm = add i64 %i.dl, %i.dj                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !103
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !104
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i16 1, ptr %i.dp, align 8, !tbaa !177
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 18
  %i.dr = shufflevector <2 x float> %i.cs, <2 x float> %i.cu, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ds = fptosi <4 x float> %i.dr to <4 x i16>
  store <4 x i16> %i.ds, ptr %i.dq, align 2, !tbaa !106
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cw, i64 26
  store i32 %.sroa.05.0.copyload7.i, ptr %i.dt, align 2, !tbaa !56
  br label %nk_stroke_line.exit.i

nk_stroke_line.exit.i:                            ; preds = %bb.n, %bb.m
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !488
  %i.dw = and i32 %i.dv, 4096
  %.not.i = icmp eq i32 %i.dw, 0
  br i1 %.not.i, label %bb.o, label %nk_input_is_mouse_hovering_rect.exit135.thread.i

bb.o:                                             ; preds = %nk_stroke_line.exit.i
  %i.dx = extractelement <2 x float> %i.cs, i64 1
  %i.dy = fadd float %i.dx, -3.000000e+00         ; 2 uses
  br i1 %i.o, label %nk_input_is_mouse_hovering_rect.exit135.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dz = extractelement <2 x float> %i.cs, i64 0
  %i.ea = fadd float %i.dz, -3.000000e+00         ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !391 ; 2 uses
  %i.ed = fcmp ole float %i.ea, %i.ec
  %i.ee = fadd float %i.ea, 6.000000e+00
  %i.ef = fcmp olt float %i.ec, %i.ee
  %or.cond.i133.i = and i1 %i.ed, %i.ef
  br i1 %or.cond.i133.i, label %bb.q, label %nk_input_is_mouse_hovering_rect.exit135.thread.i

bb.q:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !392 ; 2 uses
  %i.ei = fcmp ole float %i.dy, %i.eh
  %i.ej = fadd float %i.dy, 6.000000e+00
  %i.ek = fcmp olt float %i.eh, %i.ej
  %or.cond138.i = and i1 %i.ei, %i.ek
  br i1 %or.cond138.i, label %bb.r, label %nk_input_is_mouse_hovering_rect.exit135.thread.i

bb.r:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.em = load i8, ptr %i.el, align 4, !tbaa !388, !range !88, !noundef !89
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !383
  %.not126.i = icmp eq i32 %i.ep, 0
  %i.eq = select i1 %.not126.i, i32 1, i32 3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.er = phi i32 [ 1, %bb.r ], [ %i.eq, %bb.s ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.05.0.copyload9.i = load i32, ptr %i.es, align 4, !tbaa !56
  br label %nk_input_is_mouse_hovering_rect.exit135.thread.i

nk_input_is_mouse_hovering_rect.exit135.thread.i: ; preds = %bb.t, %bb.q, %bb.p, %bb.o, %nk_stroke_line.exit.i
  %.1.i = phi i32 [ 0, %nk_stroke_line.exit.i ], [ %i.er, %bb.t ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ]
  %.sroa.05.1.i = phi i32 [ %.sroa.05.0.copyload7.i, %nk_stroke_line.exit.i ], [ %.sroa.05.0.copyload9.i, %bb.t ], [ %.sroa.05.0.copyload7.i, %bb.q ], [ %.sroa.05.0.copyload7.i, %bb.o ], [ %.sroa.05.0.copyload7.i, %bb.p ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !650, !range !88, !noundef !89
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit135.thread.i
  %i.ew = fadd <2 x float> %i.cs, splat (float -2.000000e+00)
  tail call void @nk_fill_rect(ptr noundef nonnull %i.p, <2 x float> %i.ew, <2 x float> splat (float 4.000000e+00), float noundef 0.000000e+00, i32 %.sroa.05.1.i)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %nk_input_is_mouse_hovering_rect.exit135.thread.i
  store <2 x float> %i.cs, ptr %i.ct, align 4, !tbaa !54
  br label %nk_chart_push_line.exit

nk_chart_push_line.exit:                          ; preds = %bb.k, %bb.l, %bb.v
  %.0.i = phi i32 [ %.1.i, %bb.v ], [ %.0119.i, %bb.l ], [ %.0119.i, %bb.k ]
  %storemerge.in.i = load i32, ptr %i.x, align 4, !tbaa !1203
  %storemerge.i = add nsw i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr %i.x, align 4, !tbaa !1203
  br label %nk_chart_push_column.exit

bb.w:                                             ; preds = %bb.d
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ey = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !475, !range !88, !noundef !89
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 3 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !1203 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !645 ; 4 uses
  %.not.i27 = icmp slt i32 %i.fc, %i.fe
  br i1 %.not.i27, label %bb.x, label %nk_chart_push_column.exit

bb.x:                                             ; preds = %bb.w
  %.not112.i = icmp eq i32 %i.fe, 0
  br i1 %.not112.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ff = add nsw i32 %i.fe, -1
  %i.fg = sitofp i32 %i.ff to float
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 260
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !1209
  %i.fj = fsub float %i.fi, %i.fg
  %i.fk = sitofp i32 %i.fe to float
  %i.fl = fdiv float %i.fj, %i.fk
  %.sroa.13.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fl, i64 0
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.13.0.i = phi <2 x float> [ %.sroa.13.8.vec.insert.i, %bb.y ], [ zeroinitializer, %bb.x ] ; 2 uses
end_hunk_3
