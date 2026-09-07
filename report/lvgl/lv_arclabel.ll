Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_arclabel?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@recolor_cmd_get_next:bb.a
bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i8 %.fr133.1, -87
  br label %.lr.ph.split.2

.lr.ph.split.2:                                   ; preds = %bb.g, %.thread162
  %.092.1 = phi i8 [ %i.q, %bb.g ], [ %spec.select132.1, %.thread162 ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  %.fr133.2 = freeze i8 %i.s                      ; 6 uses
  %i.t = add i8 %.fr133.2, -48                    ; 2 uses
  %or.cond4.2 = icmp ult i8 %i.t, 10
  br i1 %or.cond4.2, label %.thread164, label %switch.early.test.2

switch.early.test.2:                              ; preds = %.lr.ph.split.2
  switch i8 %.fr133.2, label %.thread130 [
    i8 102, label %bb.h
    i8 101, label %bb.h
    i8 100, label %bb.h
    i8 99, label %bb.h
    i8 98, label %bb.h
    i8 97, label %bb.h
    i8 70, label %bb.h
    i8 69, label %bb.h
    i8 68, label %bb.h
    i8 67, label %bb.h
    i8 66, label %bb.h
    i8 65, label %bb.h
  ]

bb.h:                                             ; preds = %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2, %switch.early.test.2
  %i.u = add nsw i8 %.fr133.2, -97
  %or.cond13.2 = icmp ult i8 %i.u, 6
  br i1 %or.cond13.2, label %bb.i, label %.thread164

.thread164:                                       ; preds = %.lr.ph.split.2, %bb.h
  %i.v = add nsw i8 %.fr133.2, -65
  %or.cond16.2 = icmp ult i8 %i.v, 6
  %i.w = add nsw i8 %.fr133.2, -55
  %spec.select132.2 = select i1 %or.cond16.2, i8 %i.w, i8 %i.t
  br label %.lr.ph.split.3

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i8 %.fr133.2, -87
  br label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %bb.i, %.thread164
  %.092.2 = phi i8 [ %i.x, %bb.i ], [ %spec.select132.2, %.thread164 ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !33
  %.fr133.3 = freeze i8 %i.z                      ; 6 uses
  %i.aa = add i8 %.fr133.3, -48                   ; 2 uses
  %or.cond4.3 = icmp ult i8 %i.aa, 10
  br i1 %or.cond4.3, label %.thread166, label %switch.early.test.3

switch.early.test.3:                              ; preds = %.lr.ph.split.3
  switch i8 %.fr133.3, label %.thread130 [
    i8 102, label %bb.j
    i8 101, label %bb.j
    i8 100, label %bb.j
    i8 99, label %bb.j
    i8 98, label %bb.j
    i8 97, label %bb.j
    i8 70, label %bb.j
    i8 69, label %bb.j
    i8 68, label %bb.j
    i8 67, label %bb.j
    i8 66, label %bb.j
    i8 65, label %bb.j
  ]

bb.j:                                             ; preds = %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3, %switch.early.test.3
  %i.ab = add nsw i8 %.fr133.3, -97
  %or.cond13.3 = icmp ult i8 %i.ab, 6
  br i1 %or.cond13.3, label %bb.k, label %.thread166

.thread166:                                       ; preds = %.lr.ph.split.3, %bb.j
  %i.ac = add nsw i8 %.fr133.3, -65
  %or.cond16.3 = icmp ult i8 %i.ac, 6
  %i.ad = add nsw i8 %.fr133.3, -55
  %spec.select132.3 = select i1 %or.cond16.3, i8 %i.ad, i8 %i.aa
  br label %.lr.ph.split.4

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i8 %.fr133.3, -87
  br label %.lr.ph.split.4

.lr.ph.split.4:                                   ; preds = %bb.k, %.thread166
  %.092.3 = phi i8 [ %i.ae, %bb.k ], [ %spec.select132.3, %.thread166 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !33
  %.fr133.4 = freeze i8 %i.ag                     ; 6 uses
  %i.ah = add i8 %.fr133.4, -48                   ; 2 uses
  %or.cond4.4 = icmp ult i8 %i.ah, 10
  br i1 %or.cond4.4, label %.thread168, label %switch.early.test.4

switch.early.test.4:                              ; preds = %.lr.ph.split.4
  switch i8 %.fr133.4, label %.thread130 [
    i8 102, label %bb.l
    i8 101, label %bb.l
    i8 100, label %bb.l
    i8 99, label %bb.l
    i8 98, label %bb.l
    i8 97, label %bb.l
    i8 70, label %bb.l
    i8 69, label %bb.l
    i8 68, label %bb.l
    i8 67, label %bb.l
    i8 66, label %bb.l
    i8 65, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4, %switch.early.test.4
  %i.ai = add nsw i8 %.fr133.4, -97
  %or.cond13.4 = icmp ult i8 %i.ai, 6
  br i1 %or.cond13.4, label %bb.m, label %.thread168

.thread168:                                       ; preds = %.lr.ph.split.4, %bb.l
  %i.aj = add nsw i8 %.fr133.4, -65
  %or.cond16.4 = icmp ult i8 %i.aj, 6
  %i.ak = add nsw i8 %.fr133.4, -55
  %spec.select132.4 = select i1 %or.cond16.4, i8 %i.ak, i8 %i.ah
  br label %.lr.ph.split.5

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i8 %.fr133.4, -87
  br label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %bb.m, %.thread168
  %.092.4 = phi i8 [ %i.al, %bb.m ], [ %spec.select132.4, %.thread168 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %.fr133.5 = freeze i8 %i.an                     ; 6 uses
  %i.ao = add i8 %.fr133.5, -48                   ; 2 uses
  %or.cond4.5 = icmp ult i8 %i.ao, 10
  br i1 %or.cond4.5, label %.thread170, label %switch.early.test.5

switch.early.test.5:                              ; preds = %.lr.ph.split.5
  switch i8 %.fr133.5, label %.thread130 [
    i8 102, label %bb.n
    i8 101, label %bb.n
    i8 100, label %bb.n
    i8 99, label %bb.n
    i8 98, label %bb.n
    i8 97, label %bb.n
    i8 70, label %bb.n
    i8 69, label %bb.n
    i8 68, label %bb.n
    i8 67, label %bb.n
    i8 66, label %bb.n
    i8 65, label %bb.n
  ]

bb.n:                                             ; preds = %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5, %switch.early.test.5
  %i.ap = add nsw i8 %.fr133.5, -97
  %or.cond13.5 = icmp ult i8 %i.ap, 6
  br i1 %or.cond13.5, label %bb.o, label %.thread170

.thread170:                                       ; preds = %.lr.ph.split.5, %bb.n
  %i.aq = add nsw i8 %.fr133.5, -65
  %or.cond16.5 = icmp ult i8 %i.aq, 6
  %i.ar = add nsw i8 %.fr133.5, -55
  %spec.select132.5 = select i1 %or.cond16.5, i8 %i.ar, i8 %i.ao
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i8 %.fr133.5, -87
  br label %bb.p

.thread130:                                       ; preds = %bb.c, %switch.early.test, %switch.early.test.1, %switch.early.test.2, %switch.early.test.3, %switch.early.test.4, %switch.early.test.5
  %.093135 = phi i32 [ 5, %switch.early.test.5 ], [ 0, %switch.early.test ], [ 1, %switch.early.test.1 ], [ 2, %switch.early.test.2 ], [ 3, %switch.early.test.3 ], [ 4, %switch.early.test.4 ], [ 0, %bb.c ] ; 2 uses
  %i.at = zext nneg i32 %.093135 to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.at
  br label %bb.r

bb.p:                                             ; preds = %bb.o, %.thread170
  %.092.5 = phi i8 [ %i.as, %bb.o ], [ %spec.select132.5, %.thread170 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !33
  %i.ax = icmp eq i8 %i.aw, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 2 uses
  %i.az = icmp ne ptr %3, null
  %or.cond18 = and i1 %i.az, %i.ax
  br i1 %or.cond18, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = shl i8 %.092.4, 4
  %i.bb = or i8 %i.ba, %.092.5
  %i.bc = shl i8 %.092.2, 4
  %i.bd = or i8 %i.bc, %.092.3
  %i.be = shl i8 %.092, 4
  %i.bf = or i8 %i.be, %.092.1
  %i.bg = tail call i24 @lv_color_make(i8 noundef zeroext %i.bf, i8 noundef zeroext %i.bd, i8 noundef zeroext %i.bb) #6
  store i24 %i.bg, ptr %3, align 1
  br label %bb.r

bb.r:                                             ; preds = %.thread130, %bb.q, %bb.p
  %.093136 = phi i32 [ %.093135, %.thread130 ], [ 6, %bb.q ], [ 6, %bb.p ] ; 2 uses
  %i.bh = phi ptr [ %i.au, %.thread130 ], [ %i.ay, %bb.q ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bi = sub nuw nsw i32 -2, %.093136
  %i.bj = zext i32 %i.bi to i64
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.bj ; 2 uses
  %.0986 = add nsw i32 %.093136, 1
  br label %.lr.ph

bb.s:                                             ; preds = %bb.t
  %.098 = add i32 %.0989, 1                       ; 2 uses
  %.not = icmp eq i32 %.098, -1
  br i1 %.not, label %.critedge20, label %.lr.ph, !llvm.loop !62

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.0989 = phi i32 [ %.0986, %bb.r ], [ %.098, %bb.s ] ; 3 uses
  %.01018 = phi ptr [ %i.bh, %bb.r ], [ %i.bl, %bb.s ] ; 3 uses
  %i.bk = load i8, ptr %.01018, align 1, !tbaa !33 ; 2 uses
  %.not118 = icmp eq i8 %i.bk, 0
  br i1 %.not118, label %.lr.ph143.preheader, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.01018, i64 1 ; 2 uses
  %.not119 = icmp eq i8 %i.bk, 32
  br i1 %.not119, label %.lr.ph143.preheader, label %bb.s, !llvm.loop !62

.lr.ph143.preheader:                              ; preds = %.lr.ph, %bb.t, %bb.b
  %.199181 = phi i32 [ 0, %bb.b ], [ %.0989, %bb.t ], [ %.0989, %.lr.ph ] ; 2 uses
  %.2103179 = phi ptr [ %0, %bb.b ], [ %.01018, %.lr.ph ], [ %i.bl, %bb.t ] ; 5 uses
  %narrow = xor i32 %.199181, -1
  %i.bm = zext i32 %narrow to i64
  %scevgep155 = getelementptr i8, ptr %.2103179, i64 %i.bm
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %bb.u
  %.2100141 = phi i32 [ %i.bp, %bb.u ], [ %.199181, %.lr.ph143.preheader ] ; 3 uses
  %.3104140 = phi ptr [ %i.bo, %bb.u ], [ %.2103179, %.lr.ph143.preheader ] ; 4 uses
  %i.bn = load i8, ptr %.3104140, align 1, !tbaa !33
  switch i8 %i.bn, label %bb.u [
    i8 0, label %.critedge20
    i8 35, label %.critedge20
  ]

bb.u:                                             ; preds = %.lr.ph143
  %i.bo = getelementptr inbounds nuw i8, ptr %.3104140, i64 1
  %i.bp = add nuw i32 %.2100141, 1                ; 2 uses
  %.not120 = icmp eq i32 %i.bp, -1
  br i1 %.not120, label %.critedge20, label %.lr.ph143, !llvm.loop !63

.critedge20:                                      ; preds = %bb.s, %.lr.ph143, %.lr.ph143, %bb.u
  %.2103180 = phi ptr [ %.2103179, %.lr.ph143 ], [ %.2103179, %bb.u ], [ %.2103179, %.lr.ph143 ], [ %scevgep, %bb.s ] ; 2 uses
  %.3104.lcssa = phi ptr [ %.3104140, %.lr.ph143 ], [ %.3104140, %.lr.ph143 ], [ %scevgep155, %bb.u ], [ %scevgep, %bb.s ] ; 3 uses
  %.2100.lcssa = phi i32 [ %.2100141, %.lr.ph143 ], [ %.2100141, %.lr.ph143 ], [ -1, %bb.u ], [ -1, %bb.s ]
  store ptr %.2103180, ptr %1, align 8, !tbaa !24
  %i.bq = ptrtoint ptr %.3104.lcssa to i64
  %i.br = ptrtoint ptr %.2103180 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  store i32 %i.bt, ptr %2, align 4, !tbaa !25
  %i.bu = load i8, ptr %.3104.lcssa, align 1, !tbaa !33 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.critedge20
  %i.bw = icmp eq i8 %i.bu, 35
  %or.cond126 = and i1 %i.c, %i.bw                ; 2 uses
  %i.bx = zext i1 %or.cond126 to i32
  %.3 = add i32 %.2100.lcssa, %i.bx
  %.not123 = icmp eq i32 %.3, -1
  br i1 %.not123, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.4.idx = zext i1 %or.cond126 to i64
  %.4 = getelementptr inbounds nuw i8, ptr %.3104.lcssa, i64 %.4.idx ; 2 uses
  %i.by = load i8, ptr %.4, align 1, !tbaa !33
  %.not124 = icmp eq i8 %i.by, 0
  %spec.select = select i1 %.not124, ptr null, ptr %.4
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.critedge20, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %.critedge20 ], [ null, %bb.v ], [ %spec.select, %bb.w ]
  ret ptr %.2
}

declare void @lv_text_encoded_letter_next_2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i16 @lv_font_get_glyph_width(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lv_trigo_cos(i16 noundef signext) local_unnamed_addr #2

declare i32 @lv_trigo_sin(i16 noundef signext) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_letter_dsc_init(ptr noundef) local_unnamed_addr #2

declare void @lv_draw_letter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_obj_get_style_prop(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i24 @lv_color_make(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_pct_to_px(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS15_lv_obj_class_t", !8, i64 0}
!10 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!11 = !{!"p1 _ZTS19_lv_obj_spec_attr_t", !8, i64 0}
!12 = !{!"p1 _ZTS15_lv_obj_style_t", !8, i64 0}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!14 = !{!"short", !4, i64 0}
!15 = !{!"_lv_obj_t", !9, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !8, i64 32, !13, i64 40, !5, i64 56, !14, i64 60, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 62, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 63, !14, i64 64}
!16 = !{!"p1 omnipotent char", !8, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 4}
!18 = !{!"_Bool", !4, i64 0}
!19 = !{!"_lv_arclabel_t", !15, i64 0, !16, i64 72, !4, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !17, i64 104, !5, i64 112, !5, i64 116, !5, i64 120, !4, i64 124, !4, i64 124, !4, i64 124, !18, i64 124}
!20 = !{!19, !5, i64 88}
!21 = !{!19, !5, i64 92}
!22 = !{!19, !5, i64 112}
!23 = !{!19, !16, i64 72}
!24 = !{!16, !16, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!18, !18, i64 0}
!27 = !{!19, !5, i64 96}
!28 = !{!19, !5, i64 120}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!19, !5, i64 104}
!31 = !{!19, !5, i64 108}
!32 = !{!"p1 _ZTS10_lv_font_t", !8, i64 0}
!33 = !{!4, !4, i64 0}
!34 = !{!19, !5, i64 100}
!35 = !{!19, !5, i64 116}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = !{!"p1 _ZTS14_lv_draw_buf_t", !8, i64 0}
!39 = !{!"p1 _ZTS15_lv_draw_task_t", !8, i64 0}
!40 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!41 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2, !4, i64 3}
!42 = !{!"_lv_layer_t", !38, i64 0, !39, i64 8, !40, i64 16, !40, i64 24, !8, i64 32, !13, i64 40, !13, i64 56, !13, i64 72, !5, i64 88, !41, i64 92, !5, i64 96, !18, i64 100, !4, i64 101}
!43 = !{!42, !4, i64 101}
!44 = !{i8 0, i8 2}
!45 = !{!13, !5, i64 0}
!46 = !{!17, !5, i64 0}
!47 = !{!13, !5, i64 4}
!48 = !{!17, !5, i64 4}
!49 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!50 = !{!"long", !4, i64 0}
!51 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !40, i64 24, !14, i64 32, !14, i64 34, !49, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !50, i64 48, !8, i64 56}
!52 = !{!"", !51, i64 0, !5, i64 64, !32, i64 72, !49, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !17, i64 104, !4, i64 112, !5, i64 113, !5, i64 113, !4, i64 114, !5, i64 116, !49, i64 120}
!53 = !{!52, !32, i64 72}
!54 = !{i64 0, i64 1, !33, i64 1, i64 1, !33, i64 2, i64 1, !33}
!55 = !{!52, !4, i64 112}
!56 = !{!52, !5, i64 84}
!57 = !{!52, !5, i64 64}
!58 = distinct !{!58, !29}
!59 = !{!"_lv_font_t", !8, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 32, !4, i64 32, !4, i64 33, !4, i64 34, !8, i64 40, !32, i64 48, !8, i64 56}
!60 = !{!59, !5, i64 24}
!61 = !{!59, !5, i64 28}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
end_hunk_0
