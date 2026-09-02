Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/rc4?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @RC4(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.029.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.k, %.lr.ph ]
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.f, %.lr.ph ]
  store i32 %.0.lcssa, ptr %0, align 4, !tbaa !12
  store i32 %.029.lcssa, ptr %i.b, align 4, !tbaa !13
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.033 = phi i32 [ %i.f, %.lr.ph ], [ %i.a, %bb.a ]
  %.02932 = phi i32 [ %i.k, %.lr.ph ], [ %i.c, %bb.a ]
  %.03031 = phi i64 [ %i.y, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.e = add i32 %.033, 1
  %i.f = and i32 %i.e, 255                        ; 3 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14   ; 3 uses
  %i.j = add i32 %i.i, %.02932
  %i.k = and i32 %i.j, 255                        ; 3 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !14   ; 2 uses
  store i32 %i.n, ptr %i.h, align 4, !tbaa !14
  store i32 %i.i, ptr %i.m, align 4, !tbaa !14
  %i.o = add i32 %i.n, %i.i
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.03031
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = trunc i32 %i.s to i8
  %i.w = xor i8 %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %.03031
  store i8 %i.w, ptr %i.x, align 1, !tbaa !15
  %i.y = add nuw i64 %.03031, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @RC4_set_key(ptr nofree noundef captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.b, align 4, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 4, !tbaa !14
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.d, align 4, !tbaa !14
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.f, align 4, !tbaa !14
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.g, align 4, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <4 x i32> <i32 24, i32 25, i32 26, i32 27>, ptr %i.h, align 4, !tbaa !14
  store <4 x i32> <i32 28, i32 29, i32 30, i32 31>, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <4 x i32> <i32 32, i32 33, i32 34, i32 35>, ptr %i.j, align 4, !tbaa !14
  store <4 x i32> <i32 36, i32 37, i32 38, i32 39>, ptr %i.k, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <4 x i32> <i32 40, i32 41, i32 42, i32 43>, ptr %i.l, align 4, !tbaa !14
  store <4 x i32> <i32 44, i32 45, i32 46, i32 47>, ptr %i.m, align 4, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <4 x i32> <i32 48, i32 49, i32 50, i32 51>, ptr %i.n, align 4, !tbaa !14
  store <4 x i32> <i32 52, i32 53, i32 54, i32 55>, ptr %i.o, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  store <4 x i32> <i32 56, i32 57, i32 58, i32 59>, ptr %i.p, align 4, !tbaa !14
  store <4 x i32> <i32 60, i32 61, i32 62, i32 63>, ptr %i.q, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <4 x i32> <i32 64, i32 65, i32 66, i32 67>, ptr %i.r, align 4, !tbaa !14
  store <4 x i32> <i32 68, i32 69, i32 70, i32 71>, ptr %i.s, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <4 x i32> <i32 72, i32 73, i32 74, i32 75>, ptr %i.t, align 4, !tbaa !14
  store <4 x i32> <i32 76, i32 77, i32 78, i32 79>, ptr %i.u, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344
  store <4 x i32> <i32 80, i32 81, i32 82, i32 83>, ptr %i.v, align 4, !tbaa !14
  store <4 x i32> <i32 84, i32 85, i32 86, i32 87>, ptr %i.w, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376
  store <4 x i32> <i32 88, i32 89, i32 90, i32 91>, ptr %i.x, align 4, !tbaa !14
  store <4 x i32> <i32 92, i32 93, i32 94, i32 95>, ptr %i.y, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 408
  store <4 x i32> <i32 96, i32 97, i32 98, i32 99>, ptr %i.z, align 4, !tbaa !14
  store <4 x i32> <i32 100, i32 101, i32 102, i32 103>, ptr %i.aa, align 4, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 440
  store <4 x i32> <i32 104, i32 105, i32 106, i32 107>, ptr %i.ab, align 4, !tbaa !14
  store <4 x i32> <i32 108, i32 109, i32 110, i32 111>, ptr %i.ac, align 4, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 472
  store <4 x i32> <i32 112, i32 113, i32 114, i32 115>, ptr %i.ad, align 4, !tbaa !14
  store <4 x i32> <i32 116, i32 117, i32 118, i32 119>, ptr %i.ae, align 4, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 504
  store <4 x i32> <i32 120, i32 121, i32 122, i32 123>, ptr %i.af, align 4, !tbaa !14
  store <4 x i32> <i32 124, i32 125, i32 126, i32 127>, ptr %i.ag, align 4, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 536
  store <4 x i32> <i32 128, i32 129, i32 130, i32 131>, ptr %i.ah, align 4, !tbaa !14
  store <4 x i32> <i32 132, i32 133, i32 134, i32 135>, ptr %i.ai, align 4, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  store <4 x i32> <i32 136, i32 137, i32 138, i32 139>, ptr %i.aj, align 4, !tbaa !14
  store <4 x i32> <i32 140, i32 141, i32 142, i32 143>, ptr %i.ak, align 4, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 600
  store <4 x i32> <i32 144, i32 145, i32 146, i32 147>, ptr %i.al, align 4, !tbaa !14
  store <4 x i32> <i32 148, i32 149, i32 150, i32 151>, ptr %i.am, align 4, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 632
  store <4 x i32> <i32 152, i32 153, i32 154, i32 155>, ptr %i.an, align 4, !tbaa !14
  store <4 x i32> <i32 156, i32 157, i32 158, i32 159>, ptr %i.ao, align 4, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  store <4 x i32> <i32 160, i32 161, i32 162, i32 163>, ptr %i.ap, align 4, !tbaa !14
  store <4 x i32> <i32 164, i32 165, i32 166, i32 167>, ptr %i.aq, align 4, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 696
  store <4 x i32> <i32 168, i32 169, i32 170, i32 171>, ptr %i.ar, align 4, !tbaa !14
  store <4 x i32> <i32 172, i32 173, i32 174, i32 175>, ptr %i.as, align 4, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 728
  store <4 x i32> <i32 176, i32 177, i32 178, i32 179>, ptr %i.at, align 4, !tbaa !14
  store <4 x i32> <i32 180, i32 181, i32 182, i32 183>, ptr %i.au, align 4, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 760
  store <4 x i32> <i32 184, i32 185, i32 186, i32 187>, ptr %i.av, align 4, !tbaa !14
  store <4 x i32> <i32 188, i32 189, i32 190, i32 191>, ptr %i.aw, align 4, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 792
  store <4 x i32> <i32 192, i32 193, i32 194, i32 195>, ptr %i.ax, align 4, !tbaa !14
  store <4 x i32> <i32 196, i32 197, i32 198, i32 199>, ptr %i.ay, align 4, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 824
  store <4 x i32> <i32 200, i32 201, i32 202, i32 203>, ptr %i.az, align 4, !tbaa !14
  store <4 x i32> <i32 204, i32 205, i32 206, i32 207>, ptr %i.ba, align 4, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 856
  store <4 x i32> <i32 208, i32 209, i32 210, i32 211>, ptr %i.bb, align 4, !tbaa !14
  store <4 x i32> <i32 212, i32 213, i32 214, i32 215>, ptr %i.bc, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 888
  store <4 x i32> <i32 216, i32 217, i32 218, i32 219>, ptr %i.bd, align 4, !tbaa !14
  store <4 x i32> <i32 220, i32 221, i32 222, i32 223>, ptr %i.be, align 4, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 920
  store <4 x i32> <i32 224, i32 225, i32 226, i32 227>, ptr %i.bf, align 4, !tbaa !14
  store <4 x i32> <i32 228, i32 229, i32 230, i32 231>, ptr %i.bg, align 4, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 952
  store <4 x i32> <i32 232, i32 233, i32 234, i32 235>, ptr %i.bh, align 4, !tbaa !14
  store <4 x i32> <i32 236, i32 237, i32 238, i32 239>, ptr %i.bi, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 984
  store <4 x i32> <i32 240, i32 241, i32 242, i32 243>, ptr %i.bj, align 4, !tbaa !14
  store <4 x i32> <i32 244, i32 245, i32 246, i32 247>, ptr %i.bk, align 4, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store <4 x i32> <i32 248, i32 249, i32 250, i32 251>, ptr %i.bl, align 4, !tbaa !14
  store <4 x i32> <i32 252, i32 253, i32 254, i32 255>, ptr %i.bm, align 4, !tbaa !14
  br label %.preheader

bb.a:                                             ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %vector.ph, %.preheader
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.preheader ], [ 0, %vector.ph ] ; 2 uses
  %.02429 = phi i8 [ %.narrow, %.preheader ], [ 0, %vector.ph ]
  %.02528 = phi i32 [ %spec.store.select, %.preheader ], [ 0, %vector.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv32 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14 ; 2 uses
  %i.bp = zext i32 %.02528 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15
  %.tr.a = trunc i32 %i.bo to i8
  %.narrow.a = add i8 %.02429, %.tr.a
  %.narrow = add i8 %.narrow.a, %i.br             ; 2 uses
  %i.bs = add i32 %.02528, 1                      ; 2 uses
  %i.bt = icmp eq i32 %i.bs, %1
  %spec.store.select = select i1 %i.bt, i32 0, i32 %i.bs
  %i.bu = zext i8 %.narrow to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !14
  store i32 %i.bw, ptr %i.bn, align 4, !tbaa !14
  store i32 %i.bo, ptr %i.bv, align 4, !tbaa !14
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next33, 256
  br i1 %exitcond35.not, label %bb.a, label %.preheader, !llvm.loop !18
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"_ZTS10rc4_key_st", !8, i64 0, !8, i64 4, !7, i64 8}
!12 = !{!11, !8, i64 0}
!13 = !{!11, !8, i64 4}
!14 = !{!8, !8, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
end_hunk_0
