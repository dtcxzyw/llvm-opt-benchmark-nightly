Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/image?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_execute_metadata:bb.a
  %or.cond3 = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %or.cond3, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %i.bm = and i32 %i.bl, 1048576
  %.not66 = icmp eq i32 %i.bm, 0
  br i1 %.not66, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.2, i32 noundef 378, ptr noundef nonnull @__FUNCTION__._execute_metadata) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ae
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !97
  %i.bo = tail call ptr @g_list_copy(ptr noundef nonnull %i.h) #13
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.bn, i32 noundef 10, ptr noundef %i.bo, i32 noundef 0) #13
  tail call void @g_free(ptr noundef %i.be) #13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.aa
  br i1 %.not63, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = icmp eq i32 %0, 2
  br i1 %i.bp, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bq = tail call ptr @dt_tag_get_tags(i32 noundef %i.g, i32 noundef 1) #13
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.br = phi ptr [ %i.bq, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  %i.bs = icmp ne i32 %0, 1
  %i.bt = zext i1 %i.bs to i32
  %i.bu = tail call i32 @dt_tag_set_tags(ptr noundef %i.br, ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef %i.bt, i32 noundef 1) #13
  %.not67 = icmp eq i32 %i.bu, 0
  br i1 %.not67, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !96
  %i.bw = trunc i32 %i.bv to i1
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3352), align 8
  %i.by = icmp ne i32 %i.bx, 0
  %or.cond5 = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond5, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !84
  %i.ca = and i32 %i.bz, 1048576
  %.not68 = icmp eq i32 %i.ca, 0
  br i1 %.not68, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.2, i32 noundef 386, ptr noundef nonnull @__FUNCTION__._execute_metadata) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.am
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !97
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.cb, i32 noundef 9) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al
  tail call void @g_list_free(ptr noundef %i.br) #13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ai
  br i1 %.not64, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 208), align 8, !tbaa !131
  tail call void @dt_undo_end_group(ptr noundef %i.cc) #13
  tail call void @dt_image_synch_xmps(ptr noundef nonnull %i.h) #13
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !98
  tail call void @dt_collection_update_query(ptr noundef %i.cd, i32 noundef 3, i32 noundef 19, ptr noundef nonnull %i.h) #13
  tail call void @dt_control_queue_redraw_center() #13
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void @g_list_free(ptr noundef nonnull %i.h) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %.not583, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void (...) @dt_gui_cursor_clear_busy() #13
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.a
  ret void
}

