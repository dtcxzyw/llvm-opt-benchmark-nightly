Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/terminal?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.CaDiCaL::Terminal" = type <{ ptr, i8, i8, i8, [5 x i8] }>

@_ZN7CaDiCaL4toutE = global %"class.CaDiCaL::Terminal" zeroinitializer, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@__dso_handle = external hidden global i8
@_ZN7CaDiCaL4terrE = global %"class.CaDiCaL::Terminal" zeroinitializer, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\1B[\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"?25h\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"0m\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_terminal.cpp, ptr null }]

@_ZN7CaDiCaL8TerminalC1EP8_IO_FILE = unnamed_addr alias void (ptr, ptr), ptr @_ZN7CaDiCaL8TerminalC2EP8_IO_FILE
@_ZN7CaDiCaL8TerminalD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7CaDiCaL8TerminalD2Ev

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8TerminalC2EP8_IO_FILE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(11) initializes((0, 11)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 0, ptr %i.a, align 2, !tbaa !13
  %i.b = tail call i32 @fileno(ptr noundef %1) #7
  %i.c = tail call i32 @isatty(i32 noundef %i.b) #7
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = zext i1 %i.d to i8                       ; 2 uses
  store i8 %i.f, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.f, ptr %i.g, align 1, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7CaDiCaL8Terminal12force_colorsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(11) initializes((8, 10)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.b, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7CaDiCaL8Terminal15force_no_colorsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(11) initializes((9, 10)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.a, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7CaDiCaL8Terminal19force_reset_on_exitEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(11) initializes((10, 11)) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 1, ptr %i.a, align 2, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL8Terminal5resetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(11) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !14, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !15, !range !16, !noundef !17
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN7CaDiCaL8Terminal23erase_until_end_of_lineEv.exit, label %_ZN7CaDiCaL8Terminal6normalEv.exit

_ZN7CaDiCaL8Terminal23erase_until_end_of_lineEv.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !12
  %fwrite.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.g) ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !12
  %fputc.i = tail call i32 @fputc(i32 75, ptr %i.h) ; 0 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !12
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  %.pre = load i8, ptr %i.d, align 1, !tbaa !15, !range !16 ; 2 uses
  %.pre6 = load i8, ptr %i.a, align 8, !range !16 ; 2 uses
  %i.k = trunc nuw i8 %.pre to i1
  %i.l = trunc nuw i8 %.pre6 to i1
  %or.cond.i.i1 = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i.i1, label %bb.c, label %_ZN7CaDiCaL8Terminal6cursorEb.exit

bb.c:                                             ; preds = %_ZN7CaDiCaL8Terminal23erase_until_end_of_lineEv.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %fwrite.i.i.i2 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.m) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !12
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.3, i64 4, i64 1, ptr %i.n) ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !12
  %i.p = tail call i32 @fflush(ptr noundef %i.o)  ; 0 uses
  %.pre7 = load i8, ptr %i.d, align 1, !tbaa !15, !range !16
  %.pre8 = load i8, ptr %i.a, align 8, !range !16
  br label %_ZN7CaDiCaL8Terminal6cursorEb.exit

_ZN7CaDiCaL8Terminal6cursorEb.exit:               ; preds = %_ZN7CaDiCaL8Terminal23erase_until_end_of_lineEv.exit, %bb.c
  %i.q = phi i8 [ %.pre6, %_ZN7CaDiCaL8Terminal23erase_until_end_of_lineEv.exit ], [ %.pre8, %bb.c ]
  %i.r = phi i8 [ %.pre, %_ZN7CaDiCaL8Terminal23erase_until_end_of_lineEv.exit ], [ %.pre7, %bb.c ]
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = trunc nuw i8 %i.q to i1
  %or.cond.i.i3 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i.i3, label %bb.d, label %_ZN7CaDiCaL8Terminal6normalEv.exit

bb.d:                                             ; preds = %_ZN7CaDiCaL8Terminal6cursorEb.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !12
  %fwrite.i.i.i4 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.u) ; 0 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !12
  %fwrite.i5 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %i.v) ; 0 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !12
  %i.x = tail call i32 @fflush(ptr noundef %i.w)  ; 0 uses
  br label %_ZN7CaDiCaL8Terminal6normalEv.exit

_ZN7CaDiCaL8Terminal6normalEv.exit:               ; preds = %bb.b, %_ZN7CaDiCaL8Terminal6cursorEb.exit, %bb.d
  %i.y = load ptr, ptr %0, align 8, !tbaa !12
  %i.z = tail call i32 @fflush(ptr noundef %i.y)  ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Terminal6normalEv.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL8Terminal7disableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(11) %0) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7CaDiCaL8Terminal5resetEv(ptr noundef nonnull align 8 dereferenceable(11) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.a, align 1, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL8TerminalD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(11) dereferenceable(11) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.b = load i8, ptr %i.a, align 2, !tbaa !13, !range !16, !noundef !17
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Terminal5resetEv(ptr noundef nonnull align 8 dereferenceable(11) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_terminal.cpp() #6 section ".text.startup" {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !18
  tail call void @_ZN7CaDiCaL8TerminalC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(11) @_ZN7CaDiCaL4toutE, ptr noundef %i.a)
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7CaDiCaL8TerminalD1Ev, ptr nonnull @_ZN7CaDiCaL4toutE, ptr nonnull @__dso_handle) #7 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !18
  tail call void @_ZN7CaDiCaL8TerminalC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(11) @_ZN7CaDiCaL4terrE, ptr noundef %i.c)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7CaDiCaL8TerminalD1Ev, ptr nonnull @_ZN7CaDiCaL4terrE, ptr nonnull @__dso_handle) #7 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!10 = !{!"bool", !4, i64 0}
!11 = !{!"_ZTSN7CaDiCaL8TerminalE", !9, i64 0, !10, i64 8, !10, i64 9, !10, i64 10}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !10, i64 10}
!14 = !{!11, !10, i64 8}
!15 = !{!11, !10, i64 9}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!9, !9, i64 0}
end_hunk_0
