inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&self\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"'msg\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"'_\00", align 1
@switch.table._ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE = private unnamed_addr constant [3 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str], align 8
@switch.table._ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE.1 = private unnamed_addr constant [3 x i64] [i64 5, i64 5, i64 4], align 8
@switch.table._ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE = private unnamed_addr constant [3 x ptr] [ptr @.str.4, ptr @.str.4, ptr @.str.3], align 8
@switch.table._ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE.2 = private unnamed_addr constant [3 x i64] [i64 2, i64 2, i64 4], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6google8protobuf8compiler4rust12ViewReceiverENS2_12AccessorCaseE.1, i64 %i.c
  %switch.load2 = load i64, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.4.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.2, %bb.a ]
  %.sroa.0.0 = phi i64 [ %switch.load2, %switch.lookup ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i64, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, ptr } @_ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6google8protobuf8compiler4rust12ViewLifetimeENS2_12AccessorCaseE.2, i64 %i.c
  %switch.load2 = load i64, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.4.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.2, %bb.a ]
  %.sroa.0.0 = phi i64 [ %switch.load2, %switch.lookup ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i64, ptr } %.fca.1.insert
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
end_hunk_0
