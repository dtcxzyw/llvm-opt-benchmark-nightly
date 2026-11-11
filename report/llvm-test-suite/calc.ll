Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/calc?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lookupTable5B = dso_local local_unnamed_addr global [64 x i32] [i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 65760, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034, i32 786816, i32 655778, i32 786528, i32 786624, i32 786592, i32 65698, i32 65730, i32 655586, i32 786720, i32 65826, i32 65858, i32 65888, i32 65922, i32 65952, i32 65984, i32 655840, i32 786976, i32 66082, i32 66114, i32 66144, i32 66178, i32 66208, i32 66240, i32 656096, i32 66306, i32 66336, i32 66368, i32 656224, i32 131968, i32 656288, i32 787072, i32 656034], align 16, !guid !8
@lookupTable3B = dso_local local_unnamed_addr global [16 x i32] [i32 786440, i32 786436, i32 65545, i32 65548, i32 65553, i32 65556, i32 131096, i32 655388, i32 786440, i32 786436, i32 262153, i32 262156, i32 262161, i32 262164, i32 131096, i32 655373], align 16, !guid !9
@disparity0 = dso_local local_unnamed_addr global i32 0, align 4, !guid !10
@disparity1 = dso_local local_unnamed_addr global i32 1, align 4, !guid !11
@bigTable = dso_local local_unnamed_addr global [1024 x i32] zeroinitializer, align 16, !guid !12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @calcSetup() local_unnamed_addr #0 !guid !13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 1024) i32 @calc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 !guid !14 {
bb.a:
  %i.a = lshr i32 %0, 3
  %i.b = and i32 %i.a, 31
  %i.c = shl i32 %1, 5
  %i.d = or disjoint i32 %i.b, %i.c
  %i.e = and i32 %0, 7
  %i.f = shl i32 %1, 3
  %i.g = or disjoint i32 %i.f, %i.e
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @lookupTable5B, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 5 uses
  %i.k = zext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @lookupTable3B, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7    ; 5 uses
  %i.n = and i32 %i.j, 65536
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = and i32 %i.j, 994
  %i.p = load i32, ptr @disparity0, align 4, !tbaa !7 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = load i32, ptr @disparity0, align 4, !tbaa !7 ; 4 uses
  %i.r = lshr i32 %i.j, 18
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.q, %i.s
  %i.u = and i32 %i.j, 994                        ; 2 uses
  %i.v = xor i32 %i.u, 994
  %.0 = select i1 %i.t, i32 %i.u, i32 %i.v
  %i.w = and i32 %i.j, 524288
  %.not22 = icmp eq i32 %i.w, 0                   ; 2 uses
  %i.x = xor i32 %i.q, 1                          ; 2 uses
  %spec.select = select i1 %.not22, i32 %i.q, i32 %i.x
  %spec.select27 = select i1 %.not22, i32 %i.q, i32 %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %spec.select, %bb.c ], [ %i.p, %bb.b ]
  %i.y = phi i32 [ %spec.select27, %bb.c ], [ %i.p, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.c ], [ %i.o, %bb.b ]
  store i32 %.sink, ptr @disparity1, align 4, !tbaa !7
  %i.z = and i32 %i.m, 65536
  %.not23 = icmp eq i32 %i.z, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = and i32 %i.m, 29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = lshr i32 %i.m, 18
  %i.ac = and i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.y, %i.ac
  %i.ae = and i32 %i.m, 29                        ; 2 uses
  %i.af = xor i32 %i.ae, 29
  %.pn = select i1 %i.ad, i32 %i.ae, i32 %i.af
  %i.ag = lshr i32 %i.m, 19
  %i.ah = and i32 %i.ag, 1
  %spec.select28 = xor i32 %i.y, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink26 = phi i32 [ %spec.select28, %bb.f ], [ %i.y, %bb.e ]
  %.pn25 = phi i32 [ %.pn, %bb.f ], [ %i.aa, %bb.e ]
  store i32 %.sink26, ptr @disparity0, align 4, !tbaa !7
  %.3 = or i32 %.pn25, %.1
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 1024) i32 @bigTableCalc(i32 noundef %0) local_unnamed_addr #1 !guid !15 {
bb.a:
  %i.a = load i32, ptr @disparity0, align 4, !tbaa !7
  %i.b = shl i32 %i.a, 9
  %i.c = or i32 %i.b, %0
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @bigTable, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7    ; 2 uses
  %i.g = lshr i32 %i.f, 16
  store i32 %i.g, ptr @disparity0, align 4, !tbaa !7
  %i.h = and i32 %i.f, 1023
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @resetDisparity() local_unnamed_addr #2 !guid !16 {
bb.a:
  store i32 0, ptr @disparity0, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @bigTableSetup() local_unnamed_addr #3 !guid !18 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = trunc i64 %index to i32                  ; 3 uses
  %i.b = lshr <4 x i32> %vec.ind, splat (i32 9)   ; 2 uses
  %i.c = lshr i32 %i.a, 8
  %i.d = and i32 %i.c, 1                          ; 2 uses
  %i.e = lshr i32 %i.a, 3
  %i.f = and i32 %i.e, 31
  %i.g = shl nuw nsw i32 %i.d, 5
  %i.h = or disjoint i32 %i.g, %i.f
  %i.i = and i32 %i.a, 4
  %i.j = and i64 %index, 4
  %i.k = and i64 %index, 4
  %i.l = shl nuw nsw i32 %i.d, 3
  %i.m = lshr i64 %index, 5
  %i.n = and i64 %i.m, 8
  %i.o = lshr i64 %index, 5
  %i.p = and i64 %i.o, 8
  %i.q = or disjoint i32 %i.l, %i.i
  %i.r = zext nneg i32 %i.h to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @lookupTable5B, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7    ; 4 uses
  %i.u = zext nneg i32 %i.q to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @lookupTable3B, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @lookupTable3B, i64 %i.n
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @lookupTable3B, i64 %i.p
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.v, align 16, !tbaa !7
  %i.ad = load i32, ptr %i.y, align 4, !tbaa !7
  %i.ae = load <2 x i32>, ptr %i.ab, align 8, !tbaa !7
  %i.af = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ad, i64 1
  %i.ah = shufflevector <2 x i32> %i.ae, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = shufflevector <4 x i32> %i.ag, <4 x i32> %i.ah, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 4 uses
  %i.aj = and i32 %i.t, 65536
  %i.ak = icmp eq i32 %i.aj, 0                    ; 2 uses
  %i.al = and i32 %i.t, 994                       ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat12 = shufflevector <4 x i32> %broadcast.splatinsert11, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = lshr i32 %i.t, 18
  %i.an = and i32 %i.am, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ao = icmp eq <4 x i32> %i.b, %broadcast.splat
  %i.ap = xor i32 %i.al, 994
  %broadcast.splatinsert13 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat14 = shufflevector <4 x i32> %broadcast.splatinsert13, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aq = select <4 x i1> %i.ao, <4 x i32> %broadcast.splat12, <4 x i32> %broadcast.splat14
  %i.ar = lshr i32 %i.t, 19
  %i.as = and i32 %i.ar, 1
  %broadcast.splatinsert15 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat16 = shufflevector <4 x i32> %broadcast.splatinsert15, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.at = select i1 %i.ak, <4 x i32> %broadcast.splat16, <4 x i32> zeroinitializer
  %predphi = xor <4 x i32> %i.b, %i.at            ; 3 uses
  %predphi17 = select i1 %i.ak, <4 x i32> %i.aq, <4 x i32> %broadcast.splat12
  %i.au = and <4 x i32> %i.ai, splat (i32 65536)
  %i.av = icmp eq <4 x i32> %i.au, zeroinitializer ; 2 uses
  %i.aw = and <4 x i32> %i.ai, splat (i32 29)     ; 2 uses
  %i.ax = lshr <4 x i32> %i.ai, splat (i32 18)
  %i.ay = and <4 x i32> %i.ax, splat (i32 1)
  %i.az = icmp ne <4 x i32> %predphi, %i.ay
  %i.ba = xor <4 x i32> %i.aw, splat (i32 29)
  %i.bb = lshr <4 x i32> %i.ai, splat (i32 19)
  %i.bc = and <4 x i32> %i.bb, splat (i32 1)
  %i.bd = select <4 x i1> %i.av, <4 x i32> %i.bc, <4 x i32> zeroinitializer
  %predphi18 = xor <4 x i32> %predphi, %i.bd
  %i.be = select <4 x i1> %i.av, <4 x i1> %i.az, <4 x i1> zeroinitializer
  %predphi19 = select <4 x i1> %i.be, <4 x i32> %i.ba, <4 x i32> %i.aw
  %i.bf = or disjoint <4 x i32> %predphi17, %predphi19
  %i.bg = shl nuw nsw <4 x i32> %predphi18, splat (i32 16)
  %i.bh = or disjoint <4 x i32> %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @bigTable, i64 %index
  store <4 x i32> %i.bh, ptr %i.bi, align 16, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bj = icmp eq i64 %index.next, 1024
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %i.bk = extractelement <4 x i32> %predphi, i64 3
  store i32 %i.bk, ptr @disparity1, align 4, !tbaa !7
  store i32 0, ptr @disparity0, align 4, !tbaa !7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 6454968367990618186}
!9 = !{i64 4801903262341764586}
!10 = !{i64 -1831047939339431456}
!11 = !{i64 -4103036408032111939}
!12 = !{i64 -1360119460474348347}
!13 = !{i64 -1321135119566680992}
!14 = !{i64 1242080725389861748}
!15 = !{i64 -7891869751537369475}
!16 = !{i64 -4699455354428305940}
!17 = distinct !{!17, !19, !20, !21}
!18 = !{i64 -646409887783553634}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
