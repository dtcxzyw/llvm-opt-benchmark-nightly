Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pngset?download=true
inline.NumInlined: 18
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@png_set_rows:bb.a
  %.not = icmp eq ptr %i.d, null
  %.not14 = icmp eq ptr %i.d, %2
  %or.cond16 = or i1 %.not, %.not14
  br i1 %or.cond16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_free_data(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 64, i32 noundef 0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %2, ptr %i.c, align 8, !tbaa !216
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29
  %i.g = or i32 %i.f, 32768
  store i32 %i.g, ptr %i.e, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_compression_buffer_size(ptr noalias noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -2147483648
  %or.cond = icmp ult i64 %i.b, -2147483647
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.77) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %i.e = and i32 %i.d, 32768
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = trunc nuw nsw i64 %1 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200
  store i32 %i.f, ptr %i.g, align 8, !tbaa !217
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i32, ptr %i.h, align 8, !tbaa !218
  %.not22 = icmp eq i32 %i.i, 0
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.78) #11
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.j = icmp samesign ult i64 %1, 6
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.80) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !219
  %i.m = zext i32 %i.l to i64
  %.not23 = icmp eq i64 %1, %i.m
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @png_free_buffer_list(ptr noundef nonnull %0, ptr noundef nonnull %i.n) #11
  %i.o = trunc nuw nsw i64 %1 to i32
  store i32 %i.o, ptr %i.k, align 8, !tbaa !219
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a, %bb.i, %bb.g, %bb.e
  ret void
}

