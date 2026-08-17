inline.NumInlined: 33
inline.NumDeleted: 13
begin_hunk_0_@lv_bar_is_symmetrical:bb.a
.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 7
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8    ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %i.m = icmp eq i32 %i.l, %i.f
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.n = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.m, %bb.e ]
  ret i1 %i.n
}

; Function Attrs: nounwind uwtable
define ptr @lv_bar_bind_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %0, null
  br i1 %.not11, label %.preheader14, label %bb.c

.preheader14:                                     ; preds = %bb.b, %.preheader14
  br label %.preheader14

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 14
  %switch = icmp eq i32 %i.c, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @lv_subject_add_observer_obj(ptr noundef nonnull %1, ptr noundef nonnull @bar_value_observer_cb, ptr noundef nonnull %0, ptr noundef null) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @lv_subject_add_observer_obj(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bar_value_observer_cb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @lv_observer_get_target_obj(ptr noundef %0) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 15
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %lv_bar_set_value.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  %i.g = load i32, ptr %i.f, align 2
  %i.h = and i32 %i.g, 65536
  %i.i = icmp ne i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  br label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = icmp eq i32 %i.o, %i.m
  br i1 %i.p, label %lv_bar_set_value.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !20
  %..i = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.t)
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %..i)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %.31.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.v) ; 2 uses
  %i.w = icmp eq i32 %i.o, %.31.i
  br i1 %i.w, label %lv_bar_set_value.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  tail call fastcc void @lv_bar_set_value_with_anim(ptr noundef %i.k, i32 noundef %.31.i, ptr noundef %i.n, ptr noundef %i.x, i1 noundef zeroext %i.i)
  br label %lv_bar_set_value.exit

lv_bar_set_value.exit:                            ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

