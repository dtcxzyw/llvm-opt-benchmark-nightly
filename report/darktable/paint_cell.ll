Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/paint_cell?download=true
inline.NumInlined: 5
inline.NumDeleted: 3
begin_hunk_0_@llvm.lifetime.start.p0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @g_once_init_enter(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define internal fastcc i64 @dtgtk_paint_cell_get_type_once() unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @gtk_cell_renderer_get_type() #8
  %i.b = tail call ptr @g_intern_static_string(ptr noundef nonnull @.str) #7
  %i.c = tail call i64 @g_type_register_static_simple(i64 noundef %i.a, ptr noundef %i.b, i32 noundef 264, ptr noundef nonnull @dtgtk_paint_cell_class_intern_init, i32 noundef 56, ptr noundef nonnull @dtgtk_paint_cell_init, i32 noundef 0) #7
  ret i64 %i.c
}

declare void @g_once_init_leave(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @dtgtk_paint_cell_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i64, ptr @dtgtk_paint_cell_get_type.static_g_define_type_id seq_cst, align 8
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %bb.b, label %dtgtk_paint_cell_get_type.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_once_init_enter(ptr noundef nonnull @dtgtk_paint_cell_get_type.static_g_define_type_id) #7
  %.not4.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i, label %dtgtk_paint_cell_get_type.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i64 @dtgtk_paint_cell_get_type_once()
  tail call void @g_once_init_leave(ptr noundef nonnull @dtgtk_paint_cell_get_type.static_g_define_type_id, i64 noundef %i.c) #7
  br label %dtgtk_paint_cell_get_type.exit

dtgtk_paint_cell_get_type.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load i64, ptr @dtgtk_paint_cell_get_type.static_g_define_type_id, align 8, !tbaa !12
  %i.e = tail call ptr (i64, ptr, ...) @g_object_new(i64 noundef %i.d, ptr noundef null) #7 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %0, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %1, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %2, ptr %i.h, align 8, !tbaa !23
  ret ptr %i.e
}

