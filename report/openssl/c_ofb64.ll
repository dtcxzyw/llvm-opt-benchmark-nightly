Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/c_ofb64?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @CAST_ofb64_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 12 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %i.c = load i32, ptr %5, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %6 = load i8, ptr %4, align 1, !tbaa !10        ; 2 uses
  %7 = zext i8 %6 to i32
  %8 = shl nuw i32 %7, 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %9 = load i8, ptr %i.d, align 1, !tbaa !10      ; 2 uses
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = or disjoint i32 %11, %8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %13 = load i8, ptr %i.e, align 1, !tbaa !10     ; 2 uses
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %16 = load i8, ptr %i.f, align 1, !tbaa !10     ; 2 uses
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %12, %15
  %19 = or disjoint i32 %18, %17                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %20 = load i8, ptr %i.g, align 1, !tbaa !10     ; 2 uses
  %21 = zext i8 %20 to i32
  %22 = shl nuw i32 %21, 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %23 = load i8, ptr %i.h, align 1, !tbaa !10     ; 2 uses
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = or disjoint i32 %25, %22
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %27 = load i8, ptr %i.i, align 1, !tbaa !10     ; 2 uses
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = load i8, ptr %i.j, align 1, !tbaa !10     ; 2 uses
  %31 = zext i8 %30 to i32
  %32 = or disjoint i32 %26, %29
  %33 = or disjoint i32 %32, %31                  ; 2 uses
  store i32 %19, ptr %i.b, align 4, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 %33, ptr %i.k, align 4, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 %6, ptr %i.a, align 1, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store i8 %9, ptr %i.l, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %13, ptr %i.m, align 1, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i8 %16, ptr %i.n, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  store i8 %20, ptr %i.o, align 1, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  store i8 %23, ptr %i.p, align 1, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  store i8 %27, ptr %i.q, align 1, !tbaa !10
  store i8 %30, ptr %i.r, align 1, !tbaa !10
  %.07983 = and i32 %i.c, 7                       ; 2 uses
  %.not84 = icmp eq i64 %2, 0
  br i1 %.not84, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.s = phi i32 [ %i.an, %bb.c ], [ %33, %bb.a ]
  %i.t = phi i32 [ %i.ao, %bb.c ], [ %19, %bb.a ]
  %.in = phi i64 [ %i.u, %bb.c ], [ %2, %bb.a ]
  %.07988 = phi i32 [ %.079, %bb.c ], [ %.07983, %bb.a ] ; 3 uses
  %.087 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.08086 = phi ptr [ %i.ap, %bb.c ], [ %0, %bb.a ] ; 2 uses
  %.08185 = phi ptr [ %i.av, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.u = add nsw i64 %.in, -1                     ; 2 uses
  %i.v = icmp eq i32 %.07988, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @CAST_encrypt(ptr noundef nonnull %i.b, ptr noundef %3) #3
  %i.w = load i32, ptr %i.b, align 4, !tbaa !9    ; 5 uses
  %i.x = lshr i32 %i.w, 24
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.a, align 1, !tbaa !10
  %i.z = lshr i32 %i.w, 16
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %i.l, align 1, !tbaa !10
  %i.ab = lshr i32 %i.w, 8
  %i.ac = trunc i32 %i.ab to i8
  store i8 %i.ac, ptr %i.m, align 1, !tbaa !10
  %i.ad = trunc i32 %i.w to i8
  store i8 %i.ad, ptr %i.n, align 1, !tbaa !10
  %i.ae = load i32, ptr %i.k, align 4, !tbaa !9   ; 5 uses
  %i.af = lshr i32 %i.ae, 24
  %i.ag = trunc nuw i32 %i.af to i8
  store i8 %i.ag, ptr %i.o, align 1, !tbaa !10
  %i.ah = lshr i32 %i.ae, 16
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.p, align 1, !tbaa !10
  %i.aj = lshr i32 %i.ae, 8
  %i.ak = trunc i32 %i.aj to i8
  store i8 %i.ak, ptr %i.q, align 1, !tbaa !10
  %i.al = trunc i32 %i.ae to i8
  store i8 %i.al, ptr %i.r, align 1, !tbaa !10
  %i.am = add nsw i32 %.087, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.an = phi i32 [ %i.ae, %bb.b ], [ %i.s, %.lr.ph ] ; 5 uses
  %i.ao = phi i32 [ %i.w, %bb.b ], [ %i.t, %.lr.ph ] ; 5 uses
  %.1 = phi i32 [ %i.am, %bb.b ], [ %.087, %.lr.ph ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.08086, i64 1
  %i.aq = load i8, ptr %.08086, align 1, !tbaa !10
  %i.ar = zext nneg i32 %.07988 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = xor i8 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %.08185, i64 1
  store i8 %i.au, ptr %.08185, align 1, !tbaa !10
  %i.aw = add nuw nsw i32 %.07988, 1
  %.079 = and i32 %i.aw, 7                        ; 3 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.c
  %i.ax = icmp eq i32 %.1, 0
  br i1 %i.ax, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ay = lshr i32 %i.ao, 24
  %i.az = trunc nuw i32 %i.ay to i8
  store i8 %i.az, ptr %4, align 1, !tbaa !10
  %i.ba = lshr i32 %i.ao, 16
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.d, align 1, !tbaa !10
  %i.bc = lshr i32 %i.ao, 8
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.e, align 1, !tbaa !10
  %i.be = trunc i32 %i.ao to i8
  store i8 %i.be, ptr %i.f, align 1, !tbaa !10
  %i.bf = lshr i32 %i.an, 24
  %i.bg = trunc nuw i32 %i.bf to i8
  store i8 %i.bg, ptr %i.g, align 1, !tbaa !10
  %i.bh = lshr i32 %i.an, 16
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.h, align 1, !tbaa !10
  %i.bj = lshr i32 %i.an, 8
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.i, align 1, !tbaa !10
  %i.bl = trunc i32 %i.an to i8
  store i8 %i.bl, ptr %i.j, align 1, !tbaa !10
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  %.079.lcssa94 = phi i32 [ %.079, %._crit_edge ], [ %.079, %bb.d ], [ %.07983, %bb.a ]
  store i32 %.079.lcssa94, ptr %5, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @CAST_encrypt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !11}
!9 = !{!5, !5, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
