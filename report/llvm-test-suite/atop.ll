loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pzero = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @atop(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %.preheader37

.preheader37:                                     ; preds = %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #6        ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader37
  %.023 = phi ptr [ %i.j, %bb.b ], [ %0, %.preheader37 ] ; 3 uses
  %i.e = load i8, ptr %.023, align 1, !tbaa !12   ; 3 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !13
  %i.i = and i16 %i.h, 8192
  %.not29 = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.023, i64 1
  br i1 %.not29, label %bb.c, label %bb.b, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %.not34 = icmp eq i8 %i.e, 45                   ; 2 uses
  %i.k = icmp eq i8 %i.e, 43
  %i.l = or i1 %.not34, %i.k
  %.124.idx = zext i1 %i.l to i64
  %.124 = getelementptr inbounds nuw i8, ptr %.023, i64 %.124.idx ; 2 uses
  %i.m = load i8, ptr %.124, align 1, !tbaa !12   ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !13
  %i.q = and i16 %i.p, 2048
  %.not30 = icmp eq i16 %i.q, 0
  br i1 %.not30, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @pzero, align 8, !tbaa !8
  %i.s = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.r) #5 ; 0 uses
  %i.t = call ptr @utop(i32 noundef 1000000000) #5
  %i.u = call ptr @psetq(ptr noundef nonnull %i.b, ptr noundef %i.t) #5 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %bb.d
  %i.v = phi ptr [ %.pre, %bb.d ], [ %14, %bb.m ] ; 8 uses
  %.2 = phi ptr [ %.124, %bb.d ], [ %15, %bb.m ]  ; 9 uses
  %.021.in = phi i8 [ %i.m, %bb.d ], [ %16, %bb.m ]
  %.021 = zext i8 %.021.in to i32
  %i.w = add nsw i32 %.021, -48                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12    ; 2 uses
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !13
  %i.ac = and i16 %i.ab, 2048
  %.not31.not = icmp eq i16 %i.ac, 0
  br i1 %.not31.not, label %._crit_edge, label %bb.f

vector.ph:                                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.020.lcssa.ph = phi i32 [ %i.co, %bb.l ], [ %i.ce, %bb.k ], [ %i.bu, %bb.j ], [ %i.bk, %bb.i ], [ %i.ba, %bb.h ], [ %i.aq, %bb.g ], [ %i.ag, %bb.f ]
  %.0.lcssa.ph.neg = phi i32 [ 7, %bb.l ], [ 6, %bb.k ], [ 5, %bb.j ], [ 4, %bb.i ], [ 3, %bb.h ], [ 2, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %trip.count.minus.1 = add nsw i32 %.0.lcssa.ph.neg, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %n.rnd.up = add nuw nsw i32 %.0.lcssa.ph.neg, 3
  %n.vec = and i32 %n.rnd.up, 12
  %1 = icmp eq i32 %n.vec, 4                      ; 3 uses
  %vec.phi.lcssa = select i1 %1, <4 x i32> <i32 10, i32 1, i32 1, i32 1>, <4 x i32> <i32 100, i32 10, i32 10, i32 10>
  %vec.ind.lcssa = select i1 %1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %.lcssa = select i1 %1, <4 x i32> <i32 100, i32 10, i32 10, i32 10>, <4 x i32> <i32 1000, i32 100, i32 100, i32 100>
  %.not66 = icmp ugt <4 x i32> %vec.ind.lcssa, %broadcast.splat
  %2 = select <4 x i1> %.not66, <4 x i32> %vec.phi.lcssa, <4 x i32> %.lcssa
  %3 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %2)
  br label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.ad = zext i8 %i.y to i32
  %i.ae = mul nsw i32 %i.w, 10
  %i.af = add nsw i32 %i.ae, -48
  %i.ag = add nsw i32 %i.af, %i.ad                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12  ; 2 uses
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !13
  %i.am = and i16 %i.al, 2048
  %.not31.1.a = icmp eq i16 %i.am, 0
  br i1 %.not31.1.a, label %vector.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = zext i8 %i.ai to i32
  %i.ao = mul nsw i32 %i.ag, 10
  %i.ap = add nsw i32 %i.ao, -48
  %i.aq = add nsw i32 %i.ap, %i.an                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.2, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12  ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !13
  %i.aw = and i16 %i.av, 2048
  %.not31.2 = icmp eq i16 %i.aw, 0
  br i1 %.not31.2, label %vector.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = zext i8 %i.as to i32
  %i.ay = mul nsw i32 %i.aq, 10
  %i.az = add nsw i32 %i.ay, -48
  %i.ba = add nsw i32 %i.az, %i.ax                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12  ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !13
  %i.bg = and i16 %i.bf, 2048
  %.not31.3 = icmp eq i16 %i.bg, 0
  br i1 %.not31.3, label %vector.ph, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = zext i8 %i.bc to i32
  %i.bi = mul nsw i32 %i.ba, 10
  %i.bj = add nsw i32 %i.bi, -48
  %i.bk = add nsw i32 %i.bj, %i.bh                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12  ; 2 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !13
  %i.bq = and i16 %i.bp, 2048
  %.not31.4 = icmp eq i16 %i.bq, 0
  br i1 %.not31.4, label %vector.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = zext i8 %i.bm to i32
  %i.bs = mul nsw i32 %i.bk, 10
  %i.bt = add nsw i32 %i.bs, -48
  %i.bu = add nsw i32 %i.bt, %i.br                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.2, i64 6
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !12  ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !13
  %i.ca = and i16 %i.bz, 2048
  %.not31.5 = icmp eq i16 %i.ca, 0
  br i1 %.not31.5, label %vector.ph, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = zext i8 %i.bw to i32
  %i.cc = mul nsw i32 %i.bu, 10
  %i.cd = add nsw i32 %i.cc, -48
  %i.ce = add nsw i32 %i.cd, %i.cb                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2, i64 7
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !12  ; 2 uses
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !13
  %i.ck = and i16 %i.cj, 2048
  %.not31.6 = icmp eq i16 %i.ck, 0
  br i1 %.not31.6, label %vector.ph, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = zext i8 %i.cg to i32
  %i.cm = mul i32 %i.ce, 10
  %i.cn = add i32 %i.cm, -48
  %i.co = add i32 %i.cn, %i.cl                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !12  ; 2 uses
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !13
  %i.cu = and i16 %i.ct, 2048
  %.not31.7 = icmp eq i16 %i.cu, 0
  br i1 %.not31.7, label %vector.ph, label %bb.m

