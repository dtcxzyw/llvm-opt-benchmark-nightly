Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/UpdateProduce?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTIPKc = external constant ptr
@.str = private unnamed_addr constant [40 x i8] c"Internal collision in update action set\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq ptr %3, null
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %i.g = phi i32 [ %i.y, %bb.f ], [ %i.b, %.lr.ph ]
  %.sroa.0.036.us = phi i64 [ %indvars.iv.next45, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.sroa.0.036.us ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13
  %.sroa.0.4.insert.ext.us = zext i32 %i.k to i64
  %.sroa.0.4.insert.shift.us = shl nuw i64 %.sroa.0.4.insert.ext.us, 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %.sroa.12.8.insert.ext.us = zext i32 %i.m to i64
  %.sroa.12.8.insert.insert.us = or disjoint i64 %.sroa.12.8.insert.ext.us, -4294967296
  %.sroa.0.0.insert.insert.us = or disjoint i64 %.sroa.0.4.insert.shift.us, 257 ; 2 uses
  %i.n = load i32, ptr %i.i, align 4, !tbaa !17   ; 3 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  switch i32 %i.q, label %bb.e [
    i32 0, label %bb.f
    i32 1, label %bb.d
    i32 2, label %bb.c
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %.sroa.0.2.insert.insert.us = or disjoint i64 %.sroa.0.4.insert.shift.us, 65793
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.split.us
  %switch.us = icmp ult i32 %i.n, 2
  br i1 %switch.us, label %.split.us, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.r = icmp eq i32 %i.n, 2
  br i1 %i.r, label %.split39.us, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.lr.ph.split.us
  %.sroa.0.1.us = phi i64 [ %.sroa.0.0.insert.insert.us, %.lr.ph.split.us ], [ %.sroa.0.2.insert.insert.us, %bb.b ], [ %.sroa.0.0.insert.insert.us, %bb.c ], [ %.sroa.0.4.insert.shift.us, %bb.d ]
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.t = load i32, ptr %i.f, align 4, !tbaa !8
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.u ; 2 uses
  store i64 %.sroa.0.1.us, ptr %i.v, align 4
  %.sroa.2.0..sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.sroa.12.8.insert.insert.us, ptr %.sroa.2.0..sroa_idx.i.us, align 4
  %i.w = load i32, ptr %i.f, align 4, !tbaa !8
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.f, align 4, !tbaa !8
  %.pre = load i32, ptr %i.a, align 4, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us, %bb.e
  %i.y = phi i32 [ %i.g, %.lr.ph.split.us ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %.sroa.0.036.us, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next45, %i.z
  br i1 %i.aa, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.l, %bb.f, %bb.a
  tail call void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.sroa.0.036 = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.ab, i64 %.sroa.0.036 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13
  %.sroa.0.4.insert.ext = zext i32 %i.ae to i64
  %.sroa.0.4.insert.shift = shl nuw i64 %.sroa.0.4.insert.ext, 32 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !16 ; 2 uses
  %.sroa.12.8.insert.ext = zext i32 %i.ag to i64
  %.sroa.12.8.insert.insert = or disjoint i64 %.sroa.12.8.insert.ext, -4294967296
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, 257 ; 2 uses
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !17 ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  switch i32 %i.ak, label %bb.k [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.g:                                             ; preds = %.lr.ph.split
  %i.al = load ptr, ptr %3, align 8, !tbaa !22
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.ag) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph.split
  %i.ao = icmp eq i32 %i.ah, 2
  br i1 %i.ao, label %.split39.us, label %bb.k

.split39.us:                                      ; preds = %bb.h, %bb.d
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #3 ; 2 uses
  store ptr @.str, ptr %i.ap, align 16, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTIPKc, ptr null) #4
  unreachable

bb.i:                                             ; preds = %.lr.ph.split
  %switch = icmp ult i32 %i.ah, 2
  br i1 %switch, label %.split.us, label %bb.k

.split.us:                                        ; preds = %bb.i, %bb.c
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 8) #3 ; 2 uses
  store ptr @.str, ptr %i.aq, align 16, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIPKc, ptr null) #4
  unreachable

bb.j:                                             ; preds = %.lr.ph.split
  %.sroa.0.2.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, 65793
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %.lr.ph.split
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.insert.insert, %.lr.ph.split ], [ %.sroa.0.2.insert.insert, %bb.j ], [ %.sroa.0.0.insert.insert, %bb.i ], [ %.sroa.0.4.insert.shift, %bb.h ]
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.as = load i32, ptr %i.f, align 4, !tbaa !8
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.at ; 2 uses
  store i64 %.sroa.0.1, ptr %i.au, align 4
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %.sroa.12.8.insert.insert, ptr %.sroa.2.0..sroa_idx.i, align 4
  %i.av = load i32, ptr %i.f, align 4, !tbaa !8
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %indvars.iv.next = add nuw nsw i64 %.sroa.0.036, 1 ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !8
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %.lr.ph.split, label %._crit_edge, !llvm.loop !20
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #1

declare void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !10, i64 16, !11, i64 24}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 16}
!13 = !{!14, !5, i64 8}
!14 = !{!"_ZTS11CUpdatePair", !15, i64 0, !5, i64 4, !5, i64 8}
!15 = !{!"_ZTSN14NUpdateArchive10NPairState5EEnumE", !6, i64 0}
!16 = !{!14, !5, i64 4}
!17 = !{!14, !15, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ZTSN14NUpdateArchive11NPairAction5EEnumE", !6, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !10, i64 0}
end_hunk_0
