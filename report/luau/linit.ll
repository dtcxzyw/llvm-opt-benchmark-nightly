Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/linit?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Luau::FValue" = type <{ i8, i8, [6 x i8], ptr, ptr, i32, [4 x i8] }>
%struct.luaL_Reg = type { ptr, ptr }

@_ZN5FFlag18LuauIntegerLibraryE = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@_ZL7lualibs = internal unnamed_addr constant [13 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.1, ptr @_Z12luaopen_baseP9lua_State }, %struct.luaL_Reg { ptr @.str.3, ptr @_Z17luaopen_coroutineP9lua_State }, %struct.luaL_Reg { ptr @.str.4, ptr @_Z13luaopen_tableP9lua_State }, %struct.luaL_Reg { ptr @.str.5, ptr @_Z10luaopen_osP9lua_State }, %struct.luaL_Reg { ptr @.str.6, ptr @_Z14luaopen_stringP9lua_State }, %struct.luaL_Reg { ptr @.str.7, ptr @_Z12luaopen_mathP9lua_State }, %struct.luaL_Reg { ptr @.str.8, ptr @_Z13luaopen_debugP9lua_State }, %struct.luaL_Reg { ptr @.str.9, ptr @_Z12luaopen_utf8P9lua_State }, %struct.luaL_Reg { ptr @.str.10, ptr @_Z13luaopen_bit32P9lua_State }, %struct.luaL_Reg { ptr @.str.11, ptr @_Z14luaopen_bufferP9lua_State }, %struct.luaL_Reg { ptr @.str.12, ptr @_Z14luaopen_vectorP9lua_State }, %struct.luaL_Reg { ptr @.str.13, ptr @_Z15luaopen_integerP9lua_State }, %struct.luaL_Reg zeroinitializer], align 16
@_ZL17lualibs_NOINTEGER = internal unnamed_addr constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { ptr @.str.1, ptr @_Z12luaopen_baseP9lua_State }, %struct.luaL_Reg { ptr @.str.3, ptr @_Z17luaopen_coroutineP9lua_State }, %struct.luaL_Reg { ptr @.str.4, ptr @_Z13luaopen_tableP9lua_State }, %struct.luaL_Reg { ptr @.str.5, ptr @_Z10luaopen_osP9lua_State }, %struct.luaL_Reg { ptr @.str.6, ptr @_Z14luaopen_stringP9lua_State }, %struct.luaL_Reg { ptr @.str.7, ptr @_Z12luaopen_mathP9lua_State }, %struct.luaL_Reg { ptr @.str.8, ptr @_Z13luaopen_debugP9lua_State }, %struct.luaL_Reg { ptr @.str.9, ptr @_Z12luaopen_utf8P9lua_State }, %struct.luaL_Reg { ptr @.str.10, ptr @_Z13luaopen_bit32P9lua_State }, %struct.luaL_Reg { ptr @.str.11, ptr @_Z14luaopen_bufferP9lua_State }, %struct.luaL_Reg { ptr @.str.12, ptr @_Z14luaopen_vectorP9lua_State }, %struct.luaL_Reg zeroinitializer], align 16
@_ZN5FFlag34DebugLuauUserDefinedClassesRuntimeE = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@.str = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bit32\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"integer\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13luaL_openlibsP9lua_State(ptr noundef %0) local_unnamed_addr #0 {
.lr.ph.preheader:
  %i.a = load i8, ptr @_ZN5FFlag18LuauIntegerLibraryE, align 8, !tbaa !16, !range !17, !noundef !18
  %i.b = trunc nuw i8 %i.a to i1
  %_ZL7lualibs._ZL17lualibs_NOINTEGER = select i1 %i.b, ptr @_ZL7lualibs, ptr @_ZL17lualibs_NOINTEGER
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.c = phi ptr [ %i.g, %.lr.ph ], [ @_Z12luaopen_baseP9lua_State, %.lr.ph.preheader ]
  %.112 = phi ptr [ %i.e, %.lr.ph ], [ %_ZL7lualibs._ZL17lualibs_NOINTEGER, %.lr.ph.preheader ] ; 3 uses
  tail call void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 0, ptr noundef null)
  %i.d = load ptr, ptr %.112, align 8, !tbaa !20
  tail call void @_Z14lua_pushstringP9lua_StatePKc(ptr noundef %0, ptr noundef %i.d)
  tail call void @_Z8lua_callP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %.112, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.112, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph
  %i.h = load i8, ptr @_ZN5FFlag34DebugLuauUserDefinedClassesRuntimeE, align 8, !tbaa !16, !range !17, !noundef !18
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  tail call void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef %0, ptr noundef nonnull @_Z13luaopen_classP9lua_State, ptr noundef null, i32 noundef 0, ptr noundef null)
  tail call void @_Z14lua_pushstringP9lua_StatePKc(ptr noundef %0, ptr noundef nonnull @.str)
  tail call void @_Z8lua_callP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z14lua_pushstringP9lua_StatePKc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z8lua_callP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z13luaopen_classP9lua_State(ptr noundef) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12luaL_sandboxP9lua_State(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  %i.a = tail call noundef i32 @_Z8lua_nextP9lua_Statei(ptr noundef %0, i32 noundef -10002)
  %.not13 = icmp eq i32 %i.a, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = tail call noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef %0, i32 noundef -1)
  %i.c = icmp eq i32 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef %0, i32 noundef -1, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  tail call void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef -2)
  %i.d = tail call noundef i32 @_Z8lua_nextP9lua_Statei(ptr noundef %0, i32 noundef -10002)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 0)
  %i.e = tail call noundef i32 @_Z16lua_getmetatableP9lua_Statei(ptr noundef %0, i32 noundef -1)
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  tail call void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef %0, i32 noundef -1, i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sink = phi i32 [ -3, %bb.d ], [ -2, %._crit_edge ]
  tail call void @_Z10lua_settopP9lua_Statei(ptr noundef %0, i32 noundef %.sink)
  tail call void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef %0, i32 noundef -10002, i32 noundef 1)
  tail call void @_Z14lua_setsafeenvP9lua_Stateii(ptr noundef %0, i32 noundef -10002, i32 noundef 1)
  ret void
}