bb.m:                                             ; preds = %bb.l
  %4 = zext i8 %i.cq to i32
  %5 = mul i32 %i.co, 10
  %6 = add i32 %5, -48
  %7 = add i32 %6, %4
  %8 = load ptr, ptr %i.a, align 8, !tbaa !8
  %9 = load ptr, ptr %i.b, align 8, !tbaa !8
  %10 = call ptr @pmul(ptr noundef %8, ptr noundef %9) #5
  %11 = call ptr @utop(i32 noundef %7) #5
  %12 = call ptr @padd(ptr noundef %10, ptr noundef %11) #5
  %13 = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %12) #5 ; 0 uses
  %14 = load ptr, ptr %i.c, align 8, !tbaa !10    ; 2 uses
  %15 = getelementptr i8, ptr %.2, i64 9          ; 2 uses
  %16 = load i8, ptr %15, align 1, !tbaa !12      ; 2 uses
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !13
  %20 = and i16 %19, 2048
  %.not32 = icmp eq i16 %20, 0
  br i1 %.not32, label %.loopexit, label %bb.e, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.e, %vector.ph
  %.020.lcssa54 = phi i32 [ %.020.lcssa.ph, %vector.ph ], [ %i.w, %bb.e ]
  %.019.lcssa = phi i32 [ %3, %vector.ph ], [ 10, %bb.e ]
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.cw = call ptr @utop(i32 noundef %.019.lcssa) #5
  %i.cx = call ptr @pmul(ptr noundef %i.cv, ptr noundef %i.cw) #5
  %i.cy = call ptr @utop(i32 noundef %.020.lcssa54) #5
  %i.cz = call ptr @padd(ptr noundef %i.cx, ptr noundef %i.cy) #5
  %i.da = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.cz) #5 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %._crit_edge
  br i1 %.not34, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.loopexit
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dc = call ptr @pneg(ptr noundef %i.db) #5
  %i.dd = call ptr @psetq(ptr noundef nonnull %i.a, ptr noundef %i.dc) #5 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.n, %.loopexit
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %.not35 = icmp eq ptr %.pr, null
  br i1 %.not35, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = load i16, ptr %.pr, align 2, !tbaa !13
  %i.df = add i16 %i.de, -1                       ; 2 uses
  store i16 %i.df, ptr %.pr, align 2, !tbaa !13
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.dh = call i32 (ptr, ...) @pfree(ptr noundef nonnull %.pr) #5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.q, %bb.p, %bb.o
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.dj = call ptr @presult(ptr noundef %i.di) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %i.dj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

declare ptr @psetq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @utop(i32 noundef) local_unnamed_addr #3

declare ptr @padd(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pmul(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pneg(ptr noundef) local_unnamed_addr #3

declare i32 @pfree(...) local_unnamed_addr #3

declare ptr @presult(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

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
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 short", !9, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
end_hunk_0
