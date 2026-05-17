inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@fpconv_strtod:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i8, ptr @locale_decimal_point, align 1, !tbaa !8
  %i.d = icmp eq i8 %i.c, 46
  br i1 %i.d, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = tail call double @strtod(ptr noundef %0, ptr noundef %1) #11
  br label %bb.l

.preheader:                                       ; preds = %bb.a, %valid_number_character.exit.thread.i
  %.0.i = phi ptr [ %i.j, %valid_number_character.exit.thread.i ], [ %0, %bb.a ] ; 3 uses
  %i.f = load i8, ptr %.0.i, align 1, !tbaa !8    ; 3 uses
  %i.g = add i8 %i.f, -48
  %or.cond.i.i = icmp ult i8 %i.g, 10
  br i1 %or.cond.i.i, label %valid_number_character.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.preheader
  switch i8 %i.f, label %valid_number_character.exit.i [
    i8 46, label %valid_number_character.exit.thread.i
    i8 45, label %valid_number_character.exit.thread.i
    i8 43, label %valid_number_character.exit.thread.i
  ]

valid_number_character.exit.i:                    ; preds = %bb.c
  %i.h = or i8 %i.f, 32
  %i.i = add i8 %i.h, -122
  %or.cond11.i.i = icmp ult i8 %i.i, -25
  br i1 %or.cond11.i.i, label %strtod_buffer_size.exit, label %valid_number_character.exit.thread.i

valid_number_character.exit.thread.i:             ; preds = %valid_number_character.exit.i, %bb.c, %bb.c, %bb.c, %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %.preheader, !llvm.loop !9

strtod_buffer_size.exit:                          ; preds = %valid_number_character.exit.i
  %i.k = ptrtoint ptr %.0.i to i64
  %i.l = ptrtoint ptr %0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %strtod_buffer_size.exit
  store ptr %0, ptr %1, align 8, !tbaa !11
  br label %bb.l

bb.e:                                             ; preds = %strtod_buffer_size.exit
  %i.o = icmp sgt i32 %i.n, 31                    ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %i.m, 1
  %i.q = and i64 %i.p, 4294967295
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #12 ; 2 uses
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.t = tail call i64 @fwrite(ptr nonnull @.str, i64 13, i64 1, ptr %i.s) #13 ; 0 uses
  tail call void @abort() #14
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  %.024 = phi ptr [ %i.r, %bb.f ], [ %i.a, %bb.e ] ; 6 uses
  %sext = shl i64 %i.m, 32
  %i.u = ashr exact i64 %sext, 32                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.024, ptr align 1 %0, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.024, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !8
  %i.w = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.024, i32 noundef 46) #15 ; 2 uses
  %.not29 = icmp eq ptr %i.w, null
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i8, ptr @locale_decimal_point, align 1, !tbaa !8
  store i8 %i.x, ptr %i.w, align 1, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = call double @strtod(ptr noundef nonnull %.024, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %.024 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  store ptr %i.ad, ptr %1, align 8, !tbaa !11
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef nonnull %.024) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.d, %bb.b
  %.0 = phi double [ %i.e, %bb.b ], [ 0.000000e+00, %bb.d ], [ %i.y, %bb.k ], [ %i.y, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret double %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpconv_g_fmt(ptr noundef writeonly captures(none) %0, double noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [6 x i8], align 1                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = add i32 %2, -1
  %or.cond.i = icmp ult i32 %i.c, 14
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.0.i.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 157, ptr noundef nonnull @__PRETTY_FUNCTION__.set_number_format) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  store i8 37, ptr %i.b, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 46, ptr %i.d, align 1, !tbaa !8
  %.not.i = icmp samesign ult i32 %2, 10          ; 2 uses
  br i1 %.not.i, label %set_number_format.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 49, ptr %.0.i.sroa.gep12, align 1, !tbaa !8
  br label %set_number_format.exit

set_number_format.exit:                           ; preds = %bb.c, %bb.d
  %.0.i.sroa.phi = phi ptr [ %.0.i.sroa.gep, %bb.d ], [ %.0.i.sroa.gep12, %bb.c ] ; 3 uses
  %.urem.i = add nuw nsw i32 %2, 246
  %i.e = select i1 %.not.i, i32 %2, i32 %.urem.i
  %i.f = trunc i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, 48
  store i8 %i.g, ptr %.0.i.sroa.phi, align 1, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i.sroa.phi, i64 1
  store i8 103, ptr %i.h, align 1, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.sroa.phi, i64 2
  store i8 0, ptr %i.i, align 1, !tbaa !8
  %i.j = load i8, ptr @locale_decimal_point, align 1, !tbaa !8
  %i.k = icmp eq i8 %i.j, 46
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %set_number_format.exit
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %0, i64 noundef 32, ptr noundef nonnull %i.b, double noundef %1) #11
  br label %.loopexit

bb.f:                                             ; preds = %set_number_format.exit
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull %i.b, double noundef %1) #11
  %i.n = load i8, ptr @locale_decimal_point, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.010 = phi ptr [ %0, %bb.f ], [ %i.q, %bb.g ]  ; 2 uses
  %.0 = phi ptr [ %i.a, %bb.f ], [ %i.r, %bb.g ]  ; 2 uses
  %i.o = load i8, ptr %.0, align 1, !tbaa !8      ; 3 uses
  %i.p = icmp eq i8 %i.o, %i.n
  %spec.select = select i1 %i.p, i8 46, i8 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.010, i64 1
  store i8 %spec.select, ptr %.010, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !16

.loopexit:                                        ; preds = %bb.g, %bb.e
  %.09 = phi i32 [ %i.l, %bb.e ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.09
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define dso_local void @fpconv_init() local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 8, ptr noundef nonnull @.str.3, double noundef 5.000000e-01) #11 ; 0 uses
  %0 = load i8, ptr %i.a, align 1, !tbaa !8
  %1 = icmp ne i8 %0, 48
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %3 = load i8, ptr %2, align 1
  %4 = icmp ne i8 %3, 53
  %or.cond.i = select i1 %1, i1 true, i1 %4
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %6 = load i8, ptr %5, align 1
  %7 = icmp ne i8 %6, 0
  %or.cond7.i = select i1 %or.cond.i, i1 true, i1 %7
  br i1 %or.cond7.i, label %bb.b, label %fpconv_update_locale.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.4, i64 45, i64 1, ptr %i.c) #13 ; 0 uses
  tail call void @abort() #14
  unreachable

fpconv_update_locale.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  store i8 %i.f, ptr @locale_decimal_point, align 1, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!16 = distinct !{!16, !10}
end_hunk_0
