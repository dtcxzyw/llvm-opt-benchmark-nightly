Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/option_element?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @lxb_html_option_element_interface_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call ptr @lexbor_mraw_calloc(ptr noundef %i.b, i64 noundef 184) #2 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.f, %0
  %..i = select i1 %.not.i, ptr %0, ptr %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %..i, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 1, ptr %i.h, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

declare ptr @lexbor_mraw_calloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @lxb_html_option_element_interface_destroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lxb_dom_node_interface_destroy(ptr noundef %0) #2 ; 0 uses
  ret ptr null
}

declare ptr @lxb_dom_node_interface_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_html_option_maybe_clone_to_selectedcontent(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lxb_dom_element_attr_by_id(ptr noundef %0, i64 noundef 28) #2
  %.not16 = icmp eq ptr %i.a, null
  br i1 %.not16, label %.loopexit, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge.backedge
  %i.e = phi ptr [ %i.k, %.critedge.backedge ], [ %i.c, %.critedge.preheader ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %.not = icmp eq i64 %i.g, 164
  br i1 %.not, label %bb.b, label %.critedge.backedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %.not15 = icmp eq i64 %i.i, 2
  br i1 %.not15, label %bb.c, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.b, %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %.lr.ph, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @lxb_html_select_get_enabled_selectedcontent(ptr noundef nonnull %i.e) #2 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @lxb_html_selectedcontent_clone_option(ptr noundef nonnull %i.m, ptr noundef %0) #2
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.backedge, %.critedge.preheader, %bb.c, %bb.a, %bb.d
  %.012 = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ %i.o, %bb.d ], [ -1, %.critedge.preheader ], [ -1, %.critedge.backedge ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lxb_html_option_element_selectedness(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lxb_dom_element_attr_by_id(ptr noundef %0, i64 noundef 28) #2
  %i.b = icmp ne ptr %i.a, null
  ret i1 %i.b
}

declare ptr @lxb_html_select_get_enabled_selectedcontent(ptr noundef) local_unnamed_addr #1

declare i32 @lxb_html_selectedcontent_clone_option(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lxb_dom_element_attr_by_id(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"lxb_dom_event_target", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!"p1 _ZTS16lxb_dom_document", !12, i64 0}
!16 = !{!"p1 _ZTS12lxb_dom_node", !12, i64 0}
!17 = !{!"lxb_dom_node", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !12, i64 80, !9, i64 88, !14, i64 96}
!18 = !{!"p1 _ZTS21lxb_dom_document_type", !12, i64 0}
!19 = !{!"p1 _ZTS15lxb_dom_element", !12, i64 0}
!20 = !{!"p1 _ZTS11lexbor_hash", !12, i64 0}
!21 = !{!"p1 _ZTS20lxb_dom_document_css", !12, i64 0}
!22 = !{!"_Bool", !8, i64 0}
!23 = !{!"lxb_dom_document", !17, i64 0, !9, i64 104, !9, i64 108, !18, i64 112, !19, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !20, i64 200, !12, i64 208, !12, i64 216, !21, i64 224, !22, i64 232, !22, i64 233, !22, i64 234}
!24 = !{!"p1 _ZTS21lxb_html_head_element", !12, i64 0}
!25 = !{!"p1 _ZTS21lxb_html_body_element", !12, i64 0}
!26 = !{!"lxb_html_document", !23, i64 0, !12, i64 240, !24, i64 248, !25, i64 256, !12, i64 264, !12, i64 272, !9, i64 280, !9, i64 284}
!27 = !{!26, !12, i64 160}
!28 = !{!17, !15, i64 32}
!29 = !{!17, !9, i64 88}
!30 = distinct !{!30, !34}
!31 = !{!17, !16, i64 56}
!32 = !{!17, !14, i64 8}
!33 = !{!17, !14, i64 24}
!34 = !{!"llvm.loop.mustprogress"}
end_hunk_0
