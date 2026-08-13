loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN13duckdb_brotli14kBrotliBitMaskE = hidden local_unnamed_addr constant [33 x i64] [i64 0, i64 1, i64 3, i64 7, i64 15, i64 31, i64 63, i64 127, i64 255, i64 511, i64 1023, i64 2047, i64 4095, i64 8191, i64 16383, i64 32767, i64 65535, i64 131071, i64 262143, i64 524287, i64 1048575, i64 2097151, i64 4194303, i64 8388607, i64 16777215, i64 33554431, i64 67108863, i64 134217727, i64 268435455, i64 536870911, i64 1073741823, i64 2147483647, i64 4294967295], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN13duckdb_brotli19BrotliInitBitReaderEPNS_15BrotliBitReaderE(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli21BrotliWarmupBitReaderEPNS_15BrotliBitReaderE(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.thread

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.thread, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit: ; preds = %bb.b
  %i.i = load i8, ptr %i.e, align 1, !tbaa !15
  %i.j = zext i8 %i.i to i64
  store i64 %i.j, ptr %0, align 8, !tbaa !12
  store i64 8, ptr %i.a, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.k, ptr %i.d, align 8, !tbaa !13
  br label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.thread

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.thread: ; preds = %bb.b, %bb.a, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli24BrotliSafeReadBits32SlowEPNS_15BrotliBitReaderEmPm(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 5 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp ult i64 %i.c, 16
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = icmp eq ptr %i.e, %i.g
  br i1 %i.l, label %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit11.thread, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8: ; preds = %.lr.ph
  %i.m = load i8, ptr %i.e, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, %i.c
  %i.p = or i64 %i.o, %i.a                        ; 3 uses
  store i64 %i.p, ptr %0, align 8, !tbaa !12
  %i.q = add nuw nsw i64 %i.c, 8                  ; 3 uses
  store i64 %i.q, ptr %i.b, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !13
  %i.s = icmp ult i64 %i.c, 8
  br i1 %i.s, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8
  %i.t = icmp eq ptr %i.r, %i.g
  br i1 %i.t, label %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit11.thread, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8.1

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8.1: ; preds = %.lr.ph.1
  %i.u = load i8, ptr %i.r, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, %i.q
  %i.x = or i64 %i.w, %i.p                        ; 2 uses
  store i64 %i.x, ptr %0, align 8, !tbaa !12
  %i.y = or disjoint i64 %i.c, 16                 ; 2 uses
  store i64 %i.y, ptr %i.b, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store ptr %i.z, ptr %i.d, align 8, !tbaa !13
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8.1, %bb.a
  %.promoted36 = phi ptr [ %i.e, %bb.a ], [ %i.r, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8 ], [ %i.z, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8.1 ] ; 2 uses
  %i.aa = phi i64 [ %i.a, %bb.a ], [ %i.p, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8 ], [ %i.x, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8.1 ] ; 2 uses
  %.lcssa29 = phi i64 [ %i.c, %bb.a ], [ %i.q, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8 ], [ %i.y, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i8.1 ]
  %i.ab = and i64 %i.aa, 65535
  %i.ac = add i64 %.lcssa29, -16                  ; 4 uses
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !7
  %i.ad = lshr i64 %i.aa, 16                      ; 3 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !12
  %i.ae = add i64 %1, -16                         ; 5 uses
  %i.af = icmp ult i64 %i.ac, %i.ae
  br i1 %i.af, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %._crit_edge
  %i.ag = icmp eq ptr %.promoted36, %i.g
  br i1 %i.ag, label %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit11.thread, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i

.lr.ph33:                                         ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i
  %i.ah = icmp eq ptr %i.aq, %i.g
  br i1 %i.ah, label %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit11.thread, label %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i, !llvm.loop !16

_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i: ; preds = %.lr.ph33.preheader, %.lr.ph33
  %i.ai = phi i64 [ %i.ap, %.lr.ph33 ], [ %i.ac, %.lr.ph33.preheader ] ; 2 uses
  %i.aj = phi ptr [ %i.aq, %.lr.ph33 ], [ %.promoted36, %.lr.ph33.preheader ] ; 2 uses
  %i.ak = phi i64 [ %i.ao, %.lr.ph33 ], [ %i.ad, %.lr.ph33.preheader ]
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.am = zext i8 %i.al to i64
  %i.an = shl i64 %i.am, %i.ai
  %i.ao = or i64 %i.an, %i.ak                     ; 3 uses
  store i64 %i.ao, ptr %0, align 8, !tbaa !12
  %i.ap = add i64 %i.ai, 8                        ; 4 uses
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !13
  %i.ar = icmp ult i64 %i.ap, %i.ae
  br i1 %i.ar, label %.lr.ph33, label %._crit_edge34, !llvm.loop !16

_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit11.thread: ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph33, %.lr.ph33.preheader
  store i64 %i.a, ptr %0, align 8, !tbaa !12
  store i64 %i.c, ptr %i.b, align 8, !tbaa !7
  store ptr %i.e, ptr %i.d, align 8, !tbaa !13
  %i.as = getelementptr i8, ptr %i.e, i64 %i.j    ; 2 uses
  store ptr %i.as, ptr %i.f, align 8, !tbaa !14
  %i.at = add i64 %i.j, -28
  %i.au = icmp ult i64 %i.at, -29
  br i1 %i.au, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit11.thread
  %i.av = getelementptr i8, ptr %i.as, i64 -27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !18
  br label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit

bb.c:                                             ; preds = %_ZN13duckdb_brotliL18BrotliSafeReadBitsEPNS_15BrotliBitReaderEmPm.exit11.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.ax, align 8, !tbaa !18
  br label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit

._crit_edge34:                                    ; preds = %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i, %._crit_edge
  %i.ay = phi i64 [ %i.ad, %._crit_edge ], [ %i.ao, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ] ; 2 uses
  %.lcssa = phi i64 [ %i.ac, %._crit_edge ], [ %i.ap, %_ZN13duckdb_brotliL14BrotliPullByteEPNS_15BrotliBitReaderE.exit.i ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli14kBrotliBitMaskE, i64 %i.ae
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = and i64 %i.ba, %i.ay
  %i.bc = sub i64 %.lcssa, %i.ae
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !7
  %i.bd = lshr i64 %i.ay, %i.ae
  store i64 %i.bd, ptr %0, align 8, !tbaa !12
  %i.be = shl i64 %i.bb, 16
  %i.bf = or disjoint i64 %i.be, %i.ab
  store i64 %i.bf, ptr %2, align 8, !tbaa !19
  br label %_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit

_ZN13duckdb_brotliL23BrotliBitReaderSetInputEPNS_15BrotliBitReaderEPKhm.exit: ; preds = %bb.c, %bb.b, %._crit_edge34
  %.0 = phi i32 [ 1, %._crit_edge34 ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

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
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSN13duckdb_brotli15BrotliBitReaderE", !9, i64 0, !9, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!9 = !{!"long", !5, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!8, !9, i64 0}
!13 = !{!8, !10, i64 16}
!14 = !{!8, !10, i64 32}
!15 = !{!5, !5, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!8, !10, i64 24}
!19 = !{!9, !9, i64 0}
end_hunk_0
