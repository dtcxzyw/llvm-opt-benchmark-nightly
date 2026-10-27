Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_delta_binding?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }

@EI_delta_int.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, [4 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [79 x i8] c"Check `(const char*)(const void*)out == (const char*)0' failed: Allocation: %s\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/delta/encode_delta_binding.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"EI_delta_int\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"(const char*)(const void*)out\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EI_delta_int.__zl_static_error_info.9 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 31, [4 x i8] zeroinitializer }, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EI_delta_int.__zl_static_error_info.12 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 35, [4 x i8] zeroinitializer }, align 8
@EI_delta_int.__zl_static_error_info.13 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 43, [4 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define { i32, i64 } @EI_delta_int(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 8 uses
  %i.a = alloca [8 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call ptr @ZL_Encoder_getOperationContext(ptr noundef %0) #6
  store ptr %i.c, ptr %3, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.e = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.d) #5 ; 5 uses
  %i.f = tail call i64 @ZL_Data_numElts(ptr noundef %i.d) #5 ; 6 uses
  %i.g = tail call ptr @ZL_Encoder_createTypedStream(ptr noundef %0, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.e) #5 ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.b, !prof !20

.thread:                                          ; preds = %bb.a
  %i.h = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @EI_delta_int.__zl_static_error_info, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 25, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #5 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.h, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.i, ptr %i.j, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #5
  %i.k = ptrtoint ptr %i.j to i64
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @ZL_Data_rPtr(ptr noundef %i.d) #5 ; 2 uses
  %i.m = tail call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.g) #5 ; 3 uses
  %i.n = icmp eq i64 %i.f, 0
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.g, i64 noundef 0) #5 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0        ; 2 uses
  %.not71 = icmp eq i32 %i.p, 0
  br i1 %.not71, label %bb.j, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { i32, i64 } %i.o, 1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.p, ptr %i.r, ptr nonnull @EI_delta_int.__zl_static_error_info.9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 31, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.s, 0
  %i.u = extractvalue { i32, ptr } %i.s, 1
  %i.v = ptrtoint ptr %i.u to i64
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.w = tail call i32 @ZL_Encoder_getCParam(ptr noundef %0, i32 noundef 4) #5
  %i.x = icmp slt i32 %i.w, 13
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.e
  tail call void @ZS_deltaEncode(ptr noundef %i.m, ptr noundef %i.y, ptr noundef %i.l, i64 noundef %i.f, i64 noundef %i.e) #5
  %i.z = tail call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.g, i64 noundef %i.f) #5 ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0       ; 2 uses
  %.not70 = icmp eq i32 %i.aa, 0
  br i1 %.not70, label %bb.j, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ab = extractvalue { i32, i64 } %i.z, 1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.aa, ptr %i.ac, ptr nonnull @EI_delta_int.__zl_static_error_info.12, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 35, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %i.ae = extractvalue { i32, ptr } %i.ad, 0
  %i.af = extractvalue { i32, ptr } %i.ad, 1
  %i.ag = ptrtoint ptr %i.af to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @ZS_deltaEncode(ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %i.l, i64 noundef %i.f, i64 noundef %i.e) #5
  call void @ZL_Encoder_sendCodecHeader(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.e) #5
  %i.ah = add i64 %i.f, -1
  %i.ai = call { i32, i64 } @ZL_Data_commit(ptr noundef nonnull %i.g, i64 noundef %i.ah) #5 ; 2 uses
  %i.aj = extractvalue { i32, i64 } %i.ai, 0      ; 2 uses
  %.not69 = icmp eq i32 %i.aj, 0
  br i1 %.not69, label %.thread74, label %bb.i, !prof !21

.thread74:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = extractvalue { i32, i64 } %i.ai, 1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %3, i32 %i.aj, ptr %i.al, ptr nonnull @EI_delta_int.__zl_static_error_info.13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 43, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8) #5 ; 2 uses
  %i.an = extractvalue { i32, ptr } %i.am, 0
  %i.ao = extractvalue { i32, ptr } %i.am, 1
  %i.ap = ptrtoint ptr %i.ao to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %.thread74, %bb.i, %.thread, %bb.d, %bb.g
  %.sroa.054.3 = phi i32 [ %i.i, %.thread ], [ %i.t, %bb.d ], [ %i.an, %bb.i ], [ %i.ae, %bb.g ], [ 0, %.thread74 ], [ 0, %bb.f ], [ 0, %bb.c ]
  %.sroa.22.3 = phi i64 [ %i.k, %.thread ], [ %i.v, %bb.d ], [ %i.ap, %bb.i ], [ %i.ag, %bb.g ], [ 1, %.thread74 ], [ 1, %bb.f ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.054.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.22.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_Encoder_getOperationContext(ptr noundef) local_unnamed_addr #3

declare ptr @ZL_Encoder_createTypedStream(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @ZL_Encoder_getCParam(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @ZS_deltaEncode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @ZL_Encoder_sendCodecHeader(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @ZL_Data_eltWidth(ptr noundef) local_unnamed_addr #4

declare i64 @ZL_Data_numElts(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_rPtr(ptr noundef) local_unnamed_addr #4

declare ptr @ZL_Data_wPtr(ptr noundef) local_unnamed_addr #4

declare { i32, i64 } @ZL_Data_commit(ptr noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS21ZL_OperationContext_s", !11, i64 0}
!13 = !{!"", !8, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"", !13, i64 0, !13, i64 4, !8, i64 8, !14, i64 16}
!16 = !{!"", !12, i64 0, !15, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!"p1 _ZTS10ZL_Input_s", !11, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
