Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_grad?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define ptr @lv_draw_sw_grad_get(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 15
  switch i8 %i.c, label %bb.c [
    i8 0, label %.loopexit
    i8 2, label %bb.d
    i8 3, label %bb.d
    i8 4, label %bb.d
    i8 5, label %bb.d
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b
  %.017.i = phi i32 [ 64, %bb.c ], [ %2, %bb.b ], [ %1, %bb.a ], [ %1, %bb.a ], [ %1, %bb.a ], [ %1, %bb.a ] ; 4 uses
  %i.d = sext i32 %.017.i to i64                  ; 2 uses
  %i.e = mul nsw i64 %i.d, 3
  %i.f = add nsw i64 %i.e, 7
  %i.g = and i64 %i.f, -8                         ; 2 uses
  %i.h = add nsw i64 %i.d, 7
  %i.i = and i64 %i.h, -8
  %i.j = add nsw i64 %i.i, 24
  %i.k = add nsw i64 %i.j, %i.g
  %i.l = tail call ptr @lv_malloc(i64 noundef %i.k) #3 ; 8 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.preheader.i, label %allocate_item.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  br label %.preheader.i

allocate_item.exit:                               ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i32 %.017.i, ptr %i.p, align 8, !tbaa !15
  %.not = icmp eq i32 %.017.i, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %allocate_item.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %allocate_item.exit ] ; 4 uses
  %i.q = phi i32 [ %i.w, %.lr.ph ], [ %.017.i, %allocate_item.exit ]
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw [3 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.v = trunc nuw i64 %indvars.iv to i32
  tail call void @lv_draw_sw_grad_color_calculate(ptr noundef nonnull %0, i32 noundef %i.q, i32 noundef %i.v, ptr noundef %i.s, ptr noundef %i.u)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.p, align 8, !tbaa !15   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph, %allocate_item.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.l, %allocate_item.exit ], [ %i.l, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_grad_color_calculate(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !19
  %i.c = zext i8 %i.b to i32
  %i.d = mul nsw i32 %1, %i.c
  %i.e = ashr i32 %i.d, 8
  %.not = icmp sgt i32 %2, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 8 dereferenceable(3) %0, i64 3, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !22    ; 2 uses
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr [5 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  %i.n = zext i8 %i.m to i32
  %i.o = mul nsw i32 %1, %i.n
  %i.p = ashr i32 %i.o, 8
  %.not68 = icmp slt i32 %2, %i.p
  br i1 %.not68, label %.preheader72, label %bb.d

.preheader72:                                     ; preds = %bb.c
  %i.q = icmp ugt i8 %i.i, 1
  br i1 %i.q, label %.lr.ph, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.e, %.preheader72
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.k, i64 -5
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 1 dereferenceable(3) %i.r, i64 3, i1 false)
  %i.s = load i8, ptr %i.h, align 2, !tbaa !22
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr [5 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  br label %bb.g

.lr.ph:                                           ; preds = %.preheader72, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 1, %.preheader72 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [5 x i8], ptr %0, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nsw i32 %1, %i.aa
  %i.ac = ashr i32 %i.ab, 8
  %.not69 = icmp sgt i32 %2, %i.ac
  br i1 %.not69, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %.preheader.preheader, label %.lr.ph, !llvm.loop !16

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr [5 x i8], ptr %0, i64 %indvars.iv ; 10 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 -5
  %.sroa.010.0.copyload = load i8, ptr %i.ae, align 1, !tbaa !23
  %.sroa.411.0..sroa_idx = getelementptr i8, ptr %i.ad, i64 -4
  %.sroa.411.0.copyload = load i8, ptr %.sroa.411.0..sroa_idx, align 1, !tbaa !23
  %.sroa.512.0..sroa_idx = getelementptr i8, ptr %i.ad, i64 -3
  %.sroa.512.0.copyload = load i8, ptr %.sroa.512.0..sroa_idx, align 1, !tbaa !23
  %.sroa.09.0.copyload = load i8, ptr %i.ad, align 1, !tbaa !23
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !23
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !23
  %i.af = getelementptr i8, ptr %i.ad, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nsw i32 %1, %i.ah
  %i.aj = ashr i32 %i.ai, 8                       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !19
  %i.am = zext i8 %i.al to i32
  %i.an = mul nsw i32 %1, %i.am
  %i.ao = ashr i32 %i.an, 8
  %i.ap = sub nsw i32 %i.ao, %i.aj
  %i.aq = sub nsw i32 %2, %i.aj
  %i.ar = mul nsw i32 %i.aq, 255
  %i.as = sdiv i32 %i.ar, %i.ap
  %i.at = and i32 %i.as, 255                      ; 5 uses
  %i.au = zext i8 %.sroa.5.0.copyload to i32
  %i.av = mul nuw nsw i32 %i.at, %i.au
  %i.aw = zext i8 %.sroa.512.0.copyload to i32
  %i.ax = xor i32 %i.at, 255                      ; 4 uses
  %i.ay = mul nuw nsw i32 %i.ax, %i.aw
  %i.az = add nuw nsw i32 %i.ay, %i.av
  %i.ba = mul nuw i32 %i.az, 32897
  %i.bb = lshr i32 %i.ba, 23
  %i.bc = trunc i32 %i.bb to i8
  %i.bd = zext i8 %.sroa.4.0.copyload to i32
  %i.be = mul nuw nsw i32 %i.at, %i.bd
  %i.bf = zext i8 %.sroa.411.0.copyload to i32
  %i.bg = mul nuw nsw i32 %i.ax, %i.bf
  %i.bh = add nuw nsw i32 %i.bg, %i.be
  %i.bi = mul nuw i32 %i.bh, 32897
  %i.bj = lshr i32 %i.bi, 23
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = zext i8 %.sroa.09.0.copyload to i32
  %i.bm = mul nuw nsw i32 %i.at, %i.bl
  %i.bn = zext i8 %.sroa.010.0.copyload to i32
  %i.bo = mul nuw nsw i32 %i.ax, %i.bn
  %i.bp = add nuw nsw i32 %i.bo, %i.bm
  %i.bq = mul nuw i32 %i.bp, 32897
  %i.br = lshr i32 %i.bq, 23
  %i.bs = trunc i32 %i.br to i8
  %i.bt = tail call i24 @lv_color_make(i8 noundef zeroext %i.bc, i8 noundef zeroext %i.bk, i8 noundef zeroext %i.bs) #3
  store i24 %i.bt, ptr %3, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nuw nsw i32 %i.at, %i.bw
  %i.by = getelementptr i8, ptr %i.ad, i64 -2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !20
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nuw nsw i32 %i.ax, %i.ca
  %i.cc = add nuw nsw i32 %i.cb, %i.bx
  %i.cd = mul nuw i32 %i.cc, 32897
  %i.ce = lshr i32 %i.cd, 23
  %i.cf = trunc i32 %i.ce to i8
  br label %bb.g

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  br label %.preheader

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %storemerge71 = phi i8 [ %i.g, %bb.b ], [ %i.cf, %bb.f ], [ %i.w, %bb.d ]
  store i8 %storemerge71, ptr %4, align 1, !tbaa !23
  ret void
}

declare i24 @lv_color_make(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @lv_draw_sw_grad_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @lv_free(ptr noundef %0) #3
  ret void
}

declare void @lv_free(ptr noundef) local_unnamed_addr #1

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"", !8, i64 0, !11, i64 8, !5, i64 16}
!13 = !{!12, !8, i64 0}
!14 = !{!12, !11, i64 8}
!15 = !{!12, !5, i64 16}
!16 = distinct !{!16, !9}
!17 = !{!"", !4, i64 0, !4, i64 1, !4, i64 2}
!18 = !{!"", !17, i64 0, !4, i64 3, !4, i64 4}
!19 = !{!18, !4, i64 4}
!20 = !{!18, !4, i64 3}
!21 = !{!"", !4, i64 0, !4, i64 10, !5, i64 11, !5, i64 11, !4, i64 12, !8, i64 48}
!22 = !{!21, !4, i64 10}
!23 = !{!4, !4, i64 0}
end_hunk_0
