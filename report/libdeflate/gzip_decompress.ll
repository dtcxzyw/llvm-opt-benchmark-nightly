Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/gzip_decompress?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @libdeflate_gzip_decompress_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.c = icmp ult i64 %2, 18
  br i1 %i.c, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !10
  %.not = icmp eq i8 %i.d, 31
  br i1 %.not, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  %.not68 = icmp eq i8 %i.f, -117
  br i1 %.not68, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %.not69 = icmp eq i8 %i.h, 8
  br i1 %.not69, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.l = zext i8 %i.j to i32                      ; 3 uses
  %.not70 = icmp ult i8 %i.j, 32
  br i1 %.not70, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %i.l, 4
  %.not71 = icmp eq i32 %i.m, 0
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.copyload.i = load i16, ptr %i.k, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %gepdiff = add nsw i64 %2, -12
  %i.o = zext i16 %.0.copyload.i to i64           ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 8
  %.not72 = icmp slt i64 %gepdiff, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  br i1 %.not72, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi ptr [ %i.q, %bb.g ], [ %i.k, %bb.f ]  ; 2 uses
  %i.r = and i32 %i.l, 8
  %.not73 = icmp eq i32 %i.r, 0
  br i1 %.not73, label %bb.j, label %.preheader83

.preheader83:                                     ; preds = %bb.h, %.preheader83
  %.2 = phi ptr [ %i.s, %.preheader83 ], [ %.1, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 4 uses
  %i.t = load i8, ptr %.2, align 1, !tbaa !10
  %i.u = icmp ne i8 %i.t, 0
  %i.v = icmp ne ptr %i.s, %i.b
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.preheader83, label %bb.i, !llvm.loop !8

bb.i:                                             ; preds = %.preheader83
  %i.x = ptrtoint ptr %i.b to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp slt i64 %i.z, 8
  br i1 %i.aa, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.3 = phi ptr [ %i.s, %bb.i ], [ %.1, %bb.h ]   ; 2 uses
  %.not74 = icmp samesign ult i8 %i.j, 16
  br i1 %.not74, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.j, %.preheader
  %.4 = phi ptr [ %i.ab, %.preheader ], [ %.3, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 4 uses
  %i.ac = load i8, ptr %.4, align 1, !tbaa !10
  %i.ad = icmp ne i8 %i.ac, 0
  %i.ae = icmp ne ptr %i.ab, %i.b
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %.preheader, label %bb.k, !llvm.loop !9

bb.k:                                             ; preds = %.preheader
  %i.ag = ptrtoint ptr %i.b to i64
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp slt i64 %i.ai, 8
  br i1 %i.aj, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5 = phi ptr [ %i.ab, %bb.k ], [ %.3, %bb.j ]  ; 2 uses
  %i.ak = and i32 %i.l, 2
  %.not75 = icmp eq i32 %i.ak, 0
  br i1 %.not75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 2 uses
  %i.am = ptrtoint ptr %i.b to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp slt i64 %i.ao, 8
  br i1 %i.ap, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.6 = phi ptr [ %i.al, %bb.m ], [ %.5, %bb.l ]  ; 3 uses
  %.pre-phi = ptrtoint ptr %.6 to i64
  %i.aq = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %.pre-phi
  %i.at = call i32 @libdeflate_deflate_decompress_ex(ptr noundef %0, ptr noundef nonnull %.6, i64 noundef %i.as, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.a, ptr noundef %6) #3 ; 2 uses
  %.not76 = icmp eq i32 %i.at, 0
  br i1 %.not76, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %.not77 = icmp eq ptr %6, null
  br i1 %.not77, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load i64, ptr %6, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.061 = phi i64 [ %i.au, %bb.p ], [ %4, %bb.o ] ; 2 uses
  %i.av = load i64, ptr %i.a, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %.6, i64 %i.av ; 3 uses
  %i.ax = call i32 @libdeflate_crc32(i32 noundef 0, ptr noundef %3, i64 noundef %.061) #3
  %.0.copyload.i81 = load i32, ptr %i.aw, align 1
  %.not78 = icmp eq i32 %i.ax, %.0.copyload.i81
  br i1 %.not78, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = trunc i64 %.061 to i32
  %.0.copyload.i82 = load i32, ptr %i.ay, align 1
  %.not79 = icmp eq i32 %.0.copyload.i82, %i.az
  br i1 %.not79, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not80 = icmp eq ptr %5, null
  br i1 %.not80, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %5, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r, %bb.q, %bb.n, %bb.m, %bb.k, %bb.i, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.164 = phi i32 [ 1, %bb.g ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.k ], [ 1, %bb.m ], [ %i.at, %bb.n ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %bb.t ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.164
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @libdeflate_deflate_decompress_ex(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @libdeflate_crc32(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @libdeflate_gzip_decompress(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @libdeflate_gzip_decompress_ex(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef null, ptr noundef %5)
  ret i32 %i.a
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !11}
!9 = distinct !{!9, !11}
!10 = !{!4, !4, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
