Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/iterator?download=true
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
  %5 = phi i64 [ %i.bh, %bb.k ], [ %i.e, %bb.a ]  ; 3 uses
  %i.g = phi i64 [ %.sroa.10.0, %bb.k ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.061 = phi ptr [ %.sroa.0.0, %bb.k ], [ undef, %bb.a ] ; 2 uses
  %.val26 = load ptr, ptr %1, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %.val26, i64 %5 ; 6 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val27 = load i16, ptr %i.i, align 4, !tbaa !14
  %i.j = zext i16 %.val27 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j ; 8 uses
  %i.l = getelementptr i8, ptr %i.h, i64 11
  %.val28 = load i8, ptr %i.l, align 1, !tbaa !16 ; 4 uses
  %i.m = lshr i8 %.val28, 6                       ; 2 uses
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 3, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i8, ptr %i.k, align 1               ; 2 uses
  %6 = ptrtoint ptr %.sroa.0.061 to i64
  %.sroa.0.0.insert.ext41 = zext i8 %i.n to i64
  %.sroa.0.0.insert.mask42 = and i64 %6, -256
  %.sroa.0.0.insert.insert43 = or disjoint i64 %.sroa.0.0.insert.mask42, %.sroa.0.0.insert.ext41
  %i.o = inttoptr i64 %.sroa.0.0.insert.insert43 to ptr
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

bb.c:                                             ; preds = %.lr.ph
  %i.p = load i32, ptr %i.k, align 1              ; 2 uses
  %7 = ptrtoint ptr %.sroa.0.061 to i64
  %.sroa.0.0.insert.ext = zext i32 %i.p to i64
  %.sroa.0.0.insert.mask = and i64 %7, -4294967296
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.mask, %.sroa.0.0.insert.ext
  %i.q = inttoptr i64 %.sroa.0.0.insert.insert to ptr
  %i.r = trunc i32 %i.p to i8
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

bb.d:                                             ; preds = %.lr.ph
  %i.s = load i64, ptr %i.k, align 1              ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = trunc i64 %i.s to i8
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

bb.e:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload37 = load ptr, ptr %i.k, align 1 ; 2 uses
  %.sroa.10.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.10.0.copyload39 = load i64, ptr %.sroa.10.0..sroa_idx38, align 1
  %i.v = ptrtoint ptr %.sroa.0.0.copyload37 to i64
  %i.w = trunc i64 %i.v to i8
  br label %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit

default.unreachable:                              ; preds = %bb.g, %.lr.ph
  unreachable

_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %lhsc.i.i = phi i8 [ %i.n, %bb.b ], [ %i.r, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.o, %bb.b ], [ %i.q, %bb.c ], [ %i.t, %bb.d ], [ %.sroa.0.0.copyload37, %bb.e ] ; 4 uses
  %.sroa.10.0 = phi i64 [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.10.0.copyload39, %bb.e ] ; 2 uses
  %i.x = and i8 %.val28, 8
  %.not.i = icmp eq i8 %i.x, 0                    ; 2 uses
  br i1 %.not.i, label %upb_MiniTableField_HasPresence.exit, label %.split

.split:                                           ; preds = %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit
  %i.y = and i8 %.val28, 3
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %.split._crit_edge, label %bb.g

.split._crit_edge:                                ; preds = %.split
  %.phi.trans.insert = getelementptr i8, ptr %i.h, i64 6
  %.val8.i.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !17
  br label %bb.f

upb_MiniTableField_HasPresence.exit:              ; preds = %_upb_MiniTableField_DataCopy_dont_copy_me__upb_internal_use_only.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !17 ; 2 uses
  %.not = icmp eq i16 %i.ab, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split._crit_edge, %upb_MiniTableField_HasPresence.exit
  %.val8.i = phi i16 [ %.val8.i.pre, %.split._crit_edge ], [ %i.ab, %upb_MiniTableField_HasPresence.exit ] ; 4 uses
  tail call void @llvm.assume(i1 %.not.i)
  %i.ac = icmp slt i16 %.val8.i, 0
  br i1 %i.ac, label %.split44, label %upb_Message_HasBaseField.exit

.split44:                                         ; preds = %bb.f
  %i.ad = xor i16 %.val8.i, -1
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %.val10.i = load i32, ptr %i.h, align 4, !tbaa !18
  %i.ah = icmp eq i32 %i.ag, %.val10.i
  br i1 %i.ah, label %.critedge, label %bb.k, !llvm.loop !19

upb_Message_HasBaseField.exit:                    ; preds = %bb.f
  %i.ai = lshr i16 %.val8.i, 3
  %i.aj = trunc i16 %.val8.i to i8
  %i.ak = and i8 %i.aj, 7
  %i.al = shl nuw i8 1, %i.ak
  %i.am = zext nneg i16 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = and i8 %i.ao, %i.al
  %.not48 = icmp eq i8 %i.ap, 0
  br i1 %.not48, label %bb.k, label %.critedge, !llvm.loop !19

bb.g:                                             ; preds = %.split, %upb_MiniTableField_HasPresence.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  switch i8 %i.m, label %default.unreachable [
    i8 0, label %.split45
    i8 1, label %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit
    i8 3, label %.split47
    i8 2, label %.split46
  ]

.split45:                                         ; preds = %bb.g
  %i.aq = icmp eq i8 %lhsc.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.aq, label %bb.k, label %bb.h, !llvm.loop !19

.split47:                                         ; preds = %bb.g
  %i.ar = load i64, ptr %i.k, align 1
  %i.as = load i64, ptr %i.a, align 16
  %i.at = icmp ne i64 %i.ar, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.av, label %bb.k, label %bb.h, !llvm.loop !19

.split46:                                         ; preds = %bb.g
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.42.0.copyload.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !9
  %i.aw = icmp eq i64 %.sroa.42.0.copyload.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.aw, label %bb.k, label %bb.h, !llvm.loop !19

_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit: ; preds = %bb.g
  %i.ax = load i32, ptr %i.k, align 1
  %i.ay = load i32, ptr %i.a, align 16
  %i.az = icmp ne i32 %i.ax, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br i1 %i.bb, label %bb.k, label %bb.h, !llvm.loop !19

bb.h:                                             ; preds = %.split47, %.split46, %.split45, %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit
  %i.bc = and i8 %.val28, 3
  switch i8 %i.bc, label %.critedge [
    i8 1, label %bb.i
    i8 0, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.val31 = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.be = icmp eq i64 %.val31, 0
  br i1 %i.be, label %bb.k, label %.critedge, !llvm.loop !19

bb.j:                                             ; preds = %bb.h
  %i.bf = tail call i64 @upb_Map_Size(ptr noundef %.sroa.0.0) #5
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.h, %.split44, %bb.i, %bb.j, %upb_Message_HasBaseField.exit
  store ptr %i.h, ptr %2, align 8, !tbaa !11
  store ptr %.sroa.0.0, ptr %3, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !21
  store i64 %5, ptr %4, align 8, !tbaa !9
  br label %.loopexit

bb.k:                                             ; preds = %.split47, %.split46, %.split45, %.split44, %bb.j, %bb.i, %_upb_MiniTableField_DataIsZero_dont_copy_me__upb_internal_use_only.exit, %upb_Message_HasBaseField.exit
  %i.bh = add nuw nsw i64 %5, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.k, %bb.a, %.critedge
  %i.bi = phi i1 [ true, %.critedge ], [ false, %bb.a ], [ false, %bb.k ]
  ret i1 %i.bi
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
