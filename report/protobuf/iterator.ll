inline.NumInlined: 28
inline.NumDeleted: 24
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %i.b = getelementptr i8, ptr %1, i64 10
  %.val = load i16, ptr %i.b, align 2, !tbaa !7
  %i.c = zext i16 %.val to i64                    ; 2 uses
  %i.d = load i64, ptr %4, align 8, !tbaa !9
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.k
  %.sroa.10.062 = phi i64 [ %i.bg, %bb.k ], [ %i.e, %bb.a ] ; 3 uses
  %.val26 = load ptr, ptr %1, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %.val26, i64 %.sroa.10.062 ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val27 = load i16, ptr %i.h, align 4, !tbaa !14
  %i.i = zext i16 %.val27 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 8 uses
  %i.k = getelementptr i8, ptr %i.g, i64 11
  %.val28 = load i8, ptr %i.k, align 1, !tbaa !16 ; 4 uses
  %i.l = lshr i8 %.val28, 6                       ; 2 uses
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 3, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i8, ptr %i.j, align 1               ; 2 uses
  %.sroa.0.0.insert.ext41 = zext i8 %i.m to i64
  %i.n = inttoptr i64 %.sroa.0.0.insert.ext41 to ptr
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

bb.c:                                             ; preds = %.lr.ph
  %i.o = load i32, ptr %i.j, align 1              ; 2 uses
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %i.p = inttoptr i64 %.sroa.0.0.insert.ext to ptr
  %i.q = trunc i32 %i.o to i8
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

bb.d:                                             ; preds = %.lr.ph
  %i.r = load i64, ptr %i.j, align 1              ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = trunc i64 %i.r to i8
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

bb.e:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload37 = load ptr, ptr %i.j, align 1 ; 2 uses
  %.sroa.10.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.10.0.copyload39 = load i64, ptr %.sroa.10.0..sroa_idx38, align 1
  %i.u = ptrtoint ptr %.sroa.0.0.copyload37 to i64
  %i.v = trunc i64 %i.u to i8
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

default.unreachable:                              ; preds = %bb.g, %.lr.ph
  unreachable

_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %lhsc.i.i = phi i8 [ %i.m, %bb.b ], [ %i.q, %bb.c ], [ %i.t, %bb.d ], [ %i.v, %bb.e ]
  %.sroa.0.1 = phi ptr [ %i.n, %bb.b ], [ %i.p, %bb.c ], [ %i.s, %bb.d ], [ %.sroa.0.0.copyload37, %bb.e ] ; 3 uses
  %.sroa.10.1 = phi i64 [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.d ], [ %.sroa.10.0.copyload39, %bb.e ]
  %i.w = and i8 %.val28, 8
  %.not.i = icmp eq i8 %i.w, 0                    ; 2 uses
  br i1 %.not.i, label %upb_MiniTableField_HasPresence.exit, label %.split

.split:                                           ; preds = %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit
  %i.x = and i8 %.val28, 3
  %i.y = icmp eq i8 %i.x, 2
  br i1 %i.y, label %.split._crit_edge, label %bb.g

.split._crit_edge:                                ; preds = %.split
  %.phi.trans.insert = getelementptr i8, ptr %i.g, i64 6
  %.val8.i.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !17
  br label %bb.f

upb_MiniTableField_HasPresence.exit:              ; preds = %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !17  ; 2 uses
  %.not = icmp eq i16 %i.aa, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split._crit_edge, %upb_MiniTableField_HasPresence.exit
  %.val8.i = phi i16 [ %.val8.i.pre, %.split._crit_edge ], [ %i.aa, %upb_MiniTableField_HasPresence.exit ] ; 4 uses
  tail call void @llvm.assume(i1 %.not.i)
  %i.ab = icmp slt i16 %.val8.i, 0
  br i1 %i.ab, label %.split44, label %upb_Message_HasBaseField.exit

.split44:                                         ; preds = %bb.f
  %i.ac = xor i16 %.val8.i, -1
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %.val10.i = load i32, ptr %i.g, align 4, !tbaa !18
  %i.ag = icmp eq i32 %i.af, %.val10.i
  br i1 %i.ag, label %.critedge, label %bb.k, !llvm.loop !19

upb_Message_HasBaseField.exit:                    ; preds = %bb.f
  %i.ah = lshr i16 %.val8.i, 3
  %i.ai = trunc i16 %.val8.i to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = zext nneg i16 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21
  %i.ao = and i8 %i.an, %i.ak
  %.not48 = icmp eq i8 %i.ao, 0
  br i1 %.not48, label %bb.k, label %.critedge, !llvm.loop !19

bb.g:                                             ; preds = %.split, %upb_MiniTableField_HasPresence.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %.split45
    i8 1, label %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit
    i8 3, label %.split47
    i8 2, label %.split46
  ]

.split45:                                         ; preds = %bb.g
  %i.ap = icmp eq i8 %lhsc.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.ap, label %bb.k, label %bb.h, !llvm.loop !19

.split47:                                         ; preds = %bb.g
  %i.aq = load i64, ptr %i.j, align 1
  %i.ar = load i64, ptr %i.a, align 16
  %i.as = icmp ne i64 %i.aq, %i.ar
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.au, label %bb.k, label %bb.h, !llvm.loop !19

.split46:                                         ; preds = %bb.g
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.0.copyload.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.av = icmp eq i64 %.sroa.42.0.copyload.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.av, label %bb.k, label %bb.h, !llvm.loop !19

_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.g
  %i.aw = load i32, ptr %i.j, align 1
  %i.ax = load i32, ptr %i.a, align 16
  %i.ay = icmp ne i32 %i.aw, %i.ax
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.ba, label %bb.k, label %bb.h, !llvm.loop !19

bb.h:                                             ; preds = %.split47, %.split46, %.split45, %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit
  %i.bb = and i8 %.val28, 3
  switch i8 %i.bb, label %.critedge [
    i8 1, label %bb.i
    i8 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr i8, ptr %.sroa.0.1, i64 8
  %.val31 = load i64, ptr %i.bc, align 8, !tbaa !22
  %i.bd = icmp eq i64 %.val31, 0
  br i1 %i.bd, label %bb.k, label %.critedge, !llvm.loop !19

bb.j:                                             ; preds = %bb.h
  %i.be = tail call i64 @upb_Map_Size(ptr noundef %.sroa.0.1) #5
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.k, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.h, %.split44, %bb.i, %bb.j, %upb_Message_HasBaseField.exit
  store ptr %i.g, ptr %2, align 8, !tbaa !11
  store ptr %.sroa.0.1, ptr %3, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !21
  store i64 %.sroa.10.062, ptr %4, align 8, !tbaa !9
  br label %.loopexit

bb.k:                                             ; preds = %.split47, %.split46, %.split45, %.split44, %bb.j, %bb.i, %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit, %upb_Message_HasBaseField.exit
  %i.bg = add nuw nsw i64 %.sroa.10.062, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.k, %bb.a, %.critedge
  %i.bh = phi i1 [ true, %.critedge ], [ false, %bb.a ], [ false, %bb.k ]
  ret i1 %i.bh
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @upb_Map_Size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS18upb_MiniTableField", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !8, i64 4}
!15 = !{!"upb_MiniTableField", !4, i64 0, !8, i64 4, !8, i64 6, !8, i64 8, !5, i64 10, !5, i64 11}
!16 = !{!15, !5, i64 11}
!17 = !{!15, !8, i64 6}
!18 = !{!15, !4, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !10, i64 8}
!23 = !{!"upb_Array", !10, i64 0, !10, i64 8, !10, i64 16}
end_hunk_0
