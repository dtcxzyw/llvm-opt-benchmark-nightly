Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_testlimitedcapi?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.PyMethodDef = type { ptr, ptr, i32, ptr }

@_testlimitedcapimodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr null, i64 0, ptr @TestMethods, ptr null, ptr null, ptr null, ptr null }, align 8, !guid !10
@.str = private unnamed_addr constant [17 x i8] c"_testlimitedcapi\00", align 1, !guid !11
@TestMethods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16, !guid !12

; Function Attrs: nounwind uwtable
define ptr @PyInit__testlimitedcapi() local_unnamed_addr #0 !guid !13 {
bb.a:
  %i.a = tail call ptr @PyModule_Create2(ptr noundef nonnull @_testlimitedcapimodule, i32 noundef 3) #2 ; 24 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyTestLimitedCAPI_Init_Abstract(ptr noundef nonnull %i.a) #2
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @_PyTestLimitedCAPI_Init_ByteArray(ptr noundef nonnull %i.a) #2
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @_PyTestLimitedCAPI_Init_Bytes(ptr noundef nonnull %i.a) #2
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @_PyTestLimitedCAPI_Init_Codec(ptr noundef nonnull %i.a) #2
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @_PyTestLimitedCAPI_Init_Complex(ptr noundef nonnull %i.a) #2
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @_PyTestLimitedCAPI_Init_Dict(ptr noundef nonnull %i.a) #2
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_PyTestLimitedCAPI_Init_Eval(ptr noundef nonnull %i.a) #2
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @_PyTestLimitedCAPI_Init_Float(ptr noundef nonnull %i.a) #2
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @_PyTestLimitedCAPI_Init_HeaptypeRelative(ptr noundef nonnull %i.a) #2
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @_PyTestLimitedCAPI_Init_Import(ptr noundef nonnull %i.a) #2
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @_PyTestLimitedCAPI_Init_List(ptr noundef nonnull %i.a) #2
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @_PyTestLimitedCAPI_Init_Long(ptr noundef nonnull %i.a) #2
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @_PyTestLimitedCAPI_Init_Object(ptr noundef nonnull %i.a) #2
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 @_PyTestLimitedCAPI_Init_PyOS(ptr noundef nonnull %i.a) #2
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @_PyTestLimitedCAPI_Init_Set(ptr noundef nonnull %i.a) #2
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i32 @_PyTestLimitedCAPI_Init_Sys(ptr noundef nonnull %i.a) #2
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = tail call i32 @_PyTestLimitedCAPI_Init_ThreadState(ptr noundef nonnull %i.a) #2
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call i32 @_PyTestLimitedCAPI_Init_Tuple(ptr noundef nonnull %i.a) #2
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call i32 @_PyTestLimitedCAPI_Init_Unicode(ptr noundef nonnull %i.a) #2
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = tail call i32 @_PyTestLimitedCAPI_Init_VectorcallLimited(ptr noundef nonnull %i.a) #2
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call i32 @_PyTestLimitedCAPI_Init_Version(ptr noundef nonnull %i.a) #2
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = tail call i32 @_PyTestLimitedCAPI_Init_File(ptr noundef nonnull %i.a) #2
  %i.at = icmp slt i32 %i.as, 0
  %. = select i1 %i.at, ptr null, ptr %i.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.v ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.u ], [ %., %bb.w ]
  ret ptr %.0
}

declare ptr @PyModule_Create2(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Abstract(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_ByteArray(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Bytes(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Codec(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Complex(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Dict(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Eval(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Float(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_HeaptypeRelative(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Import(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_List(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Long(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Object(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_PyOS(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Set(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Sys(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_ThreadState(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Tuple(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Unicode(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_VectorcallLimited(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_Version(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTestLimitedCAPI_Init_File(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i64 -4407461654273086951}
!11 = !{i64 7898442717085763957}
!12 = !{i64 -1766875629293023921}
!13 = !{i64 8209257459634887238}
end_hunk_0
