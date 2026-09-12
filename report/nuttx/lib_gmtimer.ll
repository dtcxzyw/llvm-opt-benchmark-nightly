Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_gmtimer?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.compiler.used = appending global [2 x ptr] [ptr @memcpy, ptr @memset], section "llvm.metadata"

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noundef ptr @gmtime_r(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned captures(ret: address, provenance) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = insertelement <2 x i64> poison, i64 %i.a, i64 0
  %i.c = shufflevector <2 x i64> %i.b, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.d = sdiv <2 x i64> %i.c, <i64 86400, i64 126230400> ; 2 uses
  %i.e = extractelement <2 x i64> %i.d, i64 1     ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %sext.i = mul i64 %i.e, 6274947219456
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = extractelement <2 x i64> %i.d, i64 0     ; 2 uses
  %i.i = sub nsw i64 %i.h, %i.g                   ; 3 uses
  %i.j = shl i32 %i.f, 2                          ; 2 uses
  %i.k = add nsw i32 %i.j, 1970                   ; 2 uses
  %i.l = tail call i32 @clock_isleapyear(i32 noundef %i.k) #5
  %i.m = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.n = select i1 %i.m, i64 366, i64 365         ; 2 uses
  %.not44.i = icmp slt i64 %i.i, %i.n
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.03647.i = phi i64 [ %i.t, %.lr.ph.i ], [ %i.n, %bb.a ]
  %.04046.i = phi i32 [ %i.o, %.lr.ph.i ], [ %i.j, %bb.a ] ; 2 uses
  %.04245.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.i, %bb.a ]
  %i.o = add nsw i32 %.04046.i, 1
  %i.p = sub nuw nsw i64 %.04245.i, %.03647.i     ; 3 uses
  %i.q = add nsw i32 %.04046.i, 1971              ; 2 uses
  %i.r = tail call i32 @clock_isleapyear(i32 noundef %i.q) #5
  %i.s = icmp ne i32 %i.r, 0                      ; 2 uses
  %i.t = select i1 %i.s, i64 366, i64 365         ; 2 uses
  %.not.i = icmp samesign ult i64 %i.p, %i.t
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.pre-phi.i = phi i32 [ %i.k, %bb.a ], [ %i.q, %.lr.ph.i ] ; 3 uses
  %.042.lcssa.i = phi i64 [ %i.i, %bb.a ], [ %i.p, %.lr.ph.i ] ; 3 uses
  %.0.in.lcssa.i = phi i1 [ %i.m, %bb.a ], [ %i.s, %.lr.ph.i ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %._crit_edge.i
  %.038.i = phi i32 [ 0, %._crit_edge.i ], [ %.139.i, %bb.e ] ; 2 uses
  %.037.i = phi i32 [ 11, %._crit_edge.i ], [ %.1.i, %bb.e ] ; 2 uses
  %i.u = add nsw i32 %.037.i, %.038.i
  %i.v = ashr i32 %i.u, 1                         ; 4 uses
  %i.w = add nsw i32 %i.v, 1                      ; 3 uses
  %i.x = tail call i32 @clock_daysbeforemonth(i32 noundef %i.w, i1 noundef zeroext %.0.in.lcssa.i) #5
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %.042.lcssa.i, %i.y
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = tail call i32 @clock_daysbeforemonth(i32 noundef %i.v, i1 noundef zeroext %.0.in.lcssa.i) #5
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %.042.lcssa.i, %i.ab
  br i1 %i.ac, label %bb.d, label %clock_utc2calendar.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = add nsw i32 %i.v, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.139.i = phi i32 [ %.038.i, %bb.d ], [ %i.w, %bb.b ] ; 4 uses
  %.1.i = phi i32 [ %i.ad, %bb.d ], [ %.037.i, %bb.b ] ; 2 uses
  %i.ae = icmp slt i32 %.139.i, %.1.i
  br i1 %i.ae, label %bb.b, label %._crit_edge52.i, !llvm.loop !8

._crit_edge52.i:                                  ; preds = %bb.e
  %.pre53.i = add nsw i32 %.139.i, 1
  br label %clock_utc2calendar.exit, !llvm.loop !8

clock_utc2calendar.exit:                          ; preds = %bb.c, %._crit_edge52.i
  %.pre-phi54.i = phi i32 [ %.pre53.i, %._crit_edge52.i ], [ %i.w, %bb.c ] ; 2 uses
  %.141.i = phi i32 [ %.139.i, %._crit_edge52.i ], [ %i.v, %bb.c ]
  %.neg = mul nsw i64 %i.h, -86400
  %i.af = add i64 %.neg, %i.a                     ; 2 uses
  %i.ag = sdiv i64 %i.af, 3600                    ; 2 uses
  %sext = shl i64 %i.ag, 32
  %i.ah = ashr exact i64 %sext, 32
  %.neg27 = mul nsw i64 %i.ah, -3600
  %i.ai = add i64 %.neg27, %i.af                  ; 2 uses
  %i.aj = sdiv i64 %i.ai, 60                      ; 2 uses
  %.neg29 = mul i64 %i.aj, 4294967236
  %i.ak = add i64 %.neg29, %i.ai
  %i.al = trunc i64 %i.ak to i32
  %i.am = trunc i64 %i.aj to i32
  %i.an = trunc i64 %i.ag to i32
  %i.ao = tail call i32 @clock_daysbeforemonth(i32 noundef %.141.i, i1 noundef zeroext %.0.in.lcssa.i) #5
  %i.ap = trunc i64 %.042.lcssa.i to i32
  %i.aq = add i32 %i.ap, 1
  %i.ar = sub i32 %i.aq, %i.ao                    ; 3 uses
  %i.as = add nsw i32 %.pre-phi.i, -1900
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.as, ptr %i.at, align 4
  %i.au = add nsw i32 %.pre-phi54.i, -1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.ar, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.an, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.am, ptr %i.ay, align 4
  store i32 %i.al, ptr %1, align 8
  %i.az = tail call i32 @clock_dayoftheweek(i32 noundef %i.ar, i32 noundef %.pre-phi54.i, i32 noundef %.pre-phi.i) #5
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = add nsw i32 %i.ar, -1
  %i.bc = load i32, ptr %i.av, align 8
  %i.bd = tail call i32 @clock_isleapyear(i32 noundef %.pre-phi.i) #5
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = tail call i32 @clock_daysbeforemonth(i32 noundef %i.bc, i1 noundef zeroext %i.be) #5
  %i.bg = add nsw i32 %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  ret ptr %1
}

; Function Attrs: noredzone optsize
declare dso_local i32 @clock_dayoftheweek(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @clock_daysbeforemonth(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone optsize
declare dso_local i32 @clock_isleapyear(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local noundef ptr @localtime_r(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned captures(ret: address, provenance) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @gmtime_r(ptr noundef %0, ptr noundef %1) #6 ; 0 uses
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noredzone nounwind optsize }
attributes #6 = { noredzone optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !9}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
