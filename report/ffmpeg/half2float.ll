Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/half2float?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_init_half2float_tables(ptr nofree noundef captures(none) initializes((0, 4)) %0) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.loopexit.i.1, %bb.a
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %._crit_edge.loopexit.i.1 ] ; 4 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.a = shl nuw nsw i32 %indvars.iv.tr, 13
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.011.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %.0810.i = phi i32 [ %i.c, %.lr.ph.i ], [ %i.a, %bb.b ] ; 2 uses
  %i.b = add nsw i32 %.011.i, -8388608
  %i.c = shl i32 %.0810.i, 1                      ; 2 uses
  %i.d = and i32 %.0810.i, 4194304
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !10

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.e = add nsw i32 %.011.i, 939524096
  %i.f = and i32 %i.c, -8404992
  %i.g = or i32 %i.f, %i.e
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.g, ptr %i.h, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1024
  br i1 %exitcond.not, label %vector.body, label %bb.c

bb.c:                                             ; preds = %._crit_edge.loopexit.i
  %indvars.iv.tr.1 = trunc nuw i64 %indvars.iv.next to i32
  %i.i = shl nuw nsw i32 %indvars.iv.tr.1, 13
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %bb.c
  %.011.i.1 = phi i32 [ %i.j, %.lr.ph.i.1 ], [ 0, %bb.c ] ; 2 uses
  %.0810.i.1 = phi i32 [ %i.k, %.lr.ph.i.1 ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = add nsw i32 %.011.i.1, -8388608
  %i.k = shl i32 %.0810.i.1, 1                    ; 2 uses
  %i.l = and i32 %.0810.i.1, 4194304
  %.not.i.1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.1, label %.lr.ph.i.1, label %._crit_edge.loopexit.i.1, !llvm.loop !10

._crit_edge.loopexit.i.1:                         ; preds = %.lr.ph.i.1
  %i.m = add nsw i32 %.011.i.1, 939524096
  %i.n = and i32 %i.k, -8404992
  %i.o = or i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.o, ptr %i.p, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

vector.body:                                      ; preds = %._crit_edge.loopexit.i, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %._crit_edge.loopexit.i ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 1024, i32 1025, i32 1026, i32 1027>, %._crit_edge.loopexit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4096
  %i.s = shl <4 x i32> %vec.ind, splat (i32 13)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 13)
  %i.t = add <4 x i32> %i.s, splat (i32 931135488)
  %i.u = add <4 x i32> %step.add, splat (i32 931168256)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4112
  store <4 x i32> %i.t, ptr %i.r, align 4, !tbaa !9
  store <4 x i32> %i.u, ptr %i.v, align 4, !tbaa !9
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4128
  %i.y = shl <4 x i32> %vec.ind.next, splat (i32 13)
  %step.add.1 = shl <4 x i32> %vec.ind.next, splat (i32 13)
  %i.z = add <4 x i32> %i.y, splat (i32 931135488)
  %i.aa = add <4 x i32> %step.add.1, splat (i32 931168256)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4144
  store <4 x i32> %i.z, ptr %i.x, align 4, !tbaa !9
  store <4 x i32> %i.aa, ptr %i.ab, align 4, !tbaa !9
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %i.ac = icmp eq i64 %index.next.1, 1024
  br i1 %i.ac, label %vector.body78, label %vector.body, !llvm.loop !12

