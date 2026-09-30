Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/i2c?download=true
inline.NumInlined: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"../tests/qtest/libqos/i2c.c\00", align 1
@__func__.add_qi2c_address = private unnamed_addr constant [17 x i8] c"add_qi2c_address\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"addr\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qi2c_send(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i8, ptr %i.d, align 8
  tail call void %i.c(ptr noundef nonnull %i.b, i8 noundef zeroext %i.e, ptr noundef %1, i16 noundef zeroext %2) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qi2c_recv(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i8, ptr %i.e, align 8
  tail call void %i.d(ptr noundef %i.b, i8 noundef zeroext %i.f, ptr noundef %1, i16 noundef zeroext %2) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @i2c_read_block(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  call void %i.d(ptr noundef nonnull %i.c, i8 noundef zeroext %i.f, ptr noundef nonnull %i.a, i16 noundef zeroext 1) #6, !inline_history !7
  %i.g = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i8, ptr %i.e, align 8
  call void %i.i(ptr noundef %i.g, i8 noundef zeroext %i.j, ptr noundef %2, i16 noundef zeroext %3) #6, !inline_history !12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @i2c_write_block(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, ptr nofree noundef readonly captures(none) %2, i16 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i16 %3 to i32
  %i.b = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias ptr @g_malloc(i64 noundef %i.c) #7 ; 4 uses
  store i8 %1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = zext i16 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.e, ptr noundef nonnull align 1 %2, i64 noundef range(i64 0, 65536) %i.f, i1 noundef false) #6
  %i.g = trunc i32 %i.b to i16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i8, ptr %i.k, align 8
  tail call void %i.j(ptr noundef nonnull %i.i, i8 noundef zeroext %i.l, ptr noundef nonnull %i.d, i16 noundef zeroext %i.g) #6, !inline_history !7
  tail call void @g_free(ptr noundef nonnull %i.d) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i8 @i2c_get8(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i8 0, ptr %i.b, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  call void %i.e(ptr noundef nonnull %i.d, i8 noundef zeroext %i.g, ptr noundef nonnull %i.a, i16 noundef zeroext 1) #6, !inline_history !9
  %i.h = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i8, ptr %i.f, align 8
  call void %i.j(ptr noundef %i.h, i8 noundef zeroext %i.k, ptr noundef nonnull %i.b, i16 noundef zeroext 1) #6, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = load i8, ptr %i.b, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i8 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i16 @i2c_get16(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i16 0, ptr %i.b, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %1, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  call void %i.e(ptr noundef nonnull %i.d, i8 noundef zeroext %i.g, ptr noundef nonnull %i.a, i16 noundef zeroext 1) #6, !inline_history !9
  %i.h = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i8, ptr %i.f, align 8
  call void %i.j(ptr noundef %i.h, i8 noundef zeroext %i.k, ptr noundef nonnull %i.b, i16 noundef zeroext 2) #6, !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %2 = load i8, ptr %i.b, align 2
  %3 = zext i8 %2 to i16
  %4 = shl nuw i16 %3, 8
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i16
  %8 = or disjoint i16 %4, %7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i16 %8
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @i2c_set8(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(2) ptr @g_malloc(i64 noundef 2) #7 ; 4 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %2, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %i.f, align 8
  tail call void %i.e(ptr noundef nonnull %i.d, i8 noundef zeroext %i.g, ptr noundef nonnull %i.a, i16 noundef zeroext 2) #6, !inline_history !11
  tail call void @g_free(ptr noundef nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @i2c_set16(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(3) ptr @g_malloc(i64 noundef 3) #7 ; 4 uses
  store i8 %1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.0.0.insert.insert = tail call i16 @llvm.bswap.i16(i16 %2)
  store i16 %.sroa.0.0.insert.insert, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %i.f, align 8
  tail call void %i.e(ptr noundef nonnull %i.d, i8 noundef zeroext %i.g, ptr noundef nonnull %i.a, i16 noundef zeroext 3) #6, !inline_history !11
  tail call void @g_free(ptr noundef nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias noundef ptr @i2c_device_create(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @g_malloc0(i64 noundef 56) #7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %0, ptr %i.b, align 8
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %2, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 %i.c, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @add_qi2c_address(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 81, ptr noundef nonnull @__func__.add_qi2c_address, ptr noundef nonnull @.str.1) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{ptr @qi2c_send}
!8 = !{!"auto-init"}
!9 = !{ptr @i2c_read_block, ptr @qi2c_send}
!10 = !{ptr @i2c_read_block, ptr @qi2c_recv}
!11 = !{ptr @i2c_write_block, ptr @qi2c_send}
!12 = !{ptr @qi2c_recv}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
