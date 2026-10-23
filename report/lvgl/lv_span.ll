Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_span?download=true
inline.NumInlined: 76
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lv_spangroup_get_span_by_point:bb.a
  br i1 %i.v, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.w = call ptr @lv_ll_get_next(ptr noundef nonnull %i.a, ptr noundef nonnull %.02641) #10 ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !104

.loopexit:                                        ; preds = %bb.g, %bb.c, %.thread
  %.02638 = phi ptr [ %.02641, %.thread ], [ null, %bb.c ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.h

bb.h:                                             ; preds = %lv_spangroup_get_indent.exit, %bb.b, %.loopexit
  %.3 = phi ptr [ %.02638, %.loopexit ], [ null, %bb.b ], [ null, %lv_spangroup_get_indent.exit ]
  ret ptr %.3
}

declare zeroext i1 @lv_area_is_point_on(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @lv_spangroup_bind_span_text(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq ptr %0, null
  br i1 %.not34, label %.preheader43, label %bb.c

.preheader43:                                     ; preds = %bb.b, %.preheader43
  br label %.preheader43

bb.c:                                             ; preds = %bb.b
  %.not35 = icmp eq ptr %1, null
  br i1 %.not35, label %.preheader44, label %bb.d

.preheader44:                                     ; preds = %bb.c, %.preheader44
  br label %.preheader44

bb.d:                                             ; preds = %bb.c
  %i.a = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 15                         ; 2 uses
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  switch i32 %i.d, label %bb.i [
    i32 2, label %bb.g
    i32 7, label %.fold.split
    i32 4, label %.fold.split
  ]

bb.f:                                             ; preds = %bb.d
  switch i32 %i.d, label %bb.i [
    i32 7, label %bb.g
    i32 4, label %bb.g
    i32 2, label %bb.g
    i32 3, label %bb.g
  ]

.fold.split:                                      ; preds = %bb.e, %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.e, %.fold.split
  %.025 = phi ptr [ %3, %bb.f ], [ null, %.fold.split ], [ @.str.2, %bb.e ], [ %3, %bb.f ], [ %3, %bb.f ], [ %3, %bb.f ]
  %i.e = tail call ptr @lv_zalloc(i64 noundef 24) #10 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.preheader45, label %bb.h

.preheader45:                                     ; preds = %bb.g, %.preheader45
  br label %.preheader45

bb.h:                                             ; preds = %bb.g
  store ptr %2, ptr %i.e, align 8, !tbaa !105
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.025, ptr %i.h, align 8, !tbaa !65
  %i.i = tail call ptr @lv_subject_add_observer_obj(ptr noundef nonnull %2, ptr noundef nonnull @span_text_observer_cb, ptr noundef nonnull %0, ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h
  %.1 = phi ptr [ %i.i, %bb.h ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.1
}

declare ptr @lv_zalloc(i64 noundef) local_unnamed_addr #2

declare ptr @lv_subject_add_observer_obj(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @span_text_observer_cb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  tail call void @lv_spangroup_set_span_text(ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 15
  switch i32 %i.n, label %bb.f [
    i32 2, label %bb.d
    i32 7, label %bb.e
    i32 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !45
  tail call void (ptr, ptr, ptr, ...) @lv_spangroup_set_span_text_fmt(ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %i.d, i32 noundef %i.t)
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  tail call void (ptr, ptr, ptr, ...) @lv_spangroup_set_span_text_fmt(ptr noundef %i.v, ptr noundef %i.x, ptr noundef nonnull %i.d, ptr noundef %i.z)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  ret void
}

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @lv_ll_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_get_content_height(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_get_content_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @lv_obj_get_style_opa_recursive(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_label_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_style_get_prop(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @lv_text_get_next_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umulh.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"", !9, i64 0, !5, i64 8, !4, i64 12}
!12 = !{!"", !5, i64 0, !5, i64 4}
!13 = !{!"_lv_span_t", !10, i64 0, !11, i64 8, !5, i64 24, !12, i64 28, !5, i64 36}
!14 = !{!13, !10, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"p1 _ZTS15_lv_obj_class_t", !9, i64 0}
!17 = !{!"p1 _ZTS9_lv_obj_t", !9, i64 0}
!18 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !9, i64 0}
!19 = !{!"p1 _ZTS15_lv_obj_style_t", !9, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!21 = !{!"short", !4, i64 0}
!22 = !{!"_lv_obj_t", !16, i64 0, !17, i64 8, !18, i64 16, !19, i64 24, !9, i64 32, !20, i64 40, !5, i64 56, !21, i64 60, !21, i64 62, !21, i64 62, !21, i64 62, !21, i64 62, !21, i64 62, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 63, !21, i64 64}
!23 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16}
!24 = !{!"_lv_spangroup_t", !22, i64 0, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !23, i64 88, !5, i64 112, !5, i64 112}
!25 = !{!24, !5, i64 76}
!26 = !{!20, !5, i64 0}
!27 = !{!"_Bool", !4, i64 0}
!28 = !{!"p1 _ZTS13_lv_display_t", !9, i64 0}
!29 = !{!"p1 _ZTS11_lv_group_t", !9, i64 0}
!30 = !{!"p1 _ZTS11_lv_indev_t", !9, i64 0}
!31 = !{!"p1 _ZTS11_lv_event_t", !9, i64 0}
!32 = !{!"", !23, i64 0, !27, i64 24, !4, i64 25, !27, i64 26, !27, i64 27, !5, i64 28, !27, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !9, i64 56, !9, i64 64}
!33 = !{!"p1 _ZTS11_lv_timer_t", !9, i64 0}
!34 = !{!"", !27, i64 0, !27, i64 1, !27, i64 2, !33, i64 8, !23, i64 16}
!35 = !{!"", !5, i64 0, !4, i64 4, !9, i64 8, !9, i64 16}
!36 = !{!"_lv_draw_buf_handlers_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!37 = !{!"p1 _ZTS11_lv_cache_t", !9, i64 0}
!38 = !{!"p1 _ZTS15_lv_draw_unit_t", !9, i64 0}
!39 = !{!"", !38, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !27, i64 24}
!40 = !{!"long", !4, i64 0}
!41 = !{!"", !9, i64 0, !40, i64 8, !40, i64 16, !23, i64 24}
!42 = !{!"p1 _ZTS14_snippet_stack", !9, i64 0}
!43 = !{!"_lv_global_t", !9, i64 0, !27, i64 8, !27, i64 9, !23, i64 16, !28, i64 40, !28, i64 48, !23, i64 56, !27, i64 80, !5, i64 84, !5, i64 88, !10, i64 96, !23, i64 104, !29, i64 128, !23, i64 136, !30, i64 160, !17, i64 168, !5, i64 176, !9, i64 184, !27, i64 192, !5, i64 196, !5, i64 200, !31, i64 208, !5, i64 216, !32, i64 224, !34, i64 296, !35, i64 336, !36, i64 360, !36, i64 416, !36, i64 472, !23, i64 528, !37, i64 552, !37, i64 560, !39, i64 568, !23, i64 600, !4, i64 624, !9, i64 816, !9, i64 824, !9, i64 832, !41, i64 840, !23, i64 888, !42, i64 912, !9, i64 920, !5, i64 928, !4, i64 932}
!44 = !{!43, !42, i64 912}
!45 = !{!4, !4, i64 0}
!46 = !{!"p1 _ZTS10_lv_span_t", !9, i64 0}
!47 = !{!"p1 _ZTS10_lv_font_t", !9, i64 0}
!48 = !{!"", !46, i64 0, !10, i64 8, !47, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!49 = !{!48, !46, i64 0}
!50 = !{!48, !47, i64 16}
!51 = !{!48, !5, i64 36}
!52 = !{!48, !5, i64 32}
!53 = !{!20, !5, i64 8}
!54 = !{!20, !5, i64 12}
!55 = !{!48, !10, i64 8}
!56 = !{!48, !5, i64 24}
!57 = !{!48, !5, i64 28}
!58 = !{!12, !5, i64 4}
!59 = !{!12, !5, i64 0}
!60 = !{!24, !5, i64 72}
!61 = !{!13, !5, i64 36}
!62 = !{!"p1 _ZTS13_lv_subject_t", !9, i64 0}
!63 = !{!"", !62, i64 0, !9, i64 8, !10, i64 16}
!64 = !{!63, !9, i64 8}
!65 = !{!63, !10, i64 16}
!66 = distinct !{!66, !15}
!67 = distinct !{null, null}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = !{i64 0, i64 4, !8, i64 4, i64 4, !8, i64 8, i64 4, !8, i64 12, i64 4, !8}
!71 = !{!20, !5, i64 4}
!72 = !{!"_snippet_stack", !4, i64 0, !5, i64 2560}
!73 = !{!72, !5, i64 2560}
!74 = !{!"_lv_font_t", !9, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 32, !4, i64 32, !4, i64 33, !4, i64 34, !9, i64 40, !47, i64 48, !9, i64 56}
!75 = !{!74, !5, i64 28}
!76 = !{!"p1 _ZTS11_lv_layer_t", !9, i64 0}
!77 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!78 = !{!"", !17, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !76, i64 24, !21, i64 32, !21, i64 34, !77, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !40, i64 48, !9, i64 56}
!79 = !{!"p1 _ZTS21_lv_draw_label_hint_t", !9, i64 0}
!80 = !{!"", !78, i64 0, !10, i64 64, !12, i64 72, !47, i64 80, !77, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !77, i64 120, !77, i64 123, !5, i64 128, !5, i64 132, !5, i64 136, !4, i64 140, !4, i64 141, !5, i64 142, !5, i64 142, !4, i64 143, !4, i64 143, !4, i64 143, !79, i64 144, !77, i64 152, !5, i64 156}
!81 = !{!80, !4, i64 140}
!82 = !{!80, !47, i64 80}
!83 = !{!80, !10, i64 64}
!84 = !{!80, !5, i64 128}
!85 = !{!80, !5, i64 96}
!86 = !{!80, !5, i64 92}
!87 = !{!24, !5, i64 84}
!88 = !{!24, !5, i64 80}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = !{!10, !10, i64 0}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = !{!13, !5, i64 32}
!98 = !{!"_lv_span_coords_t", !20, i64 0, !20, i64 16, !20, i64 32}
!99 = !{!98, !5, i64 0}
!100 = !{!98, !5, i64 12}
!101 = !{!13, !5, i64 28}
!102 = !{!98, !5, i64 16}
!103 = !{!98, !5, i64 28}
!104 = distinct !{!104, !15}
!105 = !{!63, !62, i64 0}
!106 = !{!"_lv_observer_t", !62, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !5, i64 32, !5, i64 32, !5, i64 32}
!107 = !{!106, !9, i64 24}
!108 = !{!106, !9, i64 16}
end_hunk_0
