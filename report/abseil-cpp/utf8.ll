Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/utf8?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef range(i64 1, 5) i64 @_ZN4absl12lts_2026052616strings_internal14EncodeUTF8CharEPcDi(ptr nofree noundef writeonly captures(none) initializes((0, 1)) %0, i32 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %1 to i8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !9
  %i.h = lshr i32 %1, 6
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = or disjoint i8 %i.i, -64
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %1, 65536
  %i.l = trunc i32 %1 to i8
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128                ; 2 uses
  %i.o = lshr i32 %1, 6
  %i.p = trunc i32 %i.o to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128                ; 2 uses
  %i.s = lshr i32 %1, 12
  %i.t = trunc i32 %i.s to i8                     ; 2 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.n, ptr %i.u, align 1, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.r, ptr %i.v, align 1, !tbaa !9
  %i.w = or disjoint i8 %i.t, -32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.n, ptr %i.x, align 1, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.r, ptr %i.y, align 1, !tbaa !9
  %i.z = and i8 %i.t, 63
  %i.aa = or disjoint i8 %i.z, -128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !9
  %i.ac = lshr i32 %1, 18
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = or i8 %i.ad, -16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sink = phi i8 [ %i.ae, %bb.g ], [ %i.w, %bb.f ], [ %i.j, %bb.d ], [ %i.b, %bb.b ]
  %.0 = phi i64 [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.d ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 1, !tbaa !9
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i64 -1, 5) i64 @_ZN4absl12lts_2026052616strings_internal10WideToUtf8EwPcRNS1_10ShiftStateE(i32 noundef signext %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(2) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  store i8 %i.b, ptr %1, align 1, !tbaa !9
  store i8 0, ptr %2, align 1, !tbaa !11
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %.sroa.424.0..sroa_idx, align 1, !tbaa !9
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr %1, align 1, !tbaa !9
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !9
  store i8 0, ptr %2, align 1, !tbaa !11
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %.sroa.422.0..sroa_idx, align 1, !tbaa !9
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i32 %0, 55296
  %i.l = and i32 %0, -8192
  %or.cond5 = icmp eq i32 %i.l, 57344
  %or.cond = or i1 %i.k, %or.cond5
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = lshr i32 %0, 12
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, -32
  store i8 %i.o, ptr %1, align 1, !tbaa !9
  %i.p = lshr i32 %0, 6
  %i.q = trunc i32 %i.p to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !9
  %i.u = trunc i32 %0 to i8
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !9
  store i8 0, ptr %2, align 1, !tbaa !11
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %.sroa.420.0..sroa_idx, align 1, !tbaa !9
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.y = icmp ult i32 %0, 56320
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = lshr i32 %0, 6
  %i.aa = and i32 %i.z, 15
  %i.ab = add nuw nsw i32 %i.aa, 1                ; 2 uses
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  %i.ad = lshr i8 %i.ac, 2
  %i.ae = or disjoint i8 %i.ad, -16
  store i8 %i.ae, ptr %1, align 1, !tbaa !9
  %i.af = shl nuw nsw i32 %i.ab, 4
  %i.ag = and i32 %i.af, 48
  %i.ah = lshr i32 %0, 2
  %i.ai = and i32 %i.ah, 15
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = trunc nuw nsw i32 %i.aj to i8
  %i.al = or disjoint i8 %i.ak, -128
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !9
  %i.an = trunc i32 %0 to i8
  %i.ao = and i8 %i.an, 3
  store i8 1, ptr %2, align 1, !tbaa !11
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.ao, ptr %.sroa.417.0..sroa_idx, align 1, !tbaa !9
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ap = icmp ult i32 %0, 57344
  br i1 %i.ap, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = load i8, ptr %2, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %3 = zext i8 %i.at to i32
  %4 = shl nuw nsw i32 %3, 4
  %5 = and i32 %4, 48
  %i.au = lshr i32 %0, 6
  %6 = and i32 %i.au, 15
  %7 = or disjoint i32 %5, %6
  %8 = trunc nuw nsw i32 %7 to i8
  %i.av = or disjoint i8 %8, -128
  store i8 %i.av, ptr %1, align 1, !tbaa !9
  %i.aw = trunc i32 %0 to i8
  %i.ax = and i8 %i.aw, 63
  %i.ay = or disjoint i8 %i.ax, -128
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !9
  store i8 0, ptr %2, align 1, !tbaa !11
  store i8 0, ptr %i.as, align 1, !tbaa !9
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ba = add i32 %0, -65536
  %or.cond11 = icmp ult i32 %i.ba, 1048576
  br i1 %or.cond11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bb = lshr i32 %0, 6
  %i.bc = lshr i32 %0, 12
  %i.bd = lshr i32 %0, 18
  %i.be = trunc i32 %0 to i8
  %i.bf = trunc i32 %i.bb to i8
  %i.bg = trunc i32 %i.bc to i8
  %i.bh = trunc nuw nsw i32 %i.bd to i8
  %i.bi = insertelement <4 x i8> poison, i8 %i.bh, i64 0
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bg, i64 1
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bf, i64 2
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.be, i64 3
  %i.bm = and <4 x i8> %i.bl, <i8 -1, i8 63, i8 63, i8 63>
  %i.bn = or disjoint <4 x i8> %i.bm, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bn, ptr %1, align 1, !tbaa !9
  store i8 0, ptr %2, align 1, !tbaa !11
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %.sroa.413.0..sroa_idx, align 1, !tbaa !9
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i8 0, ptr %2, align 1, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n, %bb.m, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.d ], [ 3, %bb.f ], [ 2, %bb.h ], [ 2, %bb.k ], [ -1, %bb.n ], [ 4, %bb.m ], [ -1, %bb.j ]
  ret i64 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!5, !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN4absl12lts_2026052616strings_internal10ShiftStateE", !10, i64 0, !5, i64 1}
!13 = !{!12, !10, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!12, !5, i64 1}
end_hunk_0