declare ptr @g_object_new(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @g_type_register_static_simple(i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_cell_renderer_get_type() local_unnamed_addr #4

declare ptr @g_intern_static_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @dtgtk_paint_cell_class_intern_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @g_type_class_peek_parent(ptr noundef %0) #7
  store ptr %i.a, ptr @dtgtk_paint_cell_parent_class, align 8, !tbaa !76
  %i.b = load i32, ptr @GtkDarktablePaintCell_private_offset, align 4, !tbaa !24
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_type_class_adjust_private_offset(ptr noundef %0, ptr noundef nonnull @GtkDarktablePaintCell_private_offset) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_paint_cell_get_preferred_width, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr @_paint_cell_get_preferred_height, ptr %i.d, align 8, !tbaa !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @_paint_cell_render, ptr %i.e, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @dtgtk_paint_cell_init(ptr nofree noundef writeonly captures(none) initializes((32, 44), (48, 56)) %0) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.c, align 8, !tbaa !23
  ret void
}

declare ptr @g_type_class_peek_parent(ptr noundef) local_unnamed_addr #2

declare void @g_type_class_adjust_private_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_paint_cell_get_preferred_width(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1432
  %i.c = load double, ptr %i.b, align 8, !tbaa !75
  %i.d = fmul reassoc nsz arcp contract afn double %i.c, 1.200000e+01
  %i.e = fptosi double %i.d to i32                ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_paint_cell_compute_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @gtk_widget_get_pango_context(ptr noundef nonnull %1) #7 ; 2 uses
  %i.g = tail call ptr @pango_context_get_font_description(ptr noundef %i.f) #7
  %i.h = tail call ptr @pango_context_get_metrics(ptr noundef %i.f, ptr noundef %i.g, ptr noundef null) #7 ; 3 uses
  %i.i = tail call i32 @pango_font_metrics_get_ascent(ptr noundef %i.h) #9
  %i.j = tail call i32 @pango_font_metrics_get_descent(ptr noundef %i.h) #9
  %i.k = add nsw i32 %i.j, %i.i                   ; 2 uses
  tail call void @pango_font_metrics_unref(ptr noundef %i.h) #7
  %i.l = icmp sgt i32 %i.k, 1023
  %i.m = sdiv i32 %i.k, 1024
  %.0.i = select i1 %i.l, i32 %i.m, i32 %i.e
  br label %_paint_cell_compute_size.exit

_paint_cell_compute_size.exit:                    ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_paint_cell_compute_size.exit
  store i32 %.1.i, ptr %2, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_paint_cell_compute_size.exit
  %.not7 = icmp eq ptr %3, null
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.1.i, ptr %3, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_paint_cell_get_preferred_height(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1432
  %i.c = load double, ptr %i.b, align 8, !tbaa !75
  %i.d = fmul reassoc nsz arcp contract afn double %i.c, 1.200000e+01
  %i.e = fptosi double %i.d to i32                ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_paint_cell_compute_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @gtk_widget_get_pango_context(ptr noundef nonnull %1) #7 ; 2 uses
  %i.g = tail call ptr @pango_context_get_font_description(ptr noundef %i.f) #7
  %i.h = tail call ptr @pango_context_get_metrics(ptr noundef %i.f, ptr noundef %i.g, ptr noundef null) #7 ; 3 uses
  %i.i = tail call i32 @pango_font_metrics_get_ascent(ptr noundef %i.h) #9
  %i.j = tail call i32 @pango_font_metrics_get_descent(ptr noundef %i.h) #9
  %i.k = add nsw i32 %i.j, %i.i                   ; 2 uses
  tail call void @pango_font_metrics_unref(ptr noundef %i.h) #7
  %i.l = icmp sgt i32 %i.k, 1023
  %i.m = sdiv i32 %i.k, 1024
  %.0.i = select i1 %i.l, i32 %i.m, i32 %i.e
  br label %_paint_cell_compute_size.exit

_paint_cell_compute_size.exit:                    ; preds = %bb.a, %bb.b
  %.1.i = phi i32 [ %.0.i, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_paint_cell_compute_size.exit
  store i32 %.1.i, ptr %2, align 4, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_paint_cell_compute_size.exit
  %.not7 = icmp eq ptr %3, null
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.1.i, ptr %3, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_paint_cell_render(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 %5) #0 {
bb.a:
  %6 = alloca %struct._GdkRGBA, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.c = tail call ptr @gtk_widget_get_style_context(ptr noundef %2) #7
  %i.d = tail call i32 @gtk_widget_get_state_flags(ptr noundef %2) #7
  call void @gtk_style_context_get_color(ptr noundef %i.c, i32 noundef %i.d, ptr noundef nonnull %6) #7
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !24
  %i.g = sdiv <2 x i32> %i.f, splat (i32 5)       ; 2 uses
  call void @cairo_save(ptr noundef %1) #7
  call void @gdk_cairo_set_source_rgba(ptr noundef %1, ptr noundef nonnull %6) #7
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !21
  %7 = load <2 x i32>, ptr %4, align 4, !tbaa !24
  %8 = add nsw <2 x i32> %7, %i.g                 ; 2 uses
  %9 = shl nsw <2 x i32> %i.g, splat (i32 1)
  %i.i = load <2 x i32>, ptr %i.e, align 4, !tbaa !24
  %i.j = sub nsw <2 x i32> %i.i, %9               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %10 = extractelement <2 x i32> %8, i64 0
  %11 = extractelement <2 x i32> %8, i64 1
  %i.o = extractelement <2 x i32> %i.j, i64 0
  %i.p = extractelement <2 x i32> %i.j, i64 1
  call void %i.h(ptr noundef %1, i32 noundef %10, i32 noundef %11, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.l, ptr noundef %i.n) #7
  call void @cairo_restore(ptr noundef %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @gtk_widget_get_pango_context(ptr noundef) local_unnamed_addr #2

declare ptr @pango_context_get_font_description(ptr noundef) local_unnamed_addr #2

declare ptr @pango_context_get_metrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @pango_font_metrics_get_ascent(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @pango_font_metrics_get_descent(ptr noundef) local_unnamed_addr #6

declare void @pango_font_metrics_unref(ptr noundef) local_unnamed_addr #2

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #2

declare void @gtk_style_context_get_color(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gtk_widget_get_state_flags(ptr noundef) local_unnamed_addr #2

declare void @cairo_save(ptr noundef) local_unnamed_addr #2

declare void @gdk_cairo_set_source_rgba(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cairo_restore(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 _ZTS11_GTypeClass", !13, i64 0}
!15 = !{!"_GTypeInstance", !14, i64 0}
!16 = !{!"p1 _ZTS6_GData", !13, i64 0}
!17 = !{!"_GObject", !15, i64 0, !8, i64 8, !16, i64 16}
!18 = !{!"p1 _ZTS23_GtkCellRendererPrivate", !13, i64 0}
!19 = !{!"_GtkCellRenderer", !17, i64 0, !18, i64 24}
!20 = !{!"_GtkDarktablePaintCell", !19, i64 0, !13, i64 32, !8, i64 40, !13, i64 48}
!21 = !{!20, !13, i64 32}
!22 = !{!20, !8, i64 40}
!23 = !{!20, !13, i64 48}
!24 = !{!8, !8, i64 0}
!25 = !{!"dt_codepath_t", !8, i64 0}
!26 = !{!"p1 _ZTS6_GList", !13, i64 0}
!27 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!28 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!29 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!30 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!31 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!32 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!33 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!34 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!35 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!36 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!37 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!38 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!39 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!40 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!41 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!42 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!43 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!44 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!45 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!46 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!47 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!48 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!49 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!50 = !{!"dt_pthread_mutex_t", !7, i64 0}
!51 = !{!"p1 omnipotent char", !13, i64 0}
!52 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!53 = !{!"_Bool", !7, i64 0}
!54 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!55 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!56 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!57 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!58 = !{!"", !52, i64 0, !50, i64 8, !7, i64 48, !53, i64 96, !53, i64 97, !54, i64 104, !55, i64 112, !56, i64 120, !57, i64 128, !57, i64 136, !57, i64 144}
!59 = !{!"double", !7, i64 0}
!60 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!61 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!62 = !{!"p1 int", !13, i64 0}
!63 = !{!"dt_sys_resources_t", !11, i64 0, !11, i64 8, !62, i64 16, !62, i64 24, !8, i64 32}
!64 = !{!"dt_backthumb_t", !59, i64 0, !59, i64 8, !8, i64 16, !8, i64 20}
!65 = !{!"dt_gimp_t", !8, i64 0, !51, i64 8, !51, i64 16, !8, i64 24, !8, i64 28}
!66 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!67 = !{!"dt_splash_t", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !8, i64 32}
!68 = !{!"darktable_t", !25, i64 0, !8, i64 4, !8, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !27, i64 48, !28, i64 56, !29, i64 64, !30, i64 72, !31, i64 80, !32, i64 88, !33, i64 96, !34, i64 104, !35, i64 112, !36, i64 120, !37, i64 128, !38, i64 136, !39, i64 144, !40, i64 152, !41, i64 160, !42, i64 168, !43, i64 176, !44, i64 184, !45, i64 192, !46, i64 200, !47, i64 208, !48, i64 216, !49, i64 224, !7, i64 232, !50, i64 2792, !50, i64 2832, !50, i64 2872, !50, i64 2912, !50, i64 2952, !50, i64 2992, !51, i64 3032, !51, i64 3040, !51, i64 3048, !51, i64 3056, !51, i64 3064, !51, i64 3072, !51, i64 3080, !51, i64 3088, !51, i64 3096, !51, i64 3104, !51, i64 3112, !51, i64 3120, !51, i64 3128, !58, i64 3136, !26, i64 3288, !59, i64 3296, !26, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !60, i64 3520, !61, i64 3528, !63, i64 3536, !64, i64 3576, !65, i64 3600, !67, i64 3632, !8, i64 3672}
!69 = !{!68, !34, i64 104}
!70 = !{!"p1 _ZTS7dt_ui_t", !13, i64 0}
!71 = !{!"dt_gui_widgets_t", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!72 = !{!"dt_gui_scrollbars_t", !66, i64 0, !66, i64 8, !8, i64 16}
!73 = !{!"p1 _ZTS14_cairo_surface", !13, i64 0}
!74 = !{!"dt_gui_gtk_t", !70, i64 0, !71, i64 8, !72, i64 56, !73, i64 80, !8, i64 88, !51, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !59, i64 1384, !59, i64 1392, !59, i64 1400, !59, i64 1408, !66, i64 1416, !59, i64 1424, !59, i64 1432, !59, i64 1440, !59, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!75 = !{!74, !59, i64 1432}
!76 = !{!13, !13, i64 0}
!77 = !{!"_GTypeClass", !11, i64 0}
!78 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!79 = !{!"_GObjectClass", !77, i64 0, !78, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !11, i64 80, !11, i64 88, !13, i64 96, !11, i64 104, !7, i64 112}
!80 = !{!"p1 _ZTS28_GtkCellRendererClassPrivate", !13, i64 0}
!81 = !{!"_GtkCellRendererClass", !79, i64 0, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !80, i64 232, !13, i64 240, !13, i64 248, !13, i64 256}
!82 = !{!81, !13, i64 144}
!83 = !{!81, !13, i64 160}
!84 = !{!81, !13, i64 192}
end_hunk_0
