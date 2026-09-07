Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_line?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@lv_draw_line:bb.a
  %i.f = icmp ult i8 %i.e, 3
  br i1 %i.f, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !25 ; 2 uses
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !25 ; 2 uses
  %i.n = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.l, <2 x i32> %i.m)
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.l, <2 x i32> %i.m)
  %i.p = shufflevector <2 x i32> %i.n, <2 x i32> %i.o, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.q = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.r = shufflevector <4 x i32> %i.q, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.s = sub nsw <4 x i32> %i.p, %i.r
  %i.t = add nsw <4 x i32> %i.p, %i.r
  %i.u = shufflevector <4 x i32> %i.s, <4 x i32> %i.t, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.u, ptr %2, align 16, !tbaa !25
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %i.x = icmp slt i32 %i.w, 2
  br i1 %i.x, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store <4 x i32> <i32 536870911, i32 536870911, i32 -536870911, i32 -536870911>, ptr %2, align 16, !tbaa !25
  %i.ab = zext nneg i32 %i.w to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call ptr @lv_malloc(i64 noundef %i.ac) #5 ; 4 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.preheader102, label %.preheader103

.preheader103:                                    ; preds = %bb.f
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !26
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader103
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !24
  br label %.lr.ph

.preheader102:                                    ; preds = %bb.f, %.preheader102
  br label %.preheader102

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ag = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.ak, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ai, align 4
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27 ; 3 uses
  %i.an = icmp eq i32 %i.am, 2147483647
  br i1 %i.an, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !28 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 2147483647
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %2, align 16, !tbaa !40
  %.101 = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.am)
  %i.as = load i32, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.at = sub nsw i32 %.101, %i.as
  store i32 %i.at, ptr %2, align 16, !tbaa !40
  %i.au = load i32, ptr %i.z, align 8, !tbaa !41
  %i.av = tail call i32 @llvm.smax.i32(i32 %i.au, i32 %i.am)
  %i.aw = add nsw i32 %i.av, %i.as
  store i32 %i.aw, ptr %i.z, align 8, !tbaa !41
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !42
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 %i.ap)
  %i.az = sub nsw i32 %i.ay, %i.as
  store i32 %i.az, ptr %i.y, align 4, !tbaa !42
  %i.ba = load i32, ptr %i.aa, align 4, !tbaa !43
  %i.bb = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 %i.ap)
  %i.bc = add nsw i32 %i.bb, %i.as
  store i32 %i.bc, ptr %i.aa, align 4, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = load i32, ptr %i.v, align 8, !tbaa !26
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.i
  %.pre106 = load i32, ptr %2, align 16, !tbaa !40
  %i.bg = icmp eq i32 %.pre106, 536870911
  br i1 %i.bg, label %.thread, label %bb.j

.thread:                                          ; preds = %.preheader103, %._crit_edge
  tail call void @lv_free(ptr noundef nonnull %i.ad) #5
  br label %bb.o

