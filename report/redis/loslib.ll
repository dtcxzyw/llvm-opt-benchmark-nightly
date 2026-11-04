Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/loslib?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"os\00", align 1, !guid !8
@sandbox_syslib = internal constant [2 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.1, ptr @os_clock }, %struct.luaL_Reg zeroinitializer], align 16, !guid !9
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1, !guid !10

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_os(ptr noundef %0) local_unnamed_addr #0 !guid !11 {
bb.a:
  tail call void @luaL_register(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @sandbox_syslib) #3
  ret i32 1
}

declare void @luaL_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @os_clock(ptr noundef %0) #0 !guid !12 {
bb.a:
  %i.a = tail call i64 @clock() #3
  %i.b = sitofp i64 %i.a to double
  %i.c = fdiv double %i.b, 1.000000e+06
  tail call void @lua_pushnumber(ptr noundef %0, double noundef %i.c) #3
  ret i32 1
}

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -2172497856296043725}
!9 = !{i64 572581006224740089}
!10 = !{i64 -4239372510841558510}
!11 = !{i64 2462159513896090339}
!12 = !{i64 1080806428265341423}
end_hunk_0
