loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ptoa(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %0, align 2, !tbaa !8
  %i.e = add i16 %i.d, 1
  store i16 %i.e, ptr %0, align 2, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !10
  store ptr null, ptr %i.b, align 8, !tbaa !10
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i16, ptr %i.f, align 2, !tbaa !12
  %i.h = zext i16 %i.g to i32
  %i.i = mul nuw nsw i32 %i.h, 525
  %i.j = udiv i32 %i.i, 109
  %i.k = add nuw nsw i32 %i.j, 11
  %i.l = zext nneg i32 %i.k to i64                ; 3 uses
  %i.m = tail call ptr @malloc(i64 noundef %i.l) #5 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @pabs(ptr noundef nonnull %0) #4
  %i.p = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef %i.o) #4 ; 0 uses
  %i.q = call ptr @utop(i32 noundef 1000000000) #4
  %i.r = call ptr @psetq(ptr noundef nonnull %i.c, ptr noundef %i.q) #4 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.l ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -1
  store i8 0, ptr %i.t, align 1, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.v = load i8, ptr %i.u, align 2, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %i.w = phi ptr [ %i.s, %bb.d ], [ %i.az, %bb.e ] ; 7 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.z = call ptr @pdivmod(ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #4 ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ab = call i32 @ptou(ptr noundef %i.aa) #4    ; 9 uses
  %i.ac = urem i32 %i.ab, 10
  %i.ad = trunc nuw nsw i32 %i.ac to i8
  %i.ae = or disjoint i8 %i.ad, 48
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -2
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !14
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -6
  %1 = udiv i32 %i.ab, 10
  %2 = udiv i32 %i.ab, 100
  %3 = udiv i32 %i.ab, 1000
  %4 = udiv i32 %i.ab, 10000
  %5 = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.ah = insertelement <4 x i32> %5, i32 %3, i64 1
  %6 = insertelement <4 x i32> %i.ah, i32 %2, i64 2
  %7 = insertelement <4 x i32> %6, i32 %1, i64 3
  %i.ai = urem <4 x i32> %7, splat (i32 10)
  %i.aj = trunc nuw nsw <4 x i32> %i.ai to <4 x i8>
  %i.ak = or disjoint <4 x i8> %i.aj, splat (i8 48)
  store <4 x i8> %i.ak, ptr %i.ag, align 1, !tbaa !14
  %i.al = udiv i32 %i.ab, 100000
  %.lhs.trunc = trunc nuw i32 %i.al to i16
  %i.am = urem i16 %.lhs.trunc, 10
  %i.an = trunc nuw nsw i16 %i.am to i8
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = getelementptr inbounds i8, ptr %i.w, i64 -7
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !14
  %i.aq = udiv i32 %i.ab, 1000000
  %.lhs.trunc62 = trunc nuw nsw i32 %i.aq to i16
  %i.ar = urem i16 %.lhs.trunc62, 10
  %i.as = trunc nuw nsw i16 %i.ar to i8
  %i.at = or disjoint i8 %i.as, 48
  %i.au = getelementptr inbounds i8, ptr %i.w, i64 -8
  store i8 %i.at, ptr %i.au, align 1, !tbaa !14
  %i.av = udiv i32 %i.ab, 10000000
  %.lhs.trunc64 = trunc nuw nsw i32 %i.av to i16
  %i.aw = urem i16 %.lhs.trunc64, 10
  %i.ax = trunc nuw nsw i16 %i.aw to i8
  %i.ay = or disjoint i8 %i.ax, 48
  %i.az = getelementptr inbounds i8, ptr %i.w, i64 -9 ; 2 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !14
  %i.ba = udiv i32 %i.ab, 100000000
  %.lhs.trunc66 = trunc nuw nsw i32 %i.ba to i8
  %i.bb = urem i8 %.lhs.trunc66, 10
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = getelementptr inbounds i8, ptr %i.w, i64 -10
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !14
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.bf = call i32 @pcmpz(ptr noundef %i.be) #4
  %.not50 = icmp eq i32 %i.bf, 0
  br i1 %.not50, label %.preheader.preheader, label %bb.e, !llvm.loop !16

.preheader.preheader:                             ; preds = %bb.e
  %i.bg = getelementptr inbounds i8, ptr %i.w, i64 -10
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %.2 = phi ptr [ %i.bi, %bb.f ], [ %i.bg, %.preheader.preheader ] ; 4 uses
  %i.bh = load i8, ptr %.2, align 1, !tbaa !14
  switch i8 %i.bh, label %.loopexit [
    i8 48, label %bb.f
    i8 0, label %bb.g
  ]

bb.f:                                             ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %.preheader, !llvm.loop !18

bb.g:                                             ; preds = %.preheader
  %i.bj = getelementptr inbounds i8, ptr %.2, i64 -1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.g
  %.3 = phi ptr [ %i.bj, %bb.g ], [ %.2, %.preheader ] ; 2 uses
  %.not51 = icmp eq i8 %i.v, 0
  br i1 %.not51, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bk = getelementptr inbounds i8, ptr %.3, i64 -1 ; 2 uses
  store i8 45, ptr %i.bk, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.4 = phi ptr [ %i.bk, %bb.h ], [ %.3, %.loopexit ] ; 3 uses
  %i.bl = icmp ugt ptr %.4, %i.m
  br i1 %i.bl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %.4 to i64
  %i.bn = ptrtoint ptr %i.m to i64
  %.neg = add i64 %i.l, %i.bn
  %i.bo = sub i64 %.neg, %i.bm
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %.4, i64 %i.bo, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !10  ; 4 uses
  %.not52 = icmp eq ptr %i.bp, null
  br i1 %.not52, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !8
  %i.br = add i16 %i.bq, -1                       ; 2 uses
  store i16 %i.br, ptr %i.bp, align 2, !tbaa !8
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.bp) #4 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !10  ; 4 uses
  %.not53 = icmp eq ptr %i.bu, null
  br i1 %.not53, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !8
  %i.bw = add i16 %i.bv, -1                       ; 2 uses
  store i16 %i.bw, ptr %i.bu, align 2, !tbaa !8
  %i.bx = icmp eq i16 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.bu) #4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %.not54 = icmp eq ptr %i.bz, null
  br i1 %.not54, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !8
  %i.cb = add i16 %i.ca, -1                       ; 2 uses
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !8
  %i.cc = icmp eq i16 %i.cb, 0
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cd = call i32 (ptr, ...) @pfree(ptr noundef nonnull %i.bz) #4 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  br i1 %.not, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i16, ptr %0, align 2, !tbaa !8
  %i.cf = add i16 %i.ce, -1                       ; 2 uses
  store i16 %i.cf, ptr %0, align 2, !tbaa !8
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ch = call i32 (ptr, ...) @pfree(ptr noundef nonnull %0) #4 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

declare ptr @psetq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pabs(ptr noundef) local_unnamed_addr #3

declare ptr @utop(i32 noundef) local_unnamed_addr #3

declare ptr @pdivmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ptou(ptr noundef) local_unnamed_addr #3

declare i32 @pcmpz(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @pfree(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { allocsize(0) }

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
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !9, i64 4}
!13 = !{!"", !9, i64 0, !9, i64 2, !9, i64 4, !6, i64 6, !6, i64 8}
!14 = !{!6, !6, i64 0}
!15 = !{!13, !6, i64 6}
end_hunk_0
