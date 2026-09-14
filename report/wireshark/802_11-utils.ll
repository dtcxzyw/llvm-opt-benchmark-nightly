Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/802_11-utils?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"2.4 GHz\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"6 GHz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"5 GHz\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%u [%s %u]\00", align 1
@freq_cvt = internal unnamed_addr constant [5 x { i32, i32, i32, i8, [3 x i8] }] [{ i32, i32, i32, i8, [3 x i8] } { i32 2412, i32 2472, i32 1, i8 1, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 2484, i32 2484, i32 14, i8 1, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 5000, i32 5925, i32 0, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 5950, i32 7125, i32 0, i8 0, [3 x i8] zeroinitializer }, { i32, i32, i32, i8, [3 x i8] } { i32 4910, i32 4980, i32 182, i8 0, [3 x i8] zeroinitializer }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define i32 @ieee80211_mhz_to_chan(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ult i32 %0, 2412
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp ugt i32 %0, 2472
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.b
  %.lcssa18 = phi ptr [ @freq_cvt, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 16), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 32), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 48), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 64), %bb.i ]
  %.lcssa.neg = phi i32 [ -2412, %bb.b ], [ -2484, %bb.e ], [ -5000, %bb.g ], [ -5950, %bb.h ], [ -4910, %bb.i ]
  %i.a = add nsw i32 %.lcssa.neg, %0
  %i.b = udiv i32 %i.a, 5
  %i.c = getelementptr i8, ptr %.lcssa18, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %i.b
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %.not.1 = icmp ult i32 %0, 2484
  br i1 %.not.1, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.1.not = icmp eq i32 %0, 2484
  br i1 %.not14.1.not, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.2 = icmp ult i32 %0, 5000
  br i1 %.not.2, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not14.2 = icmp ugt i32 %0, 5925
  br i1 %.not14.2, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.f = add i32 %0, -7126
  %or.cond = icmp ult i32 %i.f, -1176
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.g = add nsw i32 %0, -4981
  %or.cond34 = icmp ult i32 %i.g, -71
  br i1 %or.cond34, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.a, %bb.i, %bb.c
  %.010 = phi i32 [ %i.e, %bb.c ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.a ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define range(i32 0, 7126) i32 @ieee80211_chan_to_mhz(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  br i1 %1, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp slt i32 %0, 1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not18 = icmp samesign ugt i32 %0, 13
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.lcssa21 = phi i32 [ 2412, %bb.c ], [ 2484, %bb.e ], [ 5000, %bb.g ], [ 5950, %bb.h ]
  %.lcssa.neg = phi i32 [ -1, %bb.c ], [ -14, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ]
  %i.a = add nsw i32 %.lcssa.neg, %0
  %i.b = mul nsw i32 %i.a, 5
  %i.c = add nsw i32 %.lcssa21, %i.b
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %.not18.1.not = icmp eq i32 %0, 14
  br i1 %.not18.1.not, label %bb.d, label %.loopexit

bb.f:                                             ; preds = %bb.a
  %.not.2 = icmp slt i32 %0, 0
  br i1 %.not.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not18.2 = icmp samesign ugt i32 %0, 185
  br i1 %.not18.2, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g
  %.not18.3 = icmp samesign ugt i32 %0, 235
  br i1 %.not18.3, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.b, %bb.e, %bb.f, %bb.h, %bb.d
  %.014 = phi i32 [ %i.c, %bb.d ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(none) uwtable
define i32 @ieee80211_chan_band_to_mhz(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i1 %1 to i8                         ; 5 uses
  %i.b = select i1 %2, i64 3, i64 0               ; 5 uses
  %i.c = getelementptr [16 x i8], ptr @freq_cvt, i64 %i.b ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 12
  %i.e = load i8, ptr %i.d, align 4, !range !6, !noundef !7
  %i.f = icmp eq i8 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %.not = icmp slt i32 %0, %i.h
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = load i32, ptr %i.c, align 16             ; 2 uses
  %i.l = sub i32 %i.j, %i.k
  %i.m = udiv i32 %i.l, 5
  %i.n = add i32 %i.m, %i.h
  %.not20 = icmp sgt i32 %0, %i.n
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.r, %bb.o, %bb.k, %bb.g, %bb.c
  %.lcssa28 = phi i32 [ %i.k, %bb.c ], [ %i.z, %bb.g ], [ %i.al, %bb.k ], [ %i.ax, %bb.o ], [ %i.bk, %bb.r ]
  %.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.w, %bb.g ], [ %i.ai, %bb.k ], [ %i.au, %bb.o ], [ %i.bh, %bb.r ]
  %i.o = sub i32 %0, %.lcssa
  %i.p = mul i32 %i.o, 5
  %i.q = add i32 %.lcssa28, %i.p
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = getelementptr [16 x i8], ptr @freq_cvt, i64 %i.b ; 4 uses
  %3 = getelementptr i8, ptr %i.r, i64 16
  %i.s = getelementptr i8, ptr %i.r, i64 28
  %i.t = load i8, ptr %i.s, align 4, !range !6, !noundef !7
  %i.u = icmp eq i8 %i.t, %i.a
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.r, i64 24
  %i.w = load i32, ptr %i.v, align 8              ; 3 uses
  %.not.1 = icmp slt i32 %0, %i.w
  br i1 %.not.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.r, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load i32, ptr %3, align 16               ; 2 uses
  %i.aa = sub i32 %i.y, %i.z
  %i.ab = udiv i32 %i.aa, 5
  %i.ac = add i32 %i.ab, %i.w
  %.not20.1 = icmp sgt i32 %0, %i.ac
  br i1 %.not20.1, label %bb.h, label %bb.d

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %i.b, 2    ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 5
  br i1 %exitcond.not.1, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr [16 x i8], ptr @freq_cvt, i64 %indvars.iv.next.1 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 12
  %i.af = load i8, ptr %i.ae, align 4, !range !6, !noundef !7
  %i.ag = icmp eq i8 %i.af, %i.a
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %i.ad, i64 8
  %i.ai = load i32, ptr %i.ah, align 8            ; 3 uses
  %.not.2 = icmp slt i32 %0, %i.ai
  br i1 %.not.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.ad, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = load i32, ptr %i.ad, align 16           ; 2 uses
  %i.am = sub i32 %i.ak, %i.al
  %i.an = udiv i32 %i.am, 5
  %i.ao = add i32 %i.an, %i.ai
  %.not20.2 = icmp sgt i32 %0, %i.ao
  br i1 %.not20.2, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %indvars.iv.next.2 = add nuw nsw i64 %i.b, 3    ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 5
  br i1 %exitcond.not.2, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr [16 x i8], ptr @freq_cvt, i64 %indvars.iv.next.2 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 12
  %i.ar = load i8, ptr %i.aq, align 4, !range !6, !noundef !7
  %i.as = icmp eq i8 %i.ar, %i.a
  br i1 %i.as, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr i8, ptr %i.ap, i64 8
  %i.au = load i32, ptr %i.at, align 8            ; 3 uses
  %.not.3 = icmp slt i32 %0, %i.au
  br i1 %.not.3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr i8, ptr %i.ap, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = load i32, ptr %i.ap, align 16           ; 2 uses
  %i.ay = sub i32 %i.aw, %i.ax
  %i.az = udiv i32 %i.ay, 5
  %i.ba = add i32 %i.az, %i.au
  %.not20.3 = icmp sgt i32 %0, %i.ba
  br i1 %.not20.3, label %bb.p, label %bb.d

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.bb = getelementptr [16 x i8], ptr @freq_cvt, i64 %i.b ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 64
  %i.bd = getelementptr i8, ptr %i.bb, i64 76
  %i.be = load i8, ptr %i.bd, align 4, !range !6, !noundef !7
  %i.bf = icmp eq i8 %i.be, %i.a
  br i1 %i.bf, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr i8, ptr %i.bb, i64 72
  %i.bh = load i32, ptr %i.bg, align 8            ; 3 uses
  %.not.4 = icmp slt i32 %0, %i.bh
  br i1 %.not.4, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr i8, ptr %i.bb, i64 68
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = load i32, ptr %i.bc, align 16           ; 2 uses
  %i.bl = sub i32 %i.bj, %i.bk
  %i.bm = udiv i32 %i.bl, 5
  %i.bn = add i32 %i.bm, %i.bh
  %.not20.4 = icmp sgt i32 %0, %i.bn
  br i1 %.not20.4, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.h, %bb.l, %bb.r, %bb.q, %bb.p, %bb.d
  %.016 = phi i32 [ %i.q, %bb.d ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.l ], [ 0, %bb.h ]
  ret i32 %.016
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias ptr @ieee80211_mhz_to_str(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp ult i32 %0, 2412
  br i1 %.not.i, label %ieee80211_mhz_to_chan.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14.i = icmp ugt i32 %0, 2472
  br i1 %.not14.i, label %bb.c, label %ieee80211_mhz_to_chan.exit

bb.c:                                             ; preds = %bb.b
  %.not.1.i = icmp ult i32 %0, 2484
  br i1 %.not.1.i, label %ieee80211_mhz_to_chan.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not14.1.not.i = icmp eq i32 %0, 2484
  br i1 %.not14.1.not.i, label %ieee80211_mhz_to_chan.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.2.i = icmp ult i32 %0, 5000
  br i1 %.not.2.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not14.2.i = icmp ugt i32 %0, 5925
  br i1 %.not14.2.i, label %bb.g, label %ieee80211_mhz_to_chan.exit

bb.g:                                             ; preds = %bb.f
  %i.a = add i32 %0, -7126
  %or.cond.i = icmp ult i32 %i.a, -1176
  br i1 %or.cond.i, label %ieee80211_mhz_to_chan.exit.thread, label %ieee80211_mhz_to_chan.exit

bb.h:                                             ; preds = %bb.e
  %i.b = add nsw i32 %0, -4981
  %or.cond34.i = icmp ult i32 %i.b, -71
  br i1 %or.cond34.i, label %ieee80211_mhz_to_chan.exit.thread, label %ieee80211_mhz_to_chan.exit

ieee80211_mhz_to_chan.exit:                       ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.lcssa18.i = phi ptr [ @freq_cvt, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 16), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 32), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 48), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @freq_cvt, i64 64), %bb.h ]
  %.lcssa.neg.i = phi i32 [ -2412, %bb.b ], [ -2484, %bb.d ], [ -5000, %bb.f ], [ -5950, %bb.g ], [ -4910, %bb.h ]
  %i.c = add nsw i32 %.lcssa.neg.i, %0
  %i.d = udiv i32 %i.c, 5
  %i.e = getelementptr i8, ptr %.lcssa18.i, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.d, %i.f                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %ieee80211_mhz_to_chan.exit.thread, label %bb.i

ieee80211_mhz_to_chan.exit.thread:                ; preds = %bb.a, %bb.g, %bb.h, %bb.c, %ieee80211_mhz_to_chan.exit
  %i.i = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef %0)
  br label %bb.j

bb.i:                                             ; preds = %ieee80211_mhz_to_chan.exit
  %i.j = icmp samesign ult i32 %0, 2485
  %i.k = add nsw i32 %0, -5950
  %or.cond = icmp ult i32 %i.k, 1176
  %.str.1..str.2 = select i1 %or.cond, ptr @.str.1, ptr @.str.2
  %.0 = select i1 %i.j, ptr @.str, ptr %.str.1..str.2
  %i.l = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef %0, ptr noundef nonnull %.0, i32 noundef %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %ieee80211_mhz_to_chan.exit.thread
  %.010 = phi ptr [ %i.i, %ieee80211_mhz_to_chan.exit.thread ], [ %i.l, %bb.i ]
  ret ptr %.010
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
end_hunk_0
