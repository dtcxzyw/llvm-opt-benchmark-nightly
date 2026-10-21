Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/tagging?download=true
inline.NumInlined: 117
inline.NumDeleted: 26
begin_hunk_0_@_completion_match_func:bb.a
  br i1 %.not48, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @g_strrstr(ptr noundef %1, ptr noundef nonnull @.str.4) #16 ; 2 uses
  %.not49 = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.0 = select i1 %.not49, ptr %1, ptr %i.r       ; 2 uses
  %i.s = load i8, ptr %.0, align 1, !tbaa !42
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %1, align 1, !tbaa !42
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !49
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %i.n, ptr noundef %2, i32 noundef %i.o, ptr noundef nonnull %i.a, i32 noundef -1) #16
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not50 = icmp eq ptr %i.w, null
  br i1 %.not50, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call noalias ptr @g_utf8_normalize(ptr noundef nonnull %i.w, i64 noundef -1, i32 noundef 2) #16 ; 3 uses
  %.not51 = icmp eq ptr %i.x, null
  br i1 %.not51, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call noalias ptr @g_utf8_casefold(ptr noundef nonnull %i.x, i64 noundef -1) #16 ; 3 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call ptr @g_strstr_len(ptr noundef nonnull %i.y, i64 noundef -1, ptr noundef nonnull %.0) #16
  %i.aa = icmp ne ptr %i.z, null
  %i.ab = zext i1 %i.aa to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.037 = phi i32 [ %i.ab, %bb.k ], [ 0, %bb.j ]
  call void @g_free(ptr noundef %i.y) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.138 = phi i32 [ %.037, %bb.l ], [ 0, %bb.i ]
  call void @g_free(ptr noundef %i.x) #16
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !49
  call void @g_free(ptr noundef %i.ac) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.239 = phi i32 [ %.138, %bb.m ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.critedge54, %bb.n, %bb.g, %bb.f, %bb.e, %bb.d
  %.3 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %.critedge54 ], [ 0, %bb.e ], [ %.239, %bb.n ], [ 0, %bb.g ], [ 0, %bb.a ]
  ret i32 %.3
}

