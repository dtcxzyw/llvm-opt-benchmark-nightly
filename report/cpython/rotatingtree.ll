Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/rotatingtree?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyMutex = type { i8 }

@random_mutex = internal global %struct.PyMutex zeroinitializer, align 1
@random_stream = internal unnamed_addr global i32 0, align 4
@random_value = internal unnamed_addr global i32 1, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @RotatingTree_Add(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.c = phi ptr [ %i.a, %.lr.ph ], [ %i.f, %bb.b ] ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp ult ptr %i.b, %i.d
  %.1.v = select i1 %i.e, i64 8, i64 16           ; 2 uses
  %.1 = getelementptr i8, ptr %i.c, i64 %.1.v
  %i.f = load ptr, ptr %.1, align 8, !tbaa !10    ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %bb.b
  %.1.le = getelementptr i8, ptr %i.c, i64 %.1.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1.le, %._crit_edge.loopexit ]
  %i.g = getelementptr i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.0.lcssa, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @RotatingTree_Get(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr @random_mutex, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.b = extractvalue { i8, i1 } %i.a, 1
  br i1 %i.b, label %_PyMutex_Lock.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PyMutex_Lock(ptr noundef nonnull @random_mutex) #4
  br label %_PyMutex_Lock.exit.i

_PyMutex_Lock.exit.i:                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr @random_stream, align 4, !tbaa !6 ; 2 uses
  %i.d = icmp ult i32 %i.c, 8
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_PyMutex_Lock.exit.i
  %i.e = load i32, ptr @random_value, align 4, !tbaa !6
  %i.f = mul i32 %i.e, 1082527                    ; 2 uses
  store i32 %i.f, ptr @random_value, align 4, !tbaa !6
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_PyMutex_Lock.exit.i
  %i.g = phi i32 [ %i.f, %bb.c ], [ %i.c, %_PyMutex_Lock.exit.i ] ; 2 uses
  %i.h = lshr i32 %i.g, 3
  store i32 %i.h, ptr @random_stream, align 4, !tbaa !6
  %i.i = cmpxchg ptr @random_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %randombits.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @PyMutex_Unlock(ptr noundef nonnull @random_mutex) #4
  br label %randombits.exit

randombits.exit:                                  ; preds = %bb.d, %bb.e
  %i.k = and i32 %i.g, 7
  %.not = icmp eq i32 %i.k, 4
  %i.l = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %i.m = icmp eq ptr %i.l, null                   ; 2 uses
  br i1 %.not, label %bb.g, label %.preheader54

.preheader54:                                     ; preds = %randombits.exit
  br i1 %i.m, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader54, %bb.f
  %.04059 = phi ptr [ %.040, %bb.f ], [ %i.l, %.preheader54 ] ; 3 uses
  %i.n = load ptr, ptr %.04059, align 8, !tbaa !13 ; 2 uses
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.p = icmp ult ptr %1, %i.n
  %.141.in.v = select i1 %i.p, i64 8, i64 16
  %.141.in = getelementptr i8, ptr %.04059, i64 %.141.in.v
  %.040 = load ptr, ptr %.141.in, align 8, !tbaa !10 ; 2 uses
  %.not51 = icmp eq ptr %.040, null
  br i1 %.not51, label %.loopexit, label %.lr.ph, !llvm.loop !17

bb.g:                                             ; preds = %randombits.exit
  br i1 %i.m, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %.loopexit, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader, %bb.r
  %.03863 = phi ptr [ %.0, %bb.r ], [ %i.l, %.preheader ] ; 5 uses
  %.03962 = phi ptr [ %.1, %bb.r ], [ %0, %.preheader ] ; 2 uses
  %i.s = cmpxchg ptr @random_mutex, i8 0, i8 1 seq_cst seq_cst, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_PyMutex_Lock.exit.i52, label %bb.h

bb.h:                                             ; preds = %.lr.ph64
  tail call void @PyMutex_Lock(ptr noundef nonnull @random_mutex) #4
  br label %_PyMutex_Lock.exit.i52

_PyMutex_Lock.exit.i52:                           ; preds = %bb.h, %.lr.ph64
  %i.u = load i32, ptr @random_stream, align 4, !tbaa !6 ; 2 uses
  %i.v = icmp ult i32 %i.u, 2
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_PyMutex_Lock.exit.i52
  %i.w = load i32, ptr @random_value, align 4, !tbaa !6
  %i.x = mul i32 %i.w, 1082527                    ; 2 uses
  store i32 %i.x, ptr @random_value, align 4, !tbaa !6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_PyMutex_Lock.exit.i52
  %i.y = phi i32 [ %i.x, %bb.i ], [ %i.u, %_PyMutex_Lock.exit.i52 ] ; 2 uses
  %i.z = lshr i32 %i.y, 1
  store i32 %i.z, ptr @random_stream, align 4, !tbaa !6
  %i.aa = cmpxchg ptr @random_mutex, i8 1, i8 0 seq_cst seq_cst, align 1
  %i.ab = extractvalue { i8, i1 } %i.aa, 1
  br i1 %i.ab, label %randombits.exit53, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @PyMutex_Unlock(ptr noundef nonnull @random_mutex) #4
  br label %randombits.exit53

randombits.exit53:                                ; preds = %bb.j, %bb.k
  %.not50 = trunc i32 %i.y to i1                  ; 2 uses
  %i.ac = load ptr, ptr %.03863, align 8, !tbaa !13
  %i.ad = icmp ult ptr %1, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.o

bb.l:                                             ; preds = %randombits.exit53
  %i.ae = getelementptr i8, ptr %.03863, i64 8    ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not50, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !18
  store ptr %.03863, ptr %i.ah, align 8, !tbaa !19
  br label %.sink.split

bb.o:                                             ; preds = %randombits.exit53
  %i.aj = getelementptr i8, ptr %.03863, i64 16   ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !19
  store ptr %.03863, ptr %i.am, align 8, !tbaa !18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.q
  %.sink = phi ptr [ %i.ak, %bb.q ], [ %i.af, %bb.n ] ; 2 uses
  store ptr %.sink, ptr %.03962, align 8, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.p, %bb.m
  %.1 = phi ptr [ %i.aj, %bb.p ], [ %i.ae, %bb.m ], [ %.03962, %.sink.split ]
  %.0 = phi ptr [ %i.ak, %bb.p ], [ %i.af, %bb.m ], [ %.sink, %.sink.split ] ; 3 uses
  %i.ao = load ptr, ptr %.0, align 8, !tbaa !13
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %.loopexit, label %.lr.ph64

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %bb.o, %bb.l, %bb.r, %.preheader54, %.preheader, %bb.g
  %.2 = phi ptr [ null, %bb.g ], [ %.0, %bb.r ], [ %i.l, %.preheader ], [ null, %.preheader54 ], [ null, %bb.l ], [ null, %bb.o ], [ %.04059, %.lr.ph ], [ null, %bb.f ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define hidden i32 @RotatingTree_Enum(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.013 = phi ptr [ %0, %bb.a ], [ %i.e, %bb.d ]  ; 4 uses
  %.not = icmp eq ptr %.013, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %.013, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call i32 @RotatingTree_Enum(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) ; 2 uses
  %.not16 = icmp eq i32 %i.c, 0
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.013, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = tail call i32 %1(ptr noundef nonnull %.013, ptr noundef %2) #4 ; 2 uses
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.b, label %bb.e, !llvm.loop !20

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @PyMutex_Lock(ptr noundef) local_unnamed_addr #2

declare void @PyMutex_Unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS15rotating_node_s", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"rotating_node_s", !12, i64 0, !11, i64 8, !11, i64 16}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!14, !11, i64 8}
!19 = !{!14, !11, i64 16}
!20 = distinct !{!20, !16}
end_hunk_0
