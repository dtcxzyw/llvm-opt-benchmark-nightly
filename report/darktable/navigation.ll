inline.NumInlined: 17
inline.NumDeleted: 8
begin_hunk_0_@cairo_rectangle

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_pattern_set_filter(ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @cairo_get_source(ptr noundef) local_unnamed_addr #9

declare void @cairo_fill(ptr noundef) local_unnamed_addr #9

declare i32 @dt_dev_get_zoom_bounds(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_clip_preserve(ptr noundef) local_unnamed_addr #9

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #9

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #9

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #9

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #9

declare void @cairo_restore(ptr noundef) local_unnamed_addr #9

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #9

declare void @cairo_paint(ptr noundef) local_unnamed_addr #9

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #9

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_lib_navigation_set_position(i32 %.288.val.0.val, double noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i32 %.288.val.0.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %3, i64 1 ; 2 uses
  %i.e = add nsw <2 x i32> %i.d, splat (i32 -10)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2680 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.h = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.i = insertelement <2 x double> poison, double %0, i64 0
  %i.j = insertelement <2 x double> %i.i, double %1, i64 1
  %i.k = fadd reassoc nsz arcp contract afn <2 x double> %i.j, splat (double -5.000000e+00)
  %i.l = load i32, ptr %i.a, align 4, !tbaa !11
  %i.m = sitofp <2 x i32> %i.d to <2 x float>     ; 2 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !11
  %i.o = sitofp <2 x i32> %i.e to <2 x float>
  %i.p = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.q = insertelement <2 x i32> %i.p, i32 %i.n, i64 1
  %i.r = sitofp <2 x i32> %i.q to <2 x float>     ; 2 uses
  %i.s = fdiv reassoc nsz arcp contract afn <2 x float> %i.m, %i.r ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = extractelement <2 x float> %i.s, i64 1
  %i.v = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.t, float %i.u)
  %i.w = fpext <2 x float> %i.o to <2 x double>
  %i.x = fdiv reassoc nsz arcp contract afn <2 x double> %i.k, %i.w
  %i.y = fadd reassoc nsz arcp contract afn <2 x double> %i.x, splat (double -5.000000e-01)
  %i.z = insertelement <2 x float> poison, float %i.v, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul reassoc nsz arcp contract afn <2 x float> %i.aa, %i.r
  %i.ac = fdiv reassoc nsz arcp contract afn <2 x float> %i.ab, %i.m
  %i.ad = fpext <2 x float> %i.ac to <2 x double>
  %i.ae = fdiv reassoc nsz arcp contract afn <2 x double> %i.y, %i.ad
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  %i.ag = call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.af, <2 x float> splat (float 5.000000e-01))
  %i.ah = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ag, <2 x float> splat (float -5.000000e-01)) ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  call void @dt_dev_zoom_move(ptr noundef nonnull %i.g, i32 noundef 4, float noundef 0.000000e+00, i32 noundef 0, float noundef %i.ai, float noundef %i.aj, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @dt_dev_get_processed_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare void @dt_dev_zoom_move(ptr noundef, i32 noundef, float noundef, i32 noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #9

declare i32 @dt_bauhaus_combobox_get(ptr noundef) local_unnamed_addr #9

declare ptr @dt_bauhaus_combobox_get_text(ptr noundef) local_unnamed_addr #9

declare ptr @gtk_get_current_event() local_unnamed_addr #9

declare ptr @gdk_event_get_source_device(ptr noundef) local_unnamed_addr #9

declare i32 @gdk_device_get_source(ptr noundef) local_unnamed_addr #9

declare i32 @dt_key_modifier_state(...) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_lib_navigation_widget_to_center(ptr noundef %0, double noundef %1, double noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %6 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !109 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !117 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !143
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1552
  %i.m = load i32, ptr %i.l, align 16, !tbaa !153
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 604
  %i.o = load i32, ptr %i.n, align 4, !tbaa !154
  %.not31 = icmp eq i32 %i.m, %i.o
  br i1 %.not31, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 2680 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.q = tail call ptr @gtk_event_controller_get_widget(ptr noundef %0) #12
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !110
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !160
  %i.t = tail call ptr @dt_ui_center(ptr noundef %i.s) #12
  call void @gtk_widget_get_allocation(ptr noundef %i.q, ptr noundef nonnull %5) #12
  call void @gtk_widget_get_allocation(ptr noundef %i.t, ptr noundef nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.u = call i32 @dt_dev_get_processed_size(ptr noundef nonnull %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.a, align 4, !tbaa !11
  %i.x = load i32, ptr %i.b, align 4, !tbaa !11
  %i.y = load <2 x i32>, ptr %i.v, align 4, !tbaa !11
  %i.z = sitofp <2 x i32> %i.y to <2 x double>    ; 2 uses
  %i.aa = insertelement <2 x i32> poison, i32 %i.w, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %i.x, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x double>  ; 2 uses
  %i.ad = fdiv reassoc nsz arcp contract afn <2 x double> %i.z, %i.ac ; 2 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.af = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn olt double %i.ae, %i.af
  %. = select reassoc nsz arcp contract afn i1 %i.ag, double %i.ae, double %i.af
  %i.ah = insertelement <2 x double> poison, double %., i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <2 x double> %i.ai, %i.ac ; 4 uses
  %i.ak = fsub reassoc nsz arcp contract afn <2 x double> %i.aj, %i.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.al = call i32 @dt_dev_get_zoom_bounds(ptr noundef nonnull %i.p, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12
  %.not32 = icmp eq i32 %i.al, 0
  br i1 %.not32, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load float, ptr %i.e, align 4, !tbaa !157
  %.pre39 = load float, ptr %i.f, align 4, !tbaa !157
  %.pre40 = load float, ptr %i.c, align 4, !tbaa !157
  %.pre41 = load float, ptr %i.d, align 4, !tbaa !157
  %i.am = insertelement <2 x float> poison, float %.pre, i64 0
  %i.an = insertelement <2 x float> %i.am, float %.pre39, i64 1
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  %i.ap = fmul reassoc nsz arcp contract afn <2 x double> %i.aj, %i.ao
  %i.aq = insertelement <2 x float> poison, float %.pre40, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %.pre41, i64 1
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  %i.at = fadd reassoc nsz arcp contract afn <2 x double> %i.as, splat (double 5.000000e-01)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.au = phi <2 x double> [ %i.ap, %._crit_edge ], [ %i.aj, %bb.c ] ; 2 uses
  %i.av = phi <2 x double> [ %i.at, %._crit_edge ], [ splat (double 5.000000e-01), %bb.c ]
  %i.aw = fadd reassoc nsz arcp contract afn <2 x double> %i.au, %i.ak
  %i.ax = fmul reassoc nsz arcp contract afn <2 x double> %i.aj, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = fmul reassoc nsz arcp contract afn <2 x double> %i.aw, splat (double 5.000000e-01)
  %i.ba = insertelement <2 x double> poison, double %1, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %2, i64 1
  %7 = fadd reassoc nsz arcp contract afn <2 x double> %i.az, %i.bb
  %8 = fsub reassoc nsz arcp contract afn <2 x double> %7, %i.ax
  %i.bc = load <2 x i32>, ptr %i.ay, align 4, !tbaa !11
  %i.bd = sitofp <2 x i32> %i.bc to <2 x double>
  %i.be = fmul reassoc nsz arcp contract afn <2 x double> %8, %i.bd
  %i.bf = fdiv reassoc nsz arcp contract afn <2 x double> %i.be, %i.au ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 0
  store double %i.bg, ptr %3, align 8, !tbaa !161
  %i.bh = extractelement <2 x double> %i.bf, i64 1
  store double %i.bh, ptr %4, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @gdk_event_free(ptr noundef) local_unnamed_addr #9

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #9

declare ptr @gtk_event_controller_get_widget(ptr noundef) local_unnamed_addr #9

declare ptr @dt_ui_center(ptr noundef) local_unnamed_addr #9

declare i32 @gtk_gesture_set_state(ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @gtk_gesture_get_bounding_box_center(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }

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
!11 = !{!8, !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 short", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !9, i64 0}
!18 = !{!19, !14, i64 288}
!19 = !{!"dt_lib_module_t", !20, i64 0, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !23, i64 280, !14, i64 288, !9, i64 296, !24, i64 424, !24, i64 432, !8, i64 440, !24, i64 448, !24, i64 456, !24, i64 464, !24, i64 472, !8, i64 480}
!20 = !{!"dt_action_t", !8, i64 0, !21, i64 8, !21, i64 16, !14, i64 24, !22, i64 32, !22, i64 40}
!21 = !{!"p1 omnipotent char", !14, i64 0}
!22 = !{!"p1 _ZTS11dt_action_t", !14, i64 0}
!23 = !{!"p1 _ZTS8_GModule", !14, i64 0}
!24 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!25 = !{!26, !33, i64 80}
!26 = !{!"darktable_t", !27, i64 0, !8, i64 4, !8, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !29, i64 48, !30, i64 56, !31, i64 64, !32, i64 72, !33, i64 80, !34, i64 88, !35, i64 96, !36, i64 104, !37, i64 112, !38, i64 120, !39, i64 128, !40, i64 136, !41, i64 144, !42, i64 152, !43, i64 160, !44, i64 168, !45, i64 176, !46, i64 184, !47, i64 192, !48, i64 200, !49, i64 208, !50, i64 216, !51, i64 224, !9, i64 232, !52, i64 2792, !52, i64 2832, !52, i64 2872, !52, i64 2912, !52, i64 2952, !52, i64 2992, !21, i64 3032, !21, i64 3040, !21, i64 3048, !21, i64 3056, !21, i64 3064, !21, i64 3072, !21, i64 3080, !21, i64 3088, !21, i64 3096, !21, i64 3104, !21, i64 3112, !21, i64 3120, !21, i64 3128, !53, i64 3136, !28, i64 3288, !60, i64 3296, !28, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !61, i64 3520, !62, i64 3528, !63, i64 3536, !66, i64 3576, !67, i64 3600, !68, i64 3632, !8, i64 3672}
!27 = !{!"dt_codepath_t", !8, i64 0}
!28 = !{!"p1 _ZTS6_GList", !14, i64 0}
!29 = !{!"p1 _ZTS11_JsonParser", !14, i64 0}
!30 = !{!"p1 _ZTS9dt_conf_t", !14, i64 0}
!31 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!32 = !{!"p1 _ZTS8dt_lib_t", !14, i64 0}
!33 = !{!"p1 _ZTS17dt_view_manager_t", !14, i64 0}
!34 = !{!"p1 _ZTS12dt_control_t", !14, i64 0}
!35 = !{!"p1 _ZTS19dt_control_signal_t", !14, i64 0}
!36 = !{!"p1 _ZTS12dt_gui_gtk_t", !14, i64 0}
!37 = !{!"p1 _ZTS17dt_mipmap_cache_t", !14, i64 0}
!38 = !{!"p1 _ZTS16dt_image_cache_t", !14, i64 0}
!39 = !{!"p1 _ZTS12dt_bauhaus_t", !14, i64 0}
!40 = !{!"p1 _ZTS13dt_database_t", !14, i64 0}
!41 = !{!"p1 _ZTS14dt_pwstorage_t", !14, i64 0}
!42 = !{!"p1 _ZTS11dt_camctl_t", !14, i64 0}
!43 = !{!"p1 _ZTS15dt_collection_t", !14, i64 0}
!44 = !{!"p1 _ZTS14dt_selection_t", !14, i64 0}
!45 = !{!"p1 _ZTS11dt_points_t", !14, i64 0}
!46 = !{!"p1 _ZTS12dt_imageio_t", !14, i64 0}
!47 = !{!"p1 _ZTS11dt_opencl_t", !14, i64 0}
!48 = !{!"p1 _ZTS9dt_dbus_t", !14, i64 0}
!49 = !{!"p1 _ZTS9dt_undo_t", !14, i64 0}
!50 = !{!"p1 _ZTS16dt_colorspaces_t", !14, i64 0}
!51 = !{!"p1 _ZTS9dt_l10n_t", !14, i64 0}
!52 = !{!"dt_pthread_mutex_t", !9, i64 0}
!53 = !{!"", !54, i64 0, !52, i64 8, !9, i64 48, !55, i64 96, !55, i64 97, !56, i64 104, !57, i64 112, !58, i64 120, !59, i64 128, !59, i64 136, !59, i64 144}
!54 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!55 = !{!"_Bool", !9, i64 0}
!56 = !{!"p1 _ZTS10_GMainLoop", !14, i64 0}
!57 = !{!"p1 _ZTS13_GMainContext", !14, i64 0}
!58 = !{!"p1 _ZTS12_GThreadPool", !14, i64 0}
!59 = !{!"p1 _ZTS12_GAsyncQueue", !14, i64 0}
!60 = !{!"double", !9, i64 0}
!61 = !{!"p1 _ZTS10_GTimeZone", !14, i64 0}
!62 = !{!"p1 _ZTS10_GDateTime", !14, i64 0}
!63 = !{!"dt_sys_resources_t", !64, i64 0, !64, i64 8, !65, i64 16, !65, i64 24, !8, i64 32}
!64 = !{!"long", !9, i64 0}
!65 = !{!"p1 int", !14, i64 0}
!66 = !{!"dt_backthumb_t", !60, i64 0, !60, i64 8, !8, i64 16, !8, i64 20}
!67 = !{!"dt_gimp_t", !8, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28}
!68 = !{!"dt_splash_t", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !8, i64 32}
!69 = !{!70, !71, i64 392}
!70 = !{!"dt_view_manager_t", !28, i64 0, !71, i64 8, !72, i64 16, !73, i64 24, !75, i64 56, !76, i64 88, !76, i64 128, !77, i64 168, !79, i64 216, !24, i64 232, !24, i64 240, !24, i64 248, !24, i64 256, !24, i64 264, !24, i64 272, !24, i64 280, !80, i64 288}
!71 = !{!"p1 _ZTS9dt_view_t", !14, i64 0}
!72 = !{!"p1 _ZTS7_GSList", !14, i64 0}
!73 = !{!"dt_history_copy_item_t", !28, i64 0, !74, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!74 = !{!"p1 _ZTS12_GtkTreeView", !14, i64 0}
!75 = !{!"", !24, i64 0, !24, i64 8, !24, i64 16, !8, i64 24, !8, i64 28}
!76 = !{!"dt_act_on_cache_t", !28, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !72, i64 24, !8, i64 32, !8, i64 36}
!77 = !{!"", !78, i64 0, !78, i64 8, !78, i64 16, !78, i64 24, !78, i64 32, !78, i64 40}
!78 = !{!"p1 _ZTS12sqlite3_stmt", !14, i64 0}
!79 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!80 = !{!"", !81, i64 0, !83, i64 32, !84, i64 48, !85, i64 56, !84, i64 96, !86, i64 104, !87, i64 120, !88, i64 248, !84, i64 280, !89, i64 288, !86, i64 384}
!81 = !{!"", !82, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!82 = !{!"p1 _ZTS15dt_lib_module_t", !14, i64 0}
!83 = !{!"", !82, i64 0, !14, i64 8}
!84 = !{!"", !82, i64 0}
!85 = !{!"", !82, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!86 = !{!"", !71, i64 0, !14, i64 8}
!87 = !{!"", !82, i64 0, !71, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!88 = !{!"", !71, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!89 = !{!"", !71, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!90 = !{!26, !8, i64 3312}
!91 = !{!26, !8, i64 8}
!92 = !{!26, !35, i64 96}
!93 = !{!94, !24, i64 16}
!94 = !{!"dt_lib_navigation_t", !8, i64 0, !8, i64 4, !8, i64 8, !24, i64 16}
!95 = !{!21, !21, i64 0}
!96 = !{!19, !24, i64 424}
!97 = !{!26, !32, i64 72}
!98 = !{!99, !82, i64 184}
!99 = !{!"dt_lib_t", !28, i64 0, !82, i64 8, !100, i64 16}
!100 = !{!"", !101, i64 0, !104, i64 96, !84, i64 168, !105, i64 176}
!101 = !{!"", !82, i64 0, !102, i64 8, !103, i64 16, !72, i64 24, !102, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!102 = !{!"p1 _ZTS23dt_colorpicker_sample_t", !14, i64 0}
!103 = !{!"p1 _ZTS21dt_iop_color_picker_t", !14, i64 0}
!104 = !{!"", !82, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !8, i64 64}
!105 = !{!"", !8, i64 0}
!106 = !{!107, !8, i64 8}
!107 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!108 = !{!107, !8, i64 12}
!109 = !{!26, !31, i64 64}
!110 = !{!26, !36, i64 104}
!111 = !{!112, !60, i64 1440}
!112 = !{!"dt_gui_gtk_t", !113, i64 0, !114, i64 8, !115, i64 56, !116, i64 80, !8, i64 88, !21, i64 96, !9, i64 104, !9, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !60, i64 1384, !60, i64 1392, !60, i64 1400, !60, i64 1408, !24, i64 1416, !60, i64 1424, !60, i64 1432, !60, i64 1440, !60, i64 1448, !8, i64 1456, !8, i64 1460, !9, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!113 = !{!"p1 _ZTS7dt_ui_t", !14, i64 0}
!114 = !{!"dt_gui_widgets_t", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!115 = !{!"dt_gui_scrollbars_t", !24, i64 0, !24, i64 8, !8, i64 16}
!116 = !{!"p1 _ZTS14_cairo_surface", !14, i64 0}
!117 = !{!118, !120, i64 96}
!118 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !14, i64 16, !60, i64 24, !60, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !60, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !119, i64 88, !120, i64 96, !121, i64 112, !8, i64 2000, !8, i64 2004, !52, i64 2008, !8, i64 2048, !28, i64 2056, !8, i64 2064, !119, i64 2072, !8, i64 2080, !28, i64 2088, !28, i64 2096, !8, i64 2104, !28, i64 2112, !28, i64 2120, !65, i64 2128, !65, i64 2136, !8, i64 2144, !8, i64 2148, !28, i64 2152, !130, i64 2160, !131, i64 2168, !28, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !122, i64 2196, !122, i64 2200, !119, i64 2208, !8, i64 2216, !132, i64 2224, !135, i64 2384, !136, i64 2496, !137, i64 2520, !138, i64 2560, !139, i64 2592, !140, i64 2608, !141, i64 2624, !24, i64 2664, !24, i64 2672, !142, i64 2680, !142, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !28, i64 2904, !8, i64 2912, !31, i64 2920}
!119 = !{!"p1 _ZTS15dt_iop_module_t", !14, i64 0}
!120 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !14, i64 0}
!121 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !122, i64 8, !122, i64 12, !122, i64 16, !122, i64 20, !122, i64 24, !122, i64 28, !122, i64 32, !122, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !64, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !122, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !64, i64 1448, !64, i64 1456, !64, i64 1464, !64, i64 1472, !8, i64 1480, !123, i64 1488, !9, i64 1616, !21, i64 1656, !8, i64 1664, !8, i64 1668, !126, i64 1672, !127, i64 1680, !128, i64 1704, !17, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !122, i64 1756, !122, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !28, i64 1856, !129, i64 1864, !8, i64 1872, !8, i64 1876}
!122 = !{!"float", !9, i64 0}
!123 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !124, i64 48, !125, i64 64, !9, i64 96, !8, i64 112}
!124 = !{!"", !17, i64 0, !17, i64 2}
!125 = !{!"", !8, i64 0, !9, i64 16}
!126 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!127 = !{!"dt_image_geoloc_t", !60, i64 0, !60, i64 8, !60, i64 16}
!128 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!129 = !{!"p1 _ZTS16dt_cache_entry_t", !14, i64 0}
!130 = !{!"p1 _ZTS15dt_masks_form_t", !14, i64 0}
!131 = !{!"p1 _ZTS19dt_masks_form_gui_t", !14, i64 0}
!132 = !{!"", !133, i64 0, !119, i64 40, !134, i64 48, !85, i64 120}
!133 = !{!"dt_dev_proxy_exposure_t", !119, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!134 = !{!"", !82, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64}
!135 = !{!"dt_dev_chroma_t", !119, i64 0, !119, i64 8, !9, i64 16, !9, i64 32, !9, i64 64, !8, i64 96}
end_hunk_0
