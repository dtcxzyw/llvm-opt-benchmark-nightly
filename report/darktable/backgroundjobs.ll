Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/backgroundjobs?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@gui_cleanup:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3872
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !19 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3912
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 3872
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare ptr @gtk_event_box_new() local_unnamed_addr #3

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_box_pack_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_progress_bar_new() local_unnamed_addr #3

declare void @g_main_context_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_added_gui_thread(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99
  tail call void @gtk_box_pack_start(ptr noundef %i.a, ptr noundef %i.c, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  %i.d = load ptr, ptr %0, align 8, !tbaa !97
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !99
  tail call void @gtk_box_reorder_child(ptr noundef %i.d, ptr noundef %i.e, i32 noundef 1) #10
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !99
  tail call void @gtk_widget_show_all(ptr noundef %i.f) #10
  %i.g = load ptr, ptr %0, align 8, !tbaa !97
  tail call void @gtk_widget_show(ptr noundef %i.g) #10
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.i = tail call ptr @gtk_widget_get_window(ptr noundef %i.h) #10 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @gdk_display_get_default() #10
  %i.k = tail call ptr @gdk_cursor_new_from_name(ptr noundef %i.j, ptr noundef nonnull @.str.3) #10 ; 2 uses
  tail call void @gdk_window_set_cursor(ptr noundef nonnull %i.i, ptr noundef %i.k) #10
  tail call void @g_object_unref(ptr noundef %i.k) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @free(ptr noundef nonnull %0) #10
  ret i32 0
}

declare void @gtk_box_reorder_child(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #3

declare ptr @gdk_cursor_new_from_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gdk_display_get_default() local_unnamed_addr #3

declare void @gdk_window_set_cursor(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_destroyed_gui_thread(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @gtk_widget_get_type() #13 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %.not19 = icmp eq ptr %i.e, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !109
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.c, i64 noundef %i.d) #14
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.j = load ptr, ptr %0, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 424
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  tail call void @gtk_container_remove(ptr noundef %i.l, ptr noundef nonnull %i.c) #10
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d, %bb.a
  %i.m = phi ptr [ %.pre, %.critedge ], [ %i.b, %bb.d ], [ %i.b, %bb.a ]
  store ptr null, ptr %i.m, align 8, !tbaa !92
  %i.n = load ptr, ptr %0, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.q = tail call i32 @dt_gui_container_has_children(ptr noundef %i.p) #10
  %.not21 = icmp eq i32 %i.q, 0
  br i1 %.not21, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !100
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 424
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  tail call void @gtk_widget_hide(ptr noundef %i.t) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @free(ptr noundef %i.u) #10
  tail call void @free(ptr noundef nonnull %0) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_widget_get_type() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @g_type_check_instance_is_a(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dt_gui_container_has_children(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_hide(ptr noundef) local_unnamed_addr #3

declare i32 @dt_control_running() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_cancellable_gui_thread(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = tail call ptr @dtgtk_button_new(ptr noundef nonnull @dtgtk_cairo_paint_cancel, i32 noundef 0, ptr noundef null) #10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = tail call i64 @g_signal_connect_data(ptr noundef %i.d, ptr noundef nonnull @.str.4, ptr noundef nonnull @_lib_backgroundjobs_cancel_callback_new, ptr noundef %i.f, ptr noundef null, i32 noundef 0) #10 ; 0 uses
  tail call void @gtk_box_pack_start(ptr noundef %i.c, ptr noundef %i.d, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  tail call void @gtk_widget_show_all(ptr noundef %i.d) #10
  tail call void @free(ptr noundef %0) #10
  ret i32 0
}

declare ptr @dtgtk_button_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dtgtk_cairo_paint_cancel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare i64 @g_signal_connect_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @_lib_backgroundjobs_cancel_callback_new(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  tail call void @dt_control_progress_cancel(ptr noundef %1) #10
  ret void
}

declare void @dt_control_progress_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_update_gui_thread(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !91 ; 3 uses
  %i.f = fcmp reassoc nsz arcp contract afn ogt double %i.e, 1.000000e+00
  %1 = fcmp reassoc nsz arcp contract afn olt double %i.e, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %1, double 0.000000e+00, double %i.e
  %2 = select reassoc nsz arcp contract afn i1 %i.f, double 1.000000e+00, double %spec.select
  tail call void @gtk_progress_bar_set_fraction(ptr noundef %i.c, double noundef %2) #10
  tail call void @free(ptr noundef %0) #10
  ret i32 0
}

declare void @gtk_progress_bar_set_fraction(ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_update_message_gui_thread(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  tail call void @gtk_label_set_text(ptr noundef %i.c, ptr noundef %i.e) #10
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !105
  tail call void @g_free(ptr noundef %i.f) #10
  tail call void @free(ptr noundef %0) #10
  ret i32 0
}

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !18, i64 424}
!12 = !{!"dt_lib_module_t", !13, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !17, i64 280, !15, i64 288, !9, i64 296, !18, i64 424, !18, i64 432, !8, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !8, i64 480}
!13 = !{!"dt_action_t", !8, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !16, i64 40}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!17 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!18 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!19 = !{!20, !28, i64 88}
!20 = !{!"darktable_t", !21, i64 0, !8, i64 4, !8, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !23, i64 48, !24, i64 56, !25, i64 64, !26, i64 72, !27, i64 80, !28, i64 88, !29, i64 96, !30, i64 104, !31, i64 112, !32, i64 120, !33, i64 128, !34, i64 136, !35, i64 144, !36, i64 152, !37, i64 160, !38, i64 168, !39, i64 176, !40, i64 184, !41, i64 192, !42, i64 200, !43, i64 208, !44, i64 216, !45, i64 224, !9, i64 232, !46, i64 2792, !46, i64 2832, !46, i64 2872, !46, i64 2912, !46, i64 2952, !46, i64 2992, !14, i64 3032, !14, i64 3040, !14, i64 3048, !14, i64 3056, !14, i64 3064, !14, i64 3072, !14, i64 3080, !14, i64 3088, !14, i64 3096, !14, i64 3104, !14, i64 3112, !14, i64 3120, !14, i64 3128, !47, i64 3136, !22, i64 3288, !54, i64 3296, !22, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !55, i64 3520, !56, i64 3528, !57, i64 3536, !60, i64 3576, !61, i64 3600, !62, i64 3632, !8, i64 3672}
!21 = !{!"dt_codepath_t", !8, i64 0}
!22 = !{!"p1 _ZTS6_GList", !15, i64 0}
!23 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!24 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!25 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!26 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!27 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!28 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!29 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!30 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!31 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!32 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!33 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!34 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!35 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!36 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!37 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!38 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!39 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!40 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!41 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!42 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!43 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!44 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!45 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!46 = !{!"dt_pthread_mutex_t", !9, i64 0}
!47 = !{!"", !48, i64 0, !46, i64 8, !9, i64 48, !49, i64 96, !49, i64 97, !50, i64 104, !51, i64 112, !52, i64 120, !53, i64 128, !53, i64 136, !53, i64 144}
!48 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!49 = !{!"_Bool", !9, i64 0}
!50 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!51 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!52 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!53 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!54 = !{!"double", !9, i64 0}
!55 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!56 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!57 = !{!"dt_sys_resources_t", !58, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !8, i64 32}
!58 = !{!"long", !9, i64 0}
!59 = !{!"p1 int", !15, i64 0}
!60 = !{!"dt_backthumb_t", !54, i64 0, !54, i64 8, !8, i64 16, !8, i64 20}
!61 = !{!"dt_gimp_t", !8, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28}
!62 = !{!"dt_splash_t", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !8, i64 32}
!63 = !{!64, !73, i64 3912}
!64 = !{!"dt_control_t", !8, i64 0, !16, i64 8, !13, i64 16, !13, i64 64, !13, i64 112, !13, i64 160, !13, i64 208, !13, i64 256, !13, i64 304, !13, i64 352, !13, i64 400, !13, i64 448, !13, i64 496, !16, i64 544, !65, i64 552, !8, i64 560, !18, i64 568, !8, i64 576, !8, i64 580, !66, i64 584, !67, i64 592, !54, i64 600, !8, i64 608, !8, i64 612, !58, i64 616, !8, i64 624, !8, i64 628, !8, i64 632, !54, i64 640, !54, i64 648, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !8, i64 672, !46, i64 680, !8, i64 720, !8, i64 724, !9, i64 728, !8, i64 2728, !8, i64 2732, !8, i64 2736, !9, i64 2740, !8, i64 3340, !22, i64 3344, !46, i64 3352, !46, i64 3392, !46, i64 3432, !9, i64 3472, !9, i64 3476, !9, i64 3480, !8, i64 3484, !8, i64 3488, !46, i64 3496, !46, i64 3536, !9, i64 3576, !8, i64 3624, !68, i64 3632, !58, i64 3640, !58, i64 3648, !69, i64 3656, !9, i64 3664, !9, i64 3704, !46, i64 3744, !9, i64 3784, !9, i64 3808, !9, i64 3816, !71, i64 3840, !74, i64 3960}
!65 = !{!"p1 _ZTS10_GSequence", !15, i64 0}
!66 = !{!"p1 _ZTS10_GPtrArray", !15, i64 0}
!67 = !{!"p1 _ZTS7_GSList", !15, i64 0}
!68 = !{!"p1 long", !15, i64 0}
!69 = !{!"p2 _ZTS9_dt_job_t", !70, i64 0}
!70 = !{!"any p2 pointer", !15, i64 0}
!71 = !{!"", !22, i64 0, !58, i64 8, !58, i64 16, !54, i64 24, !46, i64 32, !72, i64 72}
!72 = !{!"", !73, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!73 = !{!"p1 _ZTS15dt_lib_module_t", !15, i64 0}
!74 = !{!"", !75, i64 0}
!75 = !{!"", !73, i64 0, !15, i64 8}
!76 = !{!64, !15, i64 3920}
!77 = !{!64, !15, i64 3928}
!78 = !{!64, !15, i64 3936}
!79 = !{!64, !15, i64 3944}
!80 = !{!64, !15, i64 3952}
!81 = !{!22, !22, i64 0}
!82 = !{!83, !15, i64 0}
!83 = !{!"_GList", !15, i64 0, !22, i64 8, !22, i64 16}
!84 = !{!85, !86, i64 0}
!85 = !{!"_cancellable_gui_thread_t", !86, i64 0, !87, i64 8}
!86 = !{!"p1 _ZTS30dt_lib_backgroundjob_element_t", !15, i64 0}
!87 = !{!"p1 _ZTS14_dt_progress_t", !15, i64 0}
!88 = !{!85, !87, i64 8}
!89 = !{!90, !86, i64 0}
!90 = !{!"_update_gui_thread_t", !86, i64 0, !54, i64 8}
!91 = !{!90, !54, i64 8}
!92 = !{!93, !18, i64 0}
!93 = !{!"dt_lib_backgroundjob_element_t", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!94 = !{!93, !18, i64 24}
!95 = !{!93, !18, i64 8}
!96 = !{!93, !18, i64 16}
!97 = !{!98, !18, i64 0}
!98 = !{!"_added_gui_thread_t", !18, i64 0, !18, i64 8}
!99 = !{!98, !18, i64 8}
!100 = !{!101, !73, i64 0}
!101 = !{!"_destroyed_gui_thread_t", !73, i64 0, !86, i64 8}
!102 = !{!101, !86, i64 8}
!103 = !{!104, !86, i64 0}
!104 = !{!"_update_label_gui_thread_t", !86, i64 0, !14, i64 8}
!105 = !{!104, !14, i64 8}
!106 = !{!107, !108, i64 0}
!107 = !{!"_GTypeInstance", !108, i64 0}
!108 = !{!"p1 _ZTS11_GTypeClass", !15, i64 0}
!109 = !{!110, !58, i64 0}
!110 = !{!"_GTypeClass", !58, i64 0}
end_hunk_0