bb.j:                                             ; preds = %._crit_edge
  %i.bh = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  call void @lv_area_increase(ptr noundef nonnull %2, i32 noundef %i.bh, i32 noundef %i.bh) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ %i.ad, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 39
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !44
  %.not99 = icmp eq i8 %i.bj, 0
  br i1 %.not99, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = call ptr @lv_draw_layer_create_drop_shadow(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #5 ; 3 uses
  %.not100 = icmp eq ptr %i.bk, null
  br i1 %.not100, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.l, %.preheader
  br label %.preheader

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false), !tbaa.struct !36
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 39
  store i8 0, ptr %i.bl, align 1, !tbaa !44
  call void @lv_draw_line(ptr noundef nonnull %i.bk, ptr noundef nonnull %3)
  call void @lv_draw_layer_finish_drop_shadow(ptr noundef nonnull %i.bk, ptr noundef nonnull %1) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.bm = call ptr @lv_draw_add_task(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8) #5 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %i.bp = call ptr @lv_memcpy(ptr noundef %i.bo, ptr noundef nonnull %1, i64 noundef 112) #5 ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store ptr %.0, ptr %i.bq, align 8, !tbaa !24
  call void @lv_draw_finalize_task_creation(ptr noundef %0, ptr noundef %i.bm) #5
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.e, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.a, %bb.o
  ret void
}

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare void @lv_area_increase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_draw_layer_create_drop_shadow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_layer_finish_drop_shadow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_add_task(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lv_draw_finalize_task_creation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_draw_line_iterate(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lv_draw_line_dsc_t, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %2(ptr noundef %0, ptr noundef nonnull %1) #5
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false), !tbaa.struct !36
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp ugt i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr null, ptr %i.h, align 8, !tbaa !24
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.i = add nsw i64 %i.g, -1
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.j
  %i.j = phi i64 [ 0, %bb.d ], [ %i.ab, %bb.j ]
  %.02428 = phi i32 [ 0, %bb.d ], [ %i.aa, %bb.j ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.j ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %i.m = icmp eq i32 %i.l, 2147483647
  br i1 %i.m, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  %i.p = icmp eq i32 %i.o, 2147483647
  br i1 %i.p, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add i32 %.02428, 1
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = icmp eq i32 %i.t, 2147483647
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !28
  %i.x = icmp eq i32 %i.w, 2147483647
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.k, align 4
  store i64 %i.y, ptr %4, align 8
  %i.z = load i64, ptr %i.s, align 4
  store i64 %i.z, ptr %5, align 8
  call void %2(ptr noundef %0, ptr noundef nonnull %3) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.f, %bb.i
  %i.aa = add i32 %.02428, 1                      ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = icmp ugt i64 %i.i, %i.ab
  br i1 %i.ac, label %bb.e, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.k

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.b, %.critedge
  ret void
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!9 = !{!"p1 _ZTS9_lv_obj_t", !8, i64 0}
!10 = !{!"p1 _ZTS11_lv_layer_t", !8, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!13 = !{!"long", !4, i64 0}
!14 = !{!"", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 24, !11, i64 32, !11, i64 34, !12, i64 36, !4, i64 39, !5, i64 40, !5, i64 42, !13, i64 48, !8, i64 56}
!15 = !{!"", !5, i64 0, !5, i64 4}
!16 = !{!"", !14, i64 0, !15, i64 64, !15, i64 72, !8, i64 80, !5, i64 88, !12, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 108, !4, i64 109, !4, i64 109, !4, i64 109}
!17 = !{!16, !5, i64 96}
!18 = !{!16, !4, i64 108}
!19 = !{!"p1 _ZTS15_lv_draw_task_t", !8, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!21 = !{!"p1 _ZTS15_lv_draw_unit_t", !8, i64 0}
!22 = !{!"_lv_draw_task_t", !19, i64 0, !5, i64 8, !20, i64 12, !20, i64 28, !20, i64 44, !20, i64 60, !10, i64 80, !21, i64 88, !5, i64 96, !8, i64 104, !4, i64 112, !4, i64 113, !4, i64 114}
!23 = !{!22, !8, i64 104}
!24 = !{!16, !8, i64 80}
!25 = !{!5, !5, i64 0}
!26 = !{!16, !5, i64 88}
!27 = !{!15, !5, i64 0}
!28 = !{!15, !5, i64 4}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!9, !9, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!11, !11, i64 0}
!33 = !{!4, !4, i64 0}
!34 = !{!13, !13, i64 0}
!35 = !{!8, !8, i64 0}
!36 = !{i64 0, i64 8, !30, i64 8, i64 4, !25, i64 12, i64 4, !25, i64 16, i64 4, !25, i64 24, i64 8, !31, i64 32, i64 2, !32, i64 34, i64 2, !32, i64 36, i64 1, !33, i64 37, i64 1, !33, i64 38, i64 1, !33, i64 39, i64 1, !33, i64 40, i64 4, !33, i64 48, i64 8, !34, i64 56, i64 8, !35, i64 64, i64 4, !25, i64 68, i64 4, !25, i64 72, i64 4, !25, i64 76, i64 4, !25, i64 80, i64 8, !35, i64 88, i64 4, !25, i64 92, i64 1, !33, i64 93, i64 1, !33, i64 94, i64 1, !33, i64 96, i64 4, !25, i64 100, i64 4, !25, i64 104, i64 4, !25, i64 108, i64 1, !33, i64 109, i64 1, !33}
!37 = !{!16, !13, i64 48}
!38 = !{!22, !5, i64 8}
!39 = distinct !{!39, !29}
!40 = !{!20, !5, i64 0}
!41 = !{!20, !5, i64 8}
!42 = !{!20, !5, i64 4}
!43 = !{!20, !5, i64 12}
!44 = !{!16, !4, i64 39}
!45 = distinct !{!45, !29}
end_hunk_0