declare void @png_free_buffer_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_invalid(ptr noalias nofree noundef readnone captures(address_is_null) %0, ptr noalias nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = xor i32 %2, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = and i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_user_limits(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store i32 %1, ptr %i.b, align 4, !tbaa !220
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i32 %2, ptr %i.c, align 8, !tbaa !221
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_chunk_cache_max(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  store i32 %1, ptr %i.a, align 4, !tbaa !222
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_chunk_malloc_max(ptr noalias nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.a = icmp eq i64 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %. = select i1 %i.a, i64 -1, i64 %1
  store i64 %., ptr %i.b, align 8, !tbaa !223
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @png_set_benign_errors(ptr noalias nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = and i32 %i.b, -7340033
  %masksel = select i1 %.not, i32 0, i32 7340032
  %.sink = or disjoint i32 %i.c, %masksel
  store i32 %.sink, ptr %i.a, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @png_set_check_for_invalid_index(ptr noalias nofree noundef writeonly captures(none) initializes((612, 616)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  %spec.select = sext i1 %i.a to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 %spec.select, ptr %i.b, align 4, !tbaa !225
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 80) i32 @png_check_keyword(ptr noalias noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x [32 x i8]], align 16         ; 5 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !10      ; 2 uses
  %.not64 = icmp eq i8 %i.c, 0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !10
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %i.d = phi i8 [ %i.o, %bb.g ], [ %i.c, %.preheader ] ; 5 uses
  %.059 = phi i32 [ %.1, %bb.g ], [ 1, %.preheader ]
  %.04058 = phi i32 [ %.141, %bb.g ], [ 0, %.preheader ] ; 4 uses
  %.04257 = phi i32 [ %.143, %bb.g ], [ 0, %.preheader ] ; 3 uses
  %.04556 = phi ptr [ %.146, %bb.g ], [ %2, %.preheader ] ; 5 uses
  %.04855 = phi ptr [ %i.e, %bb.g ], [ %1, %.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %.04855, i64 1 ; 3 uses
  %i.f = zext i8 %i.d to i32                      ; 2 uses
  %i.g = add i8 %i.d, -127
  %or.cond = icmp ult i8 %i.g, -94
  %i.h = icmp ult i8 %i.d, -95
  %or.cond5.not = and i1 %i.h, %or.cond           ; 2 uses
  br i1 %or.cond5.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.04556, i64 1
  store i8 %i.d, ptr %.04556, align 1, !tbaa !10
  %i.j = add nuw nsw i32 %.04257, 1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp eq i32 %.059, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.04556, i64 1
  store i8 32, ptr %.04556, align 1, !tbaa !10
  %i.m = add nuw nsw i32 %.04257, 1
  %.not53 = icmp eq i8 %i.d, 32
  %spec.select = select i1 %.not53, i32 %.04058, i32 %i.f
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i32 %.04058, 0
  %spec.select54 = select i1 %i.n, i32 %i.f, i32 %.04058
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.146 = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.e ], [ %.04556, %bb.f ] ; 2 uses
  %.143 = phi i32 [ %i.j, %bb.c ], [ %i.m, %bb.e ], [ %.04257, %bb.f ] ; 3 uses
  %.141 = phi i32 [ %.04058, %bb.c ], [ %spec.select, %bb.e ], [ %spec.select54, %bb.f ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.f ]
  %i.o = load i8, ptr %i.e, align 1, !tbaa !10    ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = icmp samesign ult i32 %.143, 79
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %.048.lcssa = phi ptr [ %1, %.preheader ], [ %i.e, %bb.g ]
  %.045.lcssa = phi ptr [ %2, %.preheader ], [ %.146, %bb.g ]
  %.042.lcssa = phi i32 [ 0, %.preheader ], [ %.143, %bb.g ] ; 2 uses
  %.040.lcssa = phi i32 [ 0, %.preheader ], [ %.141, %bb.g ] ; 2 uses
  %.0.lcssa = phi i1 [ true, %.preheader ], [ %or.cond5.not, %bb.g ]
  %i.s = icmp ne i32 %.042.lcssa, 0
  %or.cond7 = and i1 %i.s, %.0.lcssa              ; 3 uses
  %i.t = icmp eq i32 %.040.lcssa, 0
  %.247.idx = sext i1 %or.cond7 to i64
  %.247 = getelementptr inbounds i8, ptr %.045.lcssa, i64 %.247.idx
  %i.u = sext i1 %or.cond7 to i32
  %.244 = add nsw i32 %.042.lcssa, %i.u           ; 4 uses
  %i.v = select i1 %or.cond7, i1 %i.t, i1 false
  %.2 = select i1 %i.v, i32 32, i32 %.040.lcssa   ; 2 uses
  store i8 0, ptr %.247, align 1, !tbaa !10
  %i.w = icmp eq i32 %.244, 0
  br i1 %i.w, label %bb.l, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.x = load i8, ptr %.048.lcssa, align 1, !tbaa !10
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @png_warning(ptr noundef %0, ptr noundef nonnull @.str.81) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not52 = icmp eq i32 %.2, 0
  br i1 %.not52, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @png_warning_parameter(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %1) #11
  call void @png_warning_parameter_signed(ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef 4, i32 noundef %.2) #11
  call void @png_formatted_warning(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.82) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %._crit_edge, %bb.b
  %.049 = phi i32 [ 0, %bb.b ], [ 0, %._crit_edge ], [ %.244, %bb.j ], [ %.244, %bb.k ], [ %.244, %bb.i ]
  ret i32 %.049
}

declare void @png_warning_parameter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @png_warning_parameter_signed(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @png_formatted_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !66}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{i64 0, i64 1, !10, i64 2, i64 2, !12, i64 4, i64 2, !12, i64 6, i64 2, !12, i64 8, i64 2, !12}
!14 = !{!"long", !6, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"p1 _ZTS15png_text_struct", !15, i64 0}
!19 = !{!"png_time_struct", !11, i64 0, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5, !6, i64 6}
!20 = !{!"png_color_8_struct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4}
!21 = !{!"png_color_16_struct", !6, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !11, i64 8}
!22 = !{!"p1 short", !15, i64 0}
!23 = !{!"any p2 pointer", !15, i64 0}
!24 = !{!"p2 omnipotent char", !23, i64 0}
!25 = !{!"p1 _ZTS19png_unknown_chunk_t", !15, i64 0}
!26 = !{!"p1 _ZTS15png_sPLT_struct", !15, i64 0}
!27 = !{!"png_xy", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!28 = !{!"png_info_def", !7, i64 0, !7, i64 4, !7, i64 8, !14, i64 16, !16, i64 24, !11, i64 32, !11, i64 34, !6, i64 36, !6, i64 37, !6, i64 38, !6, i64 39, !6, i64 40, !6, i64 41, !6, i64 42, !6, i64 43, !6, i64 44, !6, i64 52, !6, i64 53, !6, i64 54, !6, i64 55, !17, i64 56, !17, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !11, i64 84, !11, i64 86, !11, i64 88, !11, i64 90, !11, i64 92, !11, i64 94, !11, i64 96, !11, i64 98, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !18, i64 120, !19, i64 128, !20, i64 136, !17, i64 144, !21, i64 152, !21, i64 162, !7, i64 172, !7, i64 176, !6, i64 180, !7, i64 184, !7, i64 188, !6, i64 192, !7, i64 196, !17, i64 200, !22, i64 208, !17, i64 216, !7, i64 224, !7, i64 228, !17, i64 232, !24, i64 240, !6, i64 248, !6, i64 249, !7, i64 252, !25, i64 256, !7, i64 264, !26, i64 272, !7, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !24, i64 304, !27, i64 312, !7, i64 344, !7, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !11, i64 376, !11, i64 378, !6, i64 380, !6, i64 381}
!29 = !{!28, !7, i64 8}
!30 = !{!28, !7, i64 312}
!31 = !{!28, !7, i64 316}
!32 = !{!28, !7, i64 320}
!33 = !{!28, !7, i64 324}
!34 = !{!28, !7, i64 328}
!35 = !{!28, !7, i64 332}
!36 = !{!28, !7, i64 336}
!37 = !{!28, !7, i64 340}
!38 = !{!"png_XYZ", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!39 = !{!38, !7, i64 0}
!40 = !{!38, !7, i64 4}
!41 = !{!38, !7, i64 8}
!42 = !{!38, !7, i64 12}
!43 = !{!38, !7, i64 16}
!44 = !{!38, !7, i64 20}
!45 = !{!38, !7, i64 24}
!46 = !{!38, !7, i64 28}
!47 = !{!38, !7, i64 32}
!48 = !{!7, !7, i64 0}
!49 = !{i64 0, i64 4, !48, i64 4, i64 4, !48, i64 8, i64 4, !48, i64 12, i64 4, !48, i64 16, i64 4, !48, i64 20, i64 4, !48, i64 24, i64 4, !48, i64 28, i64 4, !48}
!50 = !{!28, !7, i64 76}
!51 = !{!28, !7, i64 80}
!52 = !{!"p1 _ZTS13__jmp_buf_tag", !15, i64 0}
!53 = !{!"p1 _ZTS14internal_state", !15, i64 0}
!54 = !{!"z_stream_s", !17, i64 0, !7, i64 8, !14, i64 16, !17, i64 24, !7, i64 32, !14, i64 40, !17, i64 48, !53, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !7, i64 88, !14, i64 96, !14, i64 104}
!55 = !{!"p1 _ZTS22png_compression_buffer", !15, i64 0}
!56 = !{!"p2 short", !23, i64 0}
!57 = !{!"png_unknown_chunk_t", !6, i64 0, !17, i64 8, !14, i64 16, !6, i64 24}
!58 = !{!"png_struct_def", !6, i64 0, !15, i64 200, !52, i64 208, !14, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !6, i64 296, !6, i64 297, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !54, i64 320, !55, i64 432, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !14, i64 528, !7, i64 536, !7, i64 540, !7, i64 544, !17, i64 552, !17, i64 560, !17, i64 568, !17, i64 576, !14, i64 584, !7, i64 592, !7, i64 596, !16, i64 600, !11, i64 608, !7, i64 612, !11, i64 616, !6, i64 618, !6, i64 619, !6, i64 620, !6, i64 621, !6, i64 622, !6, i64 623, !6, i64 624, !6, i64 625, !6, i64 626, !6, i64 627, !6, i64 628, !6, i64 629, !6, i64 630, !6, i64 631, !6, i64 632, !11, i64 634, !6, i64 636, !7, i64 640, !21, i64 644, !21, i64 654, !15, i64 664, !7, i64 672, !7, i64 676, !27, i64 680, !7, i64 712, !7, i64 716, !7, i64 720, !7, i64 724, !7, i64 728, !17, i64 736, !56, i64 744, !17, i64 752, !17, i64 760, !56, i64 768, !56, i64 776, !20, i64 784, !20, i64 789, !17, i64 800, !21, i64 808, !15, i64 824, !15, i64 832, !15, i64 840, !15, i64 848, !15, i64 856, !17, i64 864, !17, i64 872, !17, i64 880, !17, i64 888, !7, i64 896, !7, i64 900, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !7, i64 936, !7, i64 940, !17, i64 944, !17, i64 952, !7, i64 960, !7, i64 964, !15, i64 968, !15, i64 976, !7, i64 984, !7, i64 988, !17, i64 992, !6, i64 1000, !6, i64 1001, !11, i64 1002, !11, i64 1004, !7, i64 1008, !6, i64 1012, !7, i64 1016, !7, i64 1020, !7, i64 1024, !7, i64 1028, !7, i64 1032, !15, i64 1040, !15, i64 1048, !7, i64 1056, !7, i64 1060, !15, i64 1064, !15, i64 1072, !15, i64 1080, !17, i64 1088, !17, i64 1096, !17, i64 1104, !17, i64 1112, !6, i64 1120, !7, i64 1124, !7, i64 1128, !7, i64 1132, !14, i64 1136, !57, i64 1144, !14, i64 1176, !17, i64 1184, !14, i64 1192, !7, i64 1200, !7, i64 1204, !17, i64 1208, !6, i64 1216, !7, i64 1248}
!59 = !{!58, !7, i64 300}
!60 = !{!28, !7, i64 252}
!61 = !{!28, !7, i64 344}
!62 = !{!28, !11, i64 32}
!63 = !{!28, !6, i64 36}
!64 = !{!28, !6, i64 37}
!65 = !{!28, !7, i64 352}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!58, !7, i64 1008}
!68 = !{!28, !7, i64 348}
!69 = !{!28, !25, i64 256}
!70 = !{!28, !7, i64 264}
!71 = !{!57, !6, i64 24}
!72 = distinct !{!72, !"png_set_cHRM_fixed"}
!73 = distinct !{!73, !72, !"png_set_cHRM_fixed: argument 1"}
!74 = distinct !{!74, !72, !"png_set_cHRM_fixed: argument 0"}
!75 = !{!73}
!76 = !{!74}
!77 = distinct !{!77, !"png_set_cHRM_XYZ_fixed"}
!78 = distinct !{!78, !77, !"png_set_cHRM_XYZ_fixed: argument 1"}
!79 = distinct !{!79, !77, !"png_set_cHRM_XYZ_fixed: argument 0"}
!80 = !{!78}
!81 = !{!79, !78}
!82 = !{!79}
!83 = !{!28, !6, i64 52}
!84 = !{!28, !6, i64 53}
!85 = !{!28, !6, i64 54}
!86 = !{!28, !6, i64 55}
!87 = distinct !{!87, !"png_set_cLLI_fixed"}
!88 = distinct !{!88, !87, !"png_set_cLLI_fixed: argument 1"}
!89 = distinct !{!89, !87, !"png_set_cLLI_fixed: argument 0"}
!90 = !{!88}
!91 = !{!89}
!92 = !{!28, !11, i64 96}
!93 = !{!28, !11, i64 98}
!94 = !{!28, !7, i64 100}
!95 = !{!28, !7, i64 104}
!96 = !{!28, !7, i64 196}
!97 = !{!28, !17, i64 200}
!98 = distinct !{!98, !"png_set_gAMA_fixed"}
!99 = distinct !{!99, !98, !"png_set_gAMA_fixed: argument 1"}
!100 = distinct !{!100, !98, !"png_set_gAMA_fixed: argument 0"}
!101 = !{!99}
!102 = !{!100}
!103 = !{!28, !22, i64 208}
!104 = !{!28, !7, i64 0}
!105 = !{!28, !7, i64 4}
!106 = !{!28, !6, i64 38}
!107 = !{!28, !6, i64 39}
!108 = !{!28, !6, i64 40}
!109 = !{!28, !6, i64 41}
!110 = !{!28, !6, i64 42}
!111 = !{!28, !14, i64 16}
end_hunk_0