vector.body78:                                    ; preds = %vector.body, %vector.body78
  %index79 = phi i64 [ %index.next81.1, %vector.body78 ], [ 0, %vector.body ] ; 3 uses
  %i.ad = getelementptr [4 x i8], ptr %0, i64 %index79 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8192
  %i.af = getelementptr i8, ptr %i.ad, i64 4096
  %i.ag = getelementptr i8, ptr %i.ad, i64 4112
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !9
  %wide.load80 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !9
  %i.ah = or <4 x i32> %wide.load, splat (i32 4194304)
  %i.ai = or <4 x i32> %wide.load80, splat (i32 4194304)
  %i.aj = getelementptr i8, ptr %i.ad, i64 8208
  store <4 x i32> %i.ah, ptr %i.ae, align 4, !tbaa !9
  store <4 x i32> %i.ai, ptr %i.aj, align 4, !tbaa !9
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %index79 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8224
  %i.am = getelementptr i8, ptr %i.ak, i64 4128
  %i.an = getelementptr i8, ptr %i.ak, i64 4144
  %wide.load.1 = load <4 x i32>, ptr %i.am, align 4, !tbaa !9
  %wide.load80.1 = load <4 x i32>, ptr %i.an, align 4, !tbaa !9
  %i.ao = or <4 x i32> %wide.load.1, splat (i32 4194304)
  %i.ap = or <4 x i32> %wide.load80.1, splat (i32 4194304)
  %i.aq = getelementptr i8, ptr %i.ak, i64 8240
  store <4 x i32> %i.ao, ptr %i.al, align 4, !tbaa !9
  store <4 x i32> %i.ap, ptr %i.aq, align 4, !tbaa !9
  %index.next81.1 = add nuw nsw i64 %index79, 16  ; 2 uses
  %i.ar = icmp eq i64 %index.next81.1, 1024
  br i1 %i.ar, label %.preheader.preheader, label %vector.body78, !llvm.loop !15

.preheader.preheader:                             ; preds = %vector.body78
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8192
  store i32 %i.at, ptr %i.au, align 4, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12288
  store <4 x i32> <i32 0, i32 8388608, i32 16777216, i32 25165824>, ptr %i.av, align 4, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12304
  store <4 x i32> <i32 33554432, i32 41943040, i32 50331648, i32 58720256>, ptr %i.aw, align 4, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12320
  store <4 x i32> <i32 67108864, i32 75497472, i32 83886080, i32 92274688>, ptr %i.ax, align 4, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12336
  store <4 x i32> <i32 100663296, i32 109051904, i32 117440512, i32 125829120>, ptr %i.ay, align 4, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12352
  store <4 x i32> <i32 134217728, i32 142606336, i32 150994944, i32 159383552>, ptr %i.az, align 4, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12368
  store <4 x i32> <i32 167772160, i32 176160768, i32 184549376, i32 192937984>, ptr %i.ba, align 4, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12384
  store <4 x i32> <i32 201326592, i32 209715200, i32 218103808, i32 226492416>, ptr %i.bb, align 4, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12400
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12432
  store <4 x i32> <i32 -2113929216, i32 -2105540608, i32 -2097152000, i32 -2088763392>, ptr %i.bd, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12448
  store <4 x i32> <i32 -2080374784, i32 -2071986176, i32 -2063597568, i32 -2055208960>, ptr %i.be, align 4, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 12464
  store <4 x i32> <i32 -2046820352, i32 -2038431744, i32 -2030043136, i32 -2021654528>, ptr %i.bf, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12480
  store <4 x i32> <i32 -2013265920, i32 -2004877312, i32 -1996488704, i32 -1988100096>, ptr %i.bg, align 4, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12496
  store <4 x i32> <i32 -1979711488, i32 -1971322880, i32 -1962934272, i32 -1954545664>, ptr %i.bh, align 4, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 12512
  store <4 x i32> <i32 -1946157056, i32 -1937768448, i32 -1929379840, i32 -1920991232>, ptr %i.bi, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12528
  store <4 x i32> <i32 234881024, i32 243269632, i32 251658240, i32 1199570944>, ptr %i.bc, align 4, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12416
  store <4 x i32> <i32 -2147483648, i32 -2139095040, i32 -2130706432, i32 -2122317824>, ptr %i.bk, align 4, !tbaa !9
  store <4 x i32> <i32 -1912602624, i32 -1904214016, i32 -1895825408, i32 -947912704>, ptr %i.bj, align 4, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12544
  store <8 x i16> <i16 0, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %i.bl, align 4, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12560
  store <8 x i16> splat (i16 1024), ptr %i.bm, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12576
  store <8 x i16> splat (i16 1024), ptr %i.bn, align 4, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12592
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12624
  store <8 x i16> splat (i16 1024), ptr %i.bp, align 4, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12640
  store <8 x i16> splat (i16 1024), ptr %i.bq, align 4, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12656
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 2048>, ptr %i.bo, align 4, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12608
  store <8 x i16> <i16 0, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %i.bs, align 4, !tbaa !16
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 2048>, ptr %i.br, align 4, !tbaa !16
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11, !13, !14}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !7, i64 0}
end_hunk_0
