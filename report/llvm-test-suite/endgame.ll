begin_hunk_0
@.str.5 = private unnamed_addr constant [62 x i8] c"\0AFirst, you should enter the dead pieces (blank and white) to\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Dead piece? \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@p = external local_unnamed_addr global [19 x [19 x i8]], align 16
@mymove = external local_unnamed_addr global i32, align 4
@mk = external local_unnamed_addr global i32, align 4
end_hunk_0
begin_hunk_1
; Function Attrs: nounwind uwtable
define dso_local void @endgame() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 18 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %i.c = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
end_hunk_1
begin_hunk_2
  %puts20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.g = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) ; 0 uses
  %0 = load i32, ptr %i.a, align 1
  %1 = xor i32 %0, 1886352499
  %2 = getelementptr i8, ptr %i.a, i64 4
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = or i32 %1, %4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %.not35 = icmp eq i32 %7, 0
  br i1 %.not35, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.h = call i32 @getij(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.i = load i32, ptr %i.b, align 4, !tbaa !4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [19 x i8], ptr @p, i64 %i.j
end_hunk_2
begin_hunk_3
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  call void @showboard() #6
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.x = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) ; 0 uses
  %8 = load i32, ptr %i.a, align 1
  %9 = xor i32 %8, 1886352499
  %10 = getelementptr i8, ptr %i.a, i64 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %9, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !9

.critedge:                                        ; preds = %bb.c, %bb.a
end_hunk_3
begin_hunk_4
  %puts23 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %i.aa = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) ; 0 uses
  %16 = load i32, ptr %i.a, align 1
  %17 = xor i32 %16, 1886352499
  %18 = getelementptr i8, ptr %i.a, i64 4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %17, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %.not2537 = icmp eq i32 %23, 0
  br i1 %.not2537, label %.critedge31.preheader, label %.lr.ph38

.critedge31.preheader:                            ; preds = %.lr.ph38, %.critedge
end_hunk_4
begin_hunk_5
  br label %.preheader33

.lr.ph38:                                         ; preds = %.critedge, %.lr.ph38
  %i.ab = call i32 @getij(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.ac = load i32, ptr @umove, align 4, !tbaa !4
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !4
end_hunk_5
begin_hunk_6
  store i8 %i.ad, ptr %i.aj, align 1, !tbaa !8
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15) ; 0 uses
  %i.al = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) ; 0 uses
  %i.am = call i32 @getij(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.an = load i32, ptr @mymove, align 4, !tbaa !4
  %i.ao = trunc i32 %i.an to i8
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !4
end_hunk_6
begin_hunk_7
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 %i.at
  store i8 %i.ao, ptr %i.au, align 1, !tbaa !8
  call void @showboard() #6
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %i.aw = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a) ; 0 uses
  %24 = load i32, ptr %i.a, align 1
  %25 = xor i32 %24, 1886352499
  %26 = getelementptr i8, ptr %i.a, i64 4
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %.not25 = icmp eq i32 %31, 0
  br i1 %.not25, label %.critedge31.preheader, label %.lr.ph38, !llvm.loop !11

.preheader33:                                     ; preds = %.critedge31.preheader, %.critedge31
end_hunk_7
begin_hunk_8
  br i1 %i.aeu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aev = call i32 @findcolor(i32 noundef %i.aeo, i32 noundef %storemerge2939) #6
  %i.aew = trunc i32 %i.aev to i8
  %i.aex = load i32, ptr %i.b, align 4, !tbaa !4  ; 2 uses
  %i.aey = sext i32 %i.aex to i64
end_hunk_8
begin_hunk_9
  %op.rdx98.2 = add i32 %op.rdx97.2, %op.rdx98.1
  store i32 19, ptr %i.b, align 4, !tbaa !4
  store i32 19, ptr %i.c, align 4, !tbaa !4
  call void @showboard() #6
  %i.aiv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %op.rdx98.2) ; 0 uses
  %i.aiw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %op.rdx102.2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

end_hunk_9
begin_hunk_10
; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
end_hunk_10