declare void @lv_obj_remove_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @lv_anim_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_event_base(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_event_get_code(ptr noundef) local_unnamed_addr #2

declare ptr @lv_event_get_current_target(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_calculate_ext_draw_size(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_event_get_param(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_invalidate_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @lv_event_get_layer(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_get_coords(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_obj_send_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_rect_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_blur_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_obj_init_draw_blur_dsc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_is_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @lv_draw_rect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_layer_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_mask_rect_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_mask_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_image_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_layer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_init(ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_var(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_anim_set_exec_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @lv_bar_anim(ptr nofree noundef captures(none) initializes((16, 20)) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !26
  %i.b = load ptr, ptr %0, align 8, !tbaa !23
  %i.c = tail call i32 @lv_obj_invalidate(ptr noundef %i.b) #6 ; 0 uses
  ret void
}

declare void @lv_anim_set_values(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_anim_set_completed_cb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @lv_bar_anim_completed(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 -1, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.e = icmp eq ptr %i.a, %i.d
  br i1 %i.e, label %1, label %bb.b

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %3 = load i32, ptr %2, align 4, !tbaa !25
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %3, ptr %4, align 8, !tbaa !21
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 %i.i, ptr %i.j, align 4, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %1
  %i.k = tail call i32 @lv_obj_invalidate(ptr noundef %i.b) #6 ; 0 uses
  ret void
}

declare void @lv_anim_set_duration(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_anim_start(ptr noundef) local_unnamed_addr #2

declare ptr @lv_observer_get_target_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 76}
!9 = !{!"_lv_bar_t", !10, i64 0, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !16, i64 88, !18, i64 104, !19, i64 112, !19, i64 136, !5, i64 160, !5, i64 160}
!10 = !{!"_lv_obj_t", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !12, i64 32, !16, i64 40, !5, i64 56, !17, i64 60, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 62, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 63, !17, i64 64}
!11 = !{!"p1 _ZTS15_lv_obj_class_t", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS9_lv_obj_t", !12, i64 0}
!14 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !12, i64 0}
!15 = !{!"p1 _ZTS15_lv_obj_style_t", !12, i64 0}
!16 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!17 = !{!"short", !6, i64 0}
!18 = !{!"_Bool", !6, i64 0}
!19 = !{!"_lv_bar_anim_t", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!20 = !{!9, !5, i64 80}
!21 = !{!9, !5, i64 72}
!22 = !{!9, !18, i64 104}
!23 = !{!19, !13, i64 0}
!24 = !{!19, !5, i64 8}
!25 = !{!19, !5, i64 12}
!26 = !{!19, !5, i64 16}
!27 = !{!9, !5, i64 84}
!28 = !{!5, !5, i64 0}
!29 = !{!10, !5, i64 44}
!30 = !{!9, !5, i64 92}
!31 = !{!9, !5, i64 100}
!32 = !{!10, !5, i64 40}
!33 = !{!9, !5, i64 88}
!34 = !{!9, !5, i64 96}
!35 = !{!9, !5, i64 152}
!36 = !{!9, !5, i64 144}
!37 = !{!9, !5, i64 148}
!38 = !{!9, !5, i64 128}
!39 = !{!9, !5, i64 120}
!40 = !{!9, !5, i64 124}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{ptr @lv_area_get_height, ptr @lv_area_get_width}
!44 = distinct !{null}
!45 = !{!46, !48, i64 24}
!46 = !{!"", !47, i64 0, !5, i64 64, !12, i64 72, !12, i64 80, !49, i64 88, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 97, !49, i64 98, !51, i64 104, !12, i64 160, !49, i64 168, !5, i64 172, !5, i64 176, !6, i64 176, !49, i64 177, !5, i64 180, !5, i64 184, !49, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204}
!47 = !{!"", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !48, i64 24, !17, i64 32, !17, i64 34, !49, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !50, i64 48, !12, i64 56}
!48 = !{!"p1 _ZTS11_lv_layer_t", !12, i64 0}
!49 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!50 = !{!"long", !6, i64 0}
!51 = !{!"", !6, i64 0, !6, i64 10, !5, i64 11, !5, i64 11, !6, i64 12, !12, i64 48}
!52 = !{!46, !5, i64 64}
!53 = !{!54, !5, i64 68}
!54 = !{!"", !47, i64 0, !5, i64 64, !5, i64 68, !5, i64 72}
!55 = !{!46, !12, i64 72}
!56 = !{i64 0, i64 8, !57, i64 8, i64 4, !28, i64 12, i64 4, !28, i64 16, i64 4, !28, i64 24, i64 8, !58, i64 32, i64 2, !59, i64 34, i64 2, !59, i64 36, i64 1, !60, i64 37, i64 1, !60, i64 38, i64 1, !60, i64 39, i64 1, !60, i64 40, i64 4, !60, i64 48, i64 8, !61, i64 56, i64 8, !62, i64 64, i64 4, !28, i64 72, i64 8, !62, i64 80, i64 8, !62, i64 88, i64 1, !60, i64 89, i64 1, !60, i64 90, i64 1, !60, i64 91, i64 1, !60, i64 92, i64 1, !60, i64 93, i64 1, !60, i64 94, i64 1, !60, i64 95, i64 1, !60, i64 96, i64 1, !60, i64 97, i64 1, !60, i64 98, i64 1, !60, i64 99, i64 1, !60, i64 100, i64 1, !60, i64 104, i64 10, !60, i64 114, i64 1, !60, i64 115, i64 1, !60, i64 116, i64 32, !60, i64 152, i64 8, !62, i64 160, i64 8, !62, i64 168, i64 1, !60, i64 169, i64 1, !60, i64 170, i64 1, !60, i64 172, i64 4, !28, i64 176, i64 1, !60, i64 177, i64 1, !60, i64 178, i64 1, !60, i64 179, i64 1, !60, i64 180, i64 4, !28, i64 184, i64 4, !28, i64 188, i64 1, !60, i64 189, i64 1, !60, i64 190, i64 1, !60, i64 192, i64 4, !28, i64 196, i64 4, !28, i64 200, i64 4, !28, i64 204, i64 4, !28}
!57 = !{!13, !13, i64 0}
!58 = !{!48, !48, i64 0}
!59 = !{!17, !17, i64 0}
!60 = !{!6, !6, i64 0}
!61 = !{!50, !50, i64 0}
!62 = !{!12, !12, i64 0}
!63 = !{!46, !6, i64 95}
!64 = !{!46, !6, i64 96}
!65 = !{!46, !6, i64 94}
!66 = !{!46, !6, i64 91}
!67 = !{!46, !6, i64 97}
!68 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !28, i64 12, i64 4, !28}
!69 = !{!16, !5, i64 0}
!70 = !{!16, !5, i64 8}
!71 = !{!16, !5, i64 4}
!72 = !{!16, !5, i64 12}
!73 = !{!74, !5, i64 80}
!74 = !{!"_lv_draw_mask_rect_dsc_t", !47, i64 0, !16, i64 64, !5, i64 80, !5, i64 84}
!75 = !{!76, !12, i64 64}
!76 = !{!"_lv_draw_image_dsc_t", !47, i64 0, !12, i64 64, !77, i64 72, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !78, i64 108, !49, i64 116, !6, i64 119, !6, i64 120, !5, i64 121, !17, i64 121, !17, i64 121, !12, i64 128, !79, i64 136, !16, i64 144, !12, i64 160}
!77 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!78 = !{!"", !5, i64 0, !5, i64 4}
!79 = !{!"p1 _ZTS20_lv_draw_image_sup_t", !12, i64 0}
!80 = !{!81, !12, i64 16}
!81 = !{!"_lv_observer_t", !82, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !5, i64 32, !5, i64 32}
!82 = !{!"p1 _ZTS13_lv_subject_t", !12, i64 0}
!83 = !{!84, !12, i64 0}
!84 = !{!"_lv_anim_t", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !6, i64 108, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !6, i64 128, !6, i64 128, !6, i64 128, !6, i64 128}
end_hunk_0