declare ptr @dt_act_on_get_images(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_gui_cursor_set_busy(...) local_unnamed_addr #4

declare void @dt_undo_start_group(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @dt_ratings_get(i32 noundef) local_unnamed_addr #4

declare void @dt_ratings_apply_on_list(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @dt_colorlabels_get_labels(i32 noundef) local_unnamed_addr #4

declare void @dt_colorlabels_set_labels(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_metadata_get_list_id(i32 noundef) local_unnamed_addr #4

declare void @dt_metadata_set_list_id(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

declare void @g_list_free_full(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) #4

declare void @dt_image_get_location(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_image_set_locations(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @g_list_copy(ptr noundef) local_unnamed_addr #4

declare ptr @dt_tag_get_tags(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @dt_tag_set_tags(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @g_list_free(ptr noundef) local_unnamed_addr #4

declare void @dt_undo_end_group(ptr noundef) local_unnamed_addr #4

declare void @dt_image_synch_xmps(ptr noundef) local_unnamed_addr #4

declare void @dt_gui_cursor_clear_busy(...) local_unnamed_addr #4

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #4

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_control_monochrome_images(i32 noundef) local_unnamed_addr #4

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @luaL_checktype(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @lua_settable(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @gtk_button_new_with_label(ptr noundef) local_unnamed_addr #4

declare ptr @lua_tolstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_grid_attach_next_to(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal void @lua_button_clicked(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  tail call void (ptr, i32, ptr, i32, ptr, ptr, i32, ...) @dt_lua_async_call_alien_internal(ptr noundef nonnull @__FUNCTION__.lua_button_clicked, i32 noundef 733, ptr noundef nonnull @lua_button_clicked_cb, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.91, ptr noundef %1, i32 noundef 4) #13
  ret void
}

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #4

declare void @dt_lua_async_call_alien_internal(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @lua_button_clicked_cb(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef 1) #13 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  tail call void @dt_lua_module_entry_push(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef nonnull %i.d) #13
  %i.e = tail call i32 @lua_getiuservalue(ptr noundef %0, i32 noundef -1, i32 noundef 1) #13 ; 0 uses
  %i.f = tail call i32 @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.81) #13 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.h = tail call i32 @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef %i.g) #13 ; 0 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.j = tail call ptr @lua_pushstring(ptr noundef %0, ptr noundef %i.i) #13 ; 0 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 160), align 8, !tbaa !98
  %i.l = tail call ptr @dt_collection_get_selected(ptr noundef %i.k, i32 noundef -1) #13 ; 2 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #13
  %.not20 = icmp eq ptr %i.l, null
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 2 uses
  %.01921 = phi ptr [ %i.o, %.lr.ph ], [ %i.l, %bb.a ] ; 3 uses
  %i.m = tail call i64 @luaA_type_add(ptr noundef %0, ptr noundef nonnull @.str.92, i64 noundef 4) #13
  %i.n = tail call i32 @luaA_push_type(ptr noundef %0, i64 noundef %i.m, ptr noundef nonnull %.01921) #13 ; 0 uses
  tail call void @lua_seti(ptr noundef %0, i32 noundef -2, i64 noundef %indvars.iv) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.o = tail call ptr @g_list_delete_link(ptr noundef nonnull %.01921, ptr noundef nonnull %.01921) #13 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @lua_callk(ptr noundef %0, i32 noundef 2, i32 noundef 0, i64 noundef 0, ptr noundef null) #13
  ret i32 0
}

declare ptr @dt_collection_get_selected(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @luaA_push_type(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @luaA_type_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @lua_seti(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @g_list_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @lua_callk(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @gtk_grid_get_child_at(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_button_get_type() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @g_type_check_instance_is_a(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare ptr @gtk_widget_get_name(ptr noundef) local_unnamed_addr #4

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #4

declare i32 @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_signal_handler_disconnect(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gtk_grid_remove_row(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }

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
!19 = !{!"dt_lib_image_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !8, i64 200}
!20 = !{!19, !8, i64 200}
!21 = !{!19, !16, i64 16}
!22 = !{!19, !16, i64 24}
!23 = !{!19, !16, i64 56}
!24 = !{!19, !16, i64 64}
!25 = !{!19, !16, i64 32}
!26 = !{!19, !16, i64 40}
!27 = !{!19, !16, i64 8}
!28 = !{!19, !16, i64 0}
!29 = !{!19, !16, i64 48}
!30 = !{!19, !16, i64 88}
!31 = !{!19, !16, i64 96}
!32 = !{!19, !16, i64 72}
!33 = !{!19, !16, i64 128}
!34 = !{!19, !16, i64 136}
!35 = !{!19, !16, i64 144}
!36 = !{!19, !16, i64 104}
!37 = !{!19, !16, i64 80}
!38 = !{!19, !16, i64 112}
!39 = !{!19, !16, i64 120}
!40 = !{!"long", !7, i64 0}
!41 = !{!"double", !7, i64 0}
!42 = !{!"dt_image_geoloc_t", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"p1 _ZTS6_GList", !11, i64 0}
!44 = !{!"dt_codepath_t", !8, i64 0}
!45 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!46 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!47 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!48 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!49 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!50 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!51 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!52 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!53 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!54 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!55 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!56 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!57 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!58 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!59 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!60 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!61 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!62 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!63 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!64 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!65 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!66 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!67 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!68 = !{!"dt_pthread_mutex_t", !7, i64 0}
!69 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!70 = !{!"_Bool", !7, i64 0}
!71 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!72 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!73 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!74 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!75 = !{!"", !69, i64 0, !68, i64 8, !7, i64 48, !70, i64 96, !70, i64 97, !71, i64 104, !72, i64 112, !73, i64 120, !74, i64 128, !74, i64 136, !74, i64 144}
!76 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!77 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!78 = !{!"p1 int", !11, i64 0}
!79 = !{!"dt_sys_resources_t", !40, i64 0, !40, i64 8, !78, i64 16, !78, i64 24, !8, i64 32}
!80 = !{!"dt_backthumb_t", !41, i64 0, !41, i64 8, !8, i64 16, !8, i64 20}
!81 = !{!"dt_gimp_t", !8, i64 0, !12, i64 8, !12, i64 16, !8, i64 24, !8, i64 28}
!82 = !{!"dt_splash_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !8, i64 32}
!83 = !{!"darktable_t", !44, i64 0, !8, i64 4, !8, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !45, i64 48, !46, i64 56, !47, i64 64, !48, i64 72, !49, i64 80, !50, i64 88, !51, i64 96, !52, i64 104, !53, i64 112, !54, i64 120, !55, i64 128, !56, i64 136, !57, i64 144, !58, i64 152, !59, i64 160, !60, i64 168, !61, i64 176, !62, i64 184, !63, i64 192, !64, i64 200, !65, i64 208, !66, i64 216, !67, i64 224, !7, i64 232, !68, i64 2792, !68, i64 2832, !68, i64 2872, !68, i64 2912, !68, i64 2952, !68, i64 2992, !12, i64 3032, !12, i64 3040, !12, i64 3048, !12, i64 3056, !12, i64 3064, !12, i64 3072, !12, i64 3080, !12, i64 3088, !12, i64 3096, !12, i64 3104, !12, i64 3112, !12, i64 3120, !12, i64 3128, !75, i64 3136, !43, i64 3288, !41, i64 3296, !43, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !76, i64 3520, !77, i64 3528, !79, i64 3536, !80, i64 3576, !81, i64 3600, !82, i64 3632, !8, i64 3672}
!84 = !{!83, !8, i64 8}
!85 = !{!83, !56, i64 136}
!86 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"p1 _ZTS12sqlite3_stmt", !11, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!19, !16, i64 192}
!91 = !{!19, !16, i64 152}
!92 = !{!19, !16, i64 160}
!93 = !{!19, !16, i64 184}
!94 = !{!19, !16, i64 176}
!95 = !{!19, !16, i64 168}
!96 = !{!83, !8, i64 3312}
!97 = !{!83, !51, i64 96}
!98 = !{!83, !59, i64 160}
!99 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!100 = !{!"", !12, i64 0, !99, i64 8}
!101 = !{!100, !12, i64 0}
!102 = !{!100, !99, i64 8}
!103 = !{!"p1 _ZTS11_GTypeClass", !11, i64 0}
!104 = !{!"_GTypeInstance", !103, i64 0}
!105 = !{!104, !103, i64 0}
!106 = !{!"_GTypeClass", !40, i64 0}
!107 = !{!106, !40, i64 0}
!108 = !{!"float", !7, i64 0}
!109 = !{!"short", !7, i64 0}
!110 = !{!"", !109, i64 0, !109, i64 2}
!111 = !{!"", !8, i64 0, !7, i64 16}
!112 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !110, i64 48, !111, i64 64, !7, i64 96, !8, i64 112}
!113 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!114 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!115 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!116 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !108, i64 8, !108, i64 12, !108, i64 16, !108, i64 20, !108, i64 24, !108, i64 28, !108, i64 32, !108, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !40, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !108, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !8, i64 1480, !112, i64 1488, !7, i64 1616, !12, i64 1656, !8, i64 1664, !8, i64 1668, !113, i64 1672, !42, i64 1680, !114, i64 1704, !109, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !108, i64 1756, !108, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !43, i64 1856, !115, i64 1864, !8, i64 1872, !8, i64 1876}
!117 = !{!116, !8, i64 1444}
!118 = !{!17, !16, i64 424}
!119 = !{!12, !12, i64 0}
!120 = !{!83, !52, i64 104}
!121 = !{!"p1 _ZTS7dt_ui_t", !11, i64 0}
!122 = !{!"dt_gui_widgets_t", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!123 = !{!"dt_gui_scrollbars_t", !16, i64 0, !16, i64 8, !8, i64 16}
!124 = !{!"p1 _ZTS14_cairo_surface", !11, i64 0}
!125 = !{!"dt_gui_gtk_t", !121, i64 0, !122, i64 8, !123, i64 56, !124, i64 80, !8, i64 88, !12, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !16, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!126 = !{!125, !8, i64 1364}
!127 = !{!125, !8, i64 1368}
!128 = !{!83, !69, i64 3136}
!129 = !{!"_GList", !11, i64 0, !43, i64 8, !43, i64 16}
!130 = !{!129, !43, i64 8}
end_hunk_0
