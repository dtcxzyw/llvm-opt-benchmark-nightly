Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/rand?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@alnum = internal unnamed_addr constant [63 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00", align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_rand_bytes(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.unr-lcssa
  %.01433 = phi i64 [ %i.ac, %.unr-lcssa ], [ %2, %bb.a ] ; 3 uses
  %.01532 = phi ptr [ %.lcssa, %.unr-lcssa ], [ %1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call i64 @llvm.umin.i64(i64 %.01433, i64 4) ; 4 uses
  %i.c = call i32 @Curl_ssl_random(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4) #4 ; 2 uses
  %.not22 = icmp eq i32 %i.c, 0
  br i1 %.not22, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !11  ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.d = phi i32 [ %i.h, %.preheader.prol ], [ %.pre, %.preheader.preheader ]
  %.01230.prol = phi i64 [ %i.i, %.preheader.prol ], [ %i.b, %.preheader.preheader ]
  %.11628.prol = phi ptr [ %i.f, %.preheader.prol ], [ %.01532, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %.11628.prol, i64 1 ; 3 uses
  store i8 %i.e, ptr %.11628.prol, align 1, !tbaa !12
  %i.g = load i32, ptr %i.a, align 4, !tbaa !11
  %i.h = lshr i32 %i.g, 8                         ; 3 uses
  store i32 %i.h, ptr %i.a, align 4, !tbaa !11
  %i.i = add nsw i64 %.01230.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !15

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.f, %.preheader.prol ]
  %.unr = phi i32 [ %.pre, %.preheader.preheader ], [ %i.h, %.preheader.prol ]
  %.01230.unr = phi i64 [ %i.b, %.preheader.preheader ], [ %i.i, %.preheader.prol ]
  %.11628.unr = phi ptr [ %.01532, %.preheader.preheader ], [ %i.f, %.preheader.prol ]
  %i.j = icmp ult i64 %.01433, 4
  br i1 %i.j, label %.unr-lcssa, label %.preheader

.thread:                                          ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.k = phi i32 [ %i.aa, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.01230 = phi i64 [ %i.ab, %.preheader ], [ %.01230.unr, %.preheader.prol.loopexit ]
  %.11628 = phi ptr [ %i.y, %.preheader ], [ %.11628.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.11628, i64 1
  store i8 %i.l, ptr %.11628, align 1, !tbaa !12
  %i.n = load i32, ptr %i.a, align 4, !tbaa !11
  %i.o = lshr i32 %i.n, 8                         ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !11
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.11628, i64 2
  store i8 %i.p, ptr %i.m, align 1, !tbaa !12
  %i.r = load i32, ptr %i.a, align 4, !tbaa !11
  %i.s = lshr i32 %i.r, 8                         ; 2 uses
  store i32 %i.s, ptr %i.a, align 4, !tbaa !11
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.11628, i64 3
  store i8 %i.t, ptr %i.q, align 1, !tbaa !12
  %i.v = load i32, ptr %i.a, align 4, !tbaa !11
  %i.w = lshr i32 %i.v, 8                         ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !11
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.11628, i64 4 ; 2 uses
  store i8 %i.x, ptr %i.u, align 1, !tbaa !12
  %i.z = load i32, ptr %i.a, align 4, !tbaa !11
  %i.aa = lshr i32 %i.z, 8                        ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !11
  %i.ab = add nsw i64 %.01230, -4                 ; 2 uses
  %.not23.3 = icmp eq i64 %i.ab, 0
  br i1 %.not23.3, label %.unr-lcssa, label %.preheader, !llvm.loop !0

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.y, %.preheader ]
  %i.ac = sub i64 %.01433, %i.b                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit:                                        ; preds = %.unr-lcssa, %bb.a, %.thread
  %.220 = phi i32 [ %i.c, %.thread ], [ 43, %bb.a ], [ 0, %.unr-lcssa ]
  ret i32 %.220
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_rand_hex(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.c = and i64 %2, -255
  %or.cond.not = icmp eq i64 %i.c, 1
  br i1 %or.cond.not, label %bb.b, label %Curl_rand_bytes.exit.thread

bb.b:                                             ; preds = %bb.a
  %3 = add nsw i64 %2, -1                         ; 2 uses
  %i.d = lshr exact i64 %3, 1                     ; 2 uses
  %.not31.i = icmp eq i64 %3, 0
  br i1 %.not31.i, label %Curl_rand_bytes.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.unr-lcssa
  %.01433.i = phi i64 [ %i.af, %.unr-lcssa ], [ %i.d, %bb.b ] ; 2 uses
  %.01532.i = phi ptr [ %.lcssa, %.unr-lcssa ], [ %i.b, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.e = call i64 @llvm.umin.i64(i64 %.01433.i, i64 4) ; 5 uses
  %i.f = call i32 @Curl_ssl_random(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4) #4 ; 2 uses
  %.not22.i = icmp eq i32 %i.f, 0
  br i1 %.not22.i, label %.preheader.preheader.i, label %.thread.i

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !11 ; 2 uses
  %4 = add nsw i64 %i.e, -1
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.preheader.i, %.preheader.i.prol
  %i.g = phi i32 [ %i.k, %.preheader.i.prol ], [ %.pre.i, %.preheader.preheader.i ]
  %.01230.i.prol = phi i64 [ %i.l, %.preheader.i.prol ], [ %i.e, %.preheader.preheader.i ]
  %.11628.i.prol = phi ptr [ %i.i, %.preheader.i.prol ], [ %.01532.i, %.preheader.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.prol ], [ 0, %.preheader.preheader.i ]
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %.11628.i.prol, i64 1 ; 3 uses
  store i8 %i.h, ptr %.11628.i.prol, align 1, !tbaa !12
  %i.j = load i32, ptr %i.a, align 4, !tbaa !11
  %i.k = lshr i32 %i.j, 8                         ; 3 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !11
  %i.l = add nsw i64 %.01230.i.prol, -1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !16

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader.i ], [ %i.i, %.preheader.i.prol ]
  %.unr = phi i32 [ %.pre.i, %.preheader.preheader.i ], [ %i.k, %.preheader.i.prol ]
  %.01230.i.unr = phi i64 [ %i.e, %.preheader.preheader.i ], [ %i.l, %.preheader.i.prol ]
  %.11628.i.unr = phi ptr [ %.01532.i, %.preheader.preheader.i ], [ %i.i, %.preheader.i.prol ]
  %i.m = icmp ult i64 %4, 3
  br i1 %i.m, label %.unr-lcssa, label %.preheader.i

.thread.i:                                        ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %Curl_rand_bytes.exit.thread

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %i.n = phi i32 [ %i.ad, %.preheader.i ], [ %.unr, %.preheader.i.prol.loopexit ]
  %.01230.i = phi i64 [ %i.ae, %.preheader.i ], [ %.01230.i.unr, %.preheader.i.prol.loopexit ]
  %.11628.i = phi ptr [ %i.ab, %.preheader.i ], [ %.11628.i.unr, %.preheader.i.prol.loopexit ] ; 5 uses
  %i.o = trunc i32 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.11628.i, i64 1
  store i8 %i.o, ptr %.11628.i, align 1, !tbaa !12
  %i.q = load i32, ptr %i.a, align 4, !tbaa !11
  %i.r = lshr i32 %i.q, 8                         ; 2 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !11
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %.11628.i, i64 2
  store i8 %i.s, ptr %i.p, align 1, !tbaa !12
  %i.u = load i32, ptr %i.a, align 4, !tbaa !11
  %i.v = lshr i32 %i.u, 8                         ; 2 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !11
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.11628.i, i64 3
  store i8 %i.w, ptr %i.t, align 1, !tbaa !12
  %i.y = load i32, ptr %i.a, align 4, !tbaa !11
  %i.z = lshr i32 %i.y, 8                         ; 2 uses
  store i32 %i.z, ptr %i.a, align 4, !tbaa !11
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.11628.i, i64 4 ; 2 uses
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !12
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !11
  %i.ad = lshr i32 %i.ac, 8                       ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !11
  %i.ae = add nsw i64 %.01230.i, -4               ; 2 uses
  %.not23.i.3 = icmp eq i64 %i.ae, 0
  br i1 %.not23.i.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !0

.unr-lcssa:                                       ; preds = %.preheader.i, %.preheader.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.ab, %.preheader.i ]
  %i.af = sub i64 %.01433.i, %i.e                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %Curl_rand_bytes.exit, label %.lr.ph.i, !llvm.loop !1

Curl_rand_bytes.exit:                             ; preds = %.unr-lcssa
  call void @Curl_hexencode(ptr noundef nonnull %i.b, i64 noundef %i.d, ptr noundef %1, i64 noundef %2) #4
  br label %Curl_rand_bytes.exit.thread

Curl_rand_bytes.exit.thread:                      ; preds = %bb.b, %.thread.i, %bb.a, %Curl_rand_bytes.exit
  %.0 = phi i32 [ 0, %Curl_rand_bytes.exit ], [ 43, %bb.a ], [ 43, %bb.b ], [ %i.f, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  ret i32 %.0
}

declare void @Curl_hexencode(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Curl_rand_alnum(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %.0918 = add i64 %2, -1                         ; 2 uses
  %.not19 = icmp eq i64 %.0918, 0
  br i1 %.not19, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %.0921 = phi i64 [ %.09, %bb.d ], [ %.0918, %bb.a ]
  %.01020 = phi ptr [ %i.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %i.b = call i32 @Curl_ssl_random(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4) #4 ; 2 uses
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.a, align 4, !tbaa !11   ; 2 uses
  %i.d = icmp ugt i32 %i.c, -5
  br i1 %i.d, label %bb.b, label %bb.d, !llvm.loop !17

bb.d:                                             ; preds = %bb.c
  %i.e = urem i32 %i.c, 62
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @alnum, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %.01020, i64 1 ; 2 uses
  store i8 %i.h, ptr %.01020, align 1, !tbaa !12
  %.09 = add i64 %.0921, -1                       ; 2 uses
  %.not = icmp eq i64 %.09, 0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.010.lcssa = phi ptr [ %1, %bb.a ], [ %i.i, %bb.d ]
  store i8 0, ptr %.010.lcssa, align 1, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.011 = phi i32 [ 0, %._crit_edge ], [ %i.b, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.011
}

declare i32 @Curl_ssl_random(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
end_hunk_0