declare void @gtk_entry_set_completion(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_editable_select_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_tagging_tag_destroy(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #1 {
bb.a:
  tail call void @gtk_widget_destroy(ptr noundef %2) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_lib_tagging_tag_key_press(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !126
  switch i32 %i.d, label %bb.g [
    i32 65307, label %bb.b
    i32 65289, label %bb.h
    i32 65293, label %bb.c
    i32 65421, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !147
  tail call void @g_list_free(ptr noundef %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !148
  tail call void @gtk_widget_destroy(ptr noundef %i.h) #16
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !127
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = tail call ptr @dt_ui_main_window(ptr noundef %i.j) #16
  tail call void @gtk_window_present(ptr noundef %i.k) #16
  br label %bb.h

bb.c:                                             ; preds = %bb.a, %bb.a
  tail call void (...) @dt_gui_cursor_set_busy() #16
  %i.l = tail call ptr @gtk_entry_get_text(ptr noundef %0) #16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  %i.o = tail call i32 @dt_tag_attach_string_list(ptr noundef %i.l, ptr noundef %i.n, i32 noundef 1) #16
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !147
  tail call void @dt_image_synch_xmps(ptr noundef %i.p) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void (...) @dt_gui_cursor_clear_busy() #16
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !147
  tail call void @g_list_free(ptr noundef %i.q) #16
  tail call fastcc void @_save_last_tag_used(ptr noundef %i.l, ptr noundef nonnull %i.b)
  tail call fastcc void @_init_treeview(ptr noundef nonnull %2, i32 noundef 0)
  tail call fastcc void @_init_treeview(ptr noundef nonnull %2, i32 noundef 1)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !148
  tail call void @gtk_widget_destroy(ptr noundef %i.s) #16
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !127
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133
  %i.v = tail call ptr @dt_ui_main_window(ptr noundef %i.u) #16
  tail call void @gtk_window_present(ptr noundef %i.v) #16
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_raise_signal_tag_changed(ptr noundef nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.g, %bb.b
  %.0 = phi i32 [ 0, %bb.g ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.e ]
  ret i32 %.0
}

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_popover_set_pointing_to(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gdk_window_get_origin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_window_get_width(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_window_get_height(ptr noundef) local_unnamed_addr #3

declare void @gtk_window_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_window_present(ptr noundef) local_unnamed_addr #3

declare i32 @gtk_entry_completion_get_text_column(ptr noundef) local_unnamed_addr #3

declare i64 @gtk_tree_model_get_column_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_entry_completion_get_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_editable_get_type() local_unnamed_addr #12

declare i32 @gtk_editable_get_position(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_editable_get_chars(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @g_utf8_strlen(ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @gtk_editable_delete_text(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_editable_insert_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_editable_set_position(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_entry_completion_get_model(ptr noundef) local_unnamed_addr #3

declare noalias ptr @g_utf8_normalize(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @g_utf8_casefold(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_size_recent_tags_list() unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.85) #16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !42
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.88) #16 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  %i.e = tail call i32 @llvm.smax.i32(i32 %i.c, i32 5)
  %spec.select.i = shl nuw i32 %i.e, 1            ; 2 uses
  br i1 %i.d, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.5) #16
  br label %bb.i

.preheader:                                       ; preds = %bb.b, %bb.e
  %.018 = phi ptr [ %i.h, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %.1, %bb.e ], [ 1, %bb.b ]      ; 4 uses
  %i.f = load i8, ptr %.018, align 1, !tbaa !42
  switch i8 %i.f, label %bb.e [
    i8 0, label %bb.f
    i8 44, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader
  %i.g = add nsw i32 %.0, 1
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %.1 = phi i32 [ %i.g, %bb.d ], [ %.0, %.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.018, i64 1
  br label %.preheader

bb.f:                                             ; preds = %.preheader
  %i.i = icmp sgt i32 %.0, %spec.select.i
  br i1 %i.i, label %g_strdup_inline.exit, label %bb.i

g_strdup_inline.exit:                             ; preds = %bb.f
  %i.j = sub nsw i32 %.0, %spec.select.i          ; 2 uses
  %i.k = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.a) #16 ; 3 uses
  %i.l = icmp sgt i32 %i.j, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %g_strdup_inline.exit, %bb.h
  %.225 = phi i32 [ %i.n, %bb.h ], [ %i.j, %g_strdup_inline.exit ] ; 2 uses
  %i.m = tail call ptr @g_strrstr(ptr noundef %i.k, ptr noundef nonnull @.str.86) #16 ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.m, align 1, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.n = add nsw i32 %.225, -1
  %i.o = icmp sgt i32 %.225, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %g_strdup_inline.exit
  tail call void @dt_conf_set_string(ptr noundef nonnull @.str.85, ptr noundef %i.k) #16
  tail call void @g_free(ptr noundef %i.k) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %._crit_edge, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { cold nounwind }

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
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!14 = !{!"dt_action_t", !8, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!16 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!17 = !{!"dt_lib_module_t", !14, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !15, i64 280, !11, i64 288, !7, i64 296, !16, i64 424, !16, i64 432, !8, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !8, i64 480}
!18 = !{!17, !11, i64 288}
!19 = !{!"p1 _ZTS9_GtkEntry", !11, i64 0}
!20 = !{!"p1 _ZTS12_GtkTreeView", !11, i64 0}
!21 = !{!"p1 _ZTS13_GtkListStore", !11, i64 0}
!22 = !{!"p1 _ZTS13_GtkTreeStore", !11, i64 0}
!23 = !{!"p1 _ZTS19_GtkTreeModelFilter", !11, i64 0}
!24 = !{!"p1 _ZTS6_GList", !11, i64 0}
!25 = !{!"p1 _ZTS12_GtkTreePath", !11, i64 0}
!26 = !{!"", !12, i64 0, !25, i64 8, !25, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40}
!27 = !{!"dt_lib_tagging_t", !7, i64 0, !19, i64 1024, !16, i64 1032, !20, i64 1040, !20, i64 1048, !16, i64 1056, !16, i64 1064, !16, i64 1072, !16, i64 1080, !16, i64 1088, !16, i64 1096, !16, i64 1104, !16, i64 1112, !16, i64 1120, !16, i64 1128, !21, i64 1136, !21, i64 1144, !22, i64 1152, !23, i64 1160, !23, i64 1168, !16, i64 1176, !24, i64 1184, !8, i64 1192, !8, i64 1196, !8, i64 1200, !8, i64 1204, !8, i64 1208, !12, i64 1216, !12, i64 1224, !26, i64 1232, !8, i64 1280}
!28 = !{!27, !8, i64 1280}
!29 = !{!27, !20, i64 1048}
!30 = !{!27, !20, i64 1040}
!31 = !{!"p1 _ZTS13_GtkTreeModel", !11, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!27, !16, i64 1056}
!34 = !{!27, !16, i64 1064}
!35 = !{!24, !24, i64 0}
!36 = !{!27, !8, i64 1192}
!37 = !{!27, !8, i64 1196}
!38 = !{!11, !11, i64 0}
!39 = !{!23, !23, i64 0}
!40 = !{!27, !8, i64 1208}
!41 = !{!27, !23, i64 1168}
!42 = !{!7, !7, i64 0}
!43 = !{!"_GList", !11, i64 0, !24, i64 8, !24, i64 16}
!44 = !{!43, !11, i64 0}
!45 = !{!"dt_tag_t", !8, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!46 = !{!45, !12, i64 8}
!47 = !{!8, !8, i64 0}
!48 = !{i64 0, i64 4, !47, i64 8, i64 8, !38, i64 16, i64 8, !38, i64 24, i64 8, !38}
!49 = !{!12, !12, i64 0}
!50 = !{!45, !8, i64 0}
!51 = !{!45, !8, i64 36}
!52 = !{!43, !24, i64 8}
!53 = !{!27, !23, i64 1160}
!54 = !{!27, !8, i64 1200}
!55 = !{!27, !8, i64 1204}
!56 = !{!27, !21, i64 1136}
!57 = !{!27, !12, i64 1216}
!58 = !{!"dt_codepath_t", !8, i64 0}
!59 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!60 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!61 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!62 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!63 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!64 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!65 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!66 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!67 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!68 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!69 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!70 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!71 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!72 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!73 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!74 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!75 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!76 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!77 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!78 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!79 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!80 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!81 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!82 = !{!"dt_pthread_mutex_t", !7, i64 0}
!83 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!84 = !{!"_Bool", !7, i64 0}
!85 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!86 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!87 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!88 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!89 = !{!"", !83, i64 0, !82, i64 8, !7, i64 48, !84, i64 96, !84, i64 97, !85, i64 104, !86, i64 112, !87, i64 120, !88, i64 128, !88, i64 136, !88, i64 144}
!90 = !{!"double", !7, i64 0}
!91 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!92 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!93 = !{!"long", !7, i64 0}
!94 = !{!"p1 int", !11, i64 0}
!95 = !{!"dt_sys_resources_t", !93, i64 0, !93, i64 8, !94, i64 16, !94, i64 24, !8, i64 32}
!96 = !{!"dt_backthumb_t", !90, i64 0, !90, i64 8, !8, i64 16, !8, i64 20}
!97 = !{!"dt_gimp_t", !8, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !8, i64 28}
!98 = !{!"dt_splash_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !8, i64 32}
!99 = !{!"darktable_t", !58, i64 0, !8, i64 4, !8, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !59, i64 48, !60, i64 56, !61, i64 64, !62, i64 72, !63, i64 80, !64, i64 88, !65, i64 96, !66, i64 104, !67, i64 112, !68, i64 120, !69, i64 128, !70, i64 136, !71, i64 144, !72, i64 152, !73, i64 160, !74, i64 168, !75, i64 176, !76, i64 184, !77, i64 192, !78, i64 200, !79, i64 208, !80, i64 216, !81, i64 224, !7, i64 232, !82, i64 2792, !82, i64 2832, !82, i64 2872, !82, i64 2912, !82, i64 2952, !82, i64 2992, !12, i64 3032, !12, i64 3040, !12, i64 3048, !12, i64 3056, !12, i64 3064, !12, i64 3072, !12, i64 3080, !12, i64 3088, !12, i64 3096, !12, i64 3104, !12, i64 3112, !12, i64 3120, !12, i64 3128, !89, i64 3136, !24, i64 3288, !90, i64 3296, !24, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !91, i64 3520, !92, i64 3528, !95, i64 3536, !96, i64 3576, !97, i64 3600, !98, i64 3632, !8, i64 3672}
!100 = !{!99, !65, i64 96}
!101 = !{!99, !8, i64 3312}
!102 = !{!99, !8, i64 8}
!103 = !{!27, !19, i64 1024}
!104 = !{!27, !16, i64 1120}
!105 = !{!27, !16, i64 1112}
!106 = !{!27, !16, i64 1128}
!107 = !{!27, !21, i64 1144}
!108 = !{!27, !22, i64 1152}
!109 = !{!27, !8, i64 1260}
!110 = !{!27, !8, i64 1256}
!111 = !{!27, !8, i64 1268}
!112 = !{!27, !8, i64 1272}
!113 = !{!27, !16, i64 1096}
!114 = !{!27, !16, i64 1104}
!115 = !{!25, !25, i64 0}
!116 = !{!"p1 _ZTS10_GdkWindow", !11, i64 0}
!117 = !{!"p1 double", !11, i64 0}
!118 = !{!"p1 _ZTS10_GdkDevice", !11, i64 0}
!119 = !{!"_GdkEventButton", !8, i64 0, !116, i64 8, !7, i64 16, !8, i64 20, !90, i64 24, !90, i64 32, !117, i64 40, !8, i64 48, !8, i64 52, !118, i64 56, !90, i64 64, !90, i64 72}
!120 = !{!119, !8, i64 0}
!121 = !{!119, !8, i64 52}
!122 = !{!119, !90, i64 24}
!123 = !{!119, !90, i64 32}
!124 = !{!"short", !7, i64 0}
!125 = !{!"_GdkEventKey", !8, i64 0, !116, i64 8, !7, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !12, i64 40, !124, i64 48, !7, i64 50, !8, i64 51}
!126 = !{!125, !8, i64 28}
!127 = !{!99, !66, i64 104}
!128 = !{!"p1 _ZTS7dt_ui_t", !11, i64 0}
!129 = !{!"dt_gui_widgets_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!130 = !{!"dt_gui_scrollbars_t", !16, i64 0, !16, i64 8, !8, i64 16}
!131 = !{!"p1 _ZTS14_cairo_surface", !11, i64 0}
!132 = !{!"dt_gui_gtk_t", !128, i64 0, !129, i64 8, !130, i64 56, !131, i64 80, !8, i64 88, !12, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !90, i64 1384, !90, i64 1392, !90, i64 1400, !90, i64 1408, !16, i64 1416, !90, i64 1424, !90, i64 1432, !90, i64 1440, !90, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!133 = !{!132, !128, i64 0}
!134 = !{!27, !12, i64 1232}
!135 = !{!27, !25, i64 1240}
!136 = !{!27, !25, i64 1248}
!137 = !{!27, !8, i64 1264}
!138 = !{!27, !12, i64 1224}
end_hunk_0