declare void @_Z11lua_pushnilP9lua_State(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z8lua_nextP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z8lua_typeP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z10lua_settopP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z16lua_getmetatableP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z14lua_setsafeenvP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z18luaL_sandboxthreadP9lua_State(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z15lua_createtableP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  tail call void @_Z15lua_createtableP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  tail call void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %0, i32 noundef -10002)
  tail call void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.2)
  tail call void @_Z15lua_setreadonlyP9lua_Stateii(ptr noundef %0, i32 noundef -1, i32 noundef 1)
  %i.a = tail call noundef i32 @_Z16lua_setmetatableP9lua_Statei(ptr noundef %0, i32 noundef -2) ; 0 uses
  tail call void @_Z11lua_replaceP9lua_Statei(ptr noundef %0, i32 noundef -10002)
  tail call void @_Z14lua_setsafeenvP9lua_Stateii(ptr noundef %0, i32 noundef -10002, i32 noundef 1)
  ret void
}

declare void @_Z15lua_createtableP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z13lua_pushvalueP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z16lua_setmetatableP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z11lua_replaceP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z13luaL_newstatev() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z12lua_newstatePFPvS_S_mmES_(ptr noundef nonnull @_ZL7l_allocPvS_mm, ptr noundef null)
  ret ptr %i.a
}

declare noundef ptr @_Z12lua_newstatePFPvS_S_mmES_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @_ZL7l_allocPvS_mm(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1, i64 %2, i64 noundef %3) #2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %1) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @realloc(ptr noundef %1, i64 noundef %3) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

declare noundef i32 @_Z12luaopen_baseP9lua_State(ptr noundef) #1

declare noundef i32 @_Z17luaopen_coroutineP9lua_State(ptr noundef) #1

declare noundef i32 @_Z13luaopen_tableP9lua_State(ptr noundef) #1

declare noundef i32 @_Z10luaopen_osP9lua_State(ptr noundef) #1

declare noundef i32 @_Z14luaopen_stringP9lua_State(ptr noundef) #1

declare noundef i32 @_Z12luaopen_mathP9lua_State(ptr noundef) #1

declare noundef i32 @_Z13luaopen_debugP9lua_State(ptr noundef) #1

declare noundef i32 @_Z12luaopen_utf8P9lua_State(ptr noundef) #1

declare noundef i32 @_Z13luaopen_bit32P9lua_State(ptr noundef) #1

declare noundef i32 @_Z14luaopen_bufferP9lua_State(ptr noundef) #1

declare noundef i32 @_Z14luaopen_vectorP9lua_State(ptr noundef) #1

declare noundef i32 @_Z15luaopen_integerP9lua_State(ptr noundef) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTSN4Luau6FValueIbEE", !12, i64 0}
!15 = !{!"_ZTSN4Luau6FValueIbEE", !11, i64 0, !11, i64 1, !13, i64 8, !14, i64 16, !6, i64 24}
!16 = !{!15, !11, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"_ZTS8luaL_Reg", !13, i64 0, !12, i64 8}
!20 = !{!19, !13, i64 0}
!21 = !{!19, !12, i64 8}
!22 = distinct !{!22, !9}
end_hunk_0
