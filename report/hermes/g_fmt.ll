begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr, [1192 x i8] }

; Function Attrs: nounwind uwtable
define hidden noundef ptr @g_fmt(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %union.anon, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.d = call ptr @dtoa_alloc_init(ptr noundef nonnull %2, i32 noundef 1200) #4 ; 3 uses
  %i.e = call ptr @g_dtoa(ptr noundef %i.d, double noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #4 ; 8 uses
  %i.f = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ]    ; 10 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3    ; 9 uses
  %i.i = icmp eq i32 %i.h, 9999
  br i1 %i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.042 = phi ptr [ %i.j, %.preheader ], [ %i.e, %bb.c ] ; 2 uses
  %.1 = phi ptr [ %i.l, %.preheader ], [ %.0, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.042, i64 1
  %i.k = load i8, ptr %.042, align 1, !tbaa !7    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.k, ptr %.1, align 1, !tbaa !7
  %.not57 = icmp eq i8 %i.k, 0
  br i1 %.not57, label %.loopexit, label %.preheader, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.h, -3
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.h to i64
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.e to i64
  %reass.sub = sub i64 %i.p, %i.q
  %i.r = add i64 %reass.sub, 5
  %i.s = icmp slt i64 %i.r, %i.n
  br i1 %i.s, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.e, align 1, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  store i8 %i.u, ptr %.0, align 1, !tbaa !7
  %i.w = load i8, ptr %i.t, align 1, !tbaa !7
  %.not54 = icmp eq i8 %i.w, 0
  br i1 %.not54, label %.loopexit60, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 3 uses
  store i8 46, ptr %i.v, align 1, !tbaa !7
  %i.y = load i8, ptr %i.t, align 1, !tbaa !7     ; 2 uses
  store i8 %i.y, ptr %i.x, align 1, !tbaa !7
  %.not5574 = icmp eq i8 %i.y, 0
  br i1 %.not5574, label %.loopexit60, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.g, %.lr.ph78
  %.276 = phi ptr [ %i.aa, %.lr.ph78 ], [ %i.x, %bb.g ]
  %.14375 = phi ptr [ %i.z, %.lr.ph78 ], [ %i.t, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %.14375, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.276, i64 1 ; 3 uses
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !7    ; 2 uses
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !7
  %.not55 = icmp eq i8 %i.ab, 0
  br i1 %.not55, label %.loopexit60, label %.lr.ph78, !llvm.loop !13

.loopexit60:                                      ; preds = %.lr.ph78, %bb.g, %bb.f
  %.3 = phi ptr [ %i.v, %bb.f ], [ %i.x, %bb.g ], [ %i.aa, %.lr.ph78 ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  store i8 101, ptr %.3, align 1, !tbaa !7
  %i.ad = add nsw i32 %i.h, -1                    ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !3
  %i.ae = icmp slt i32 %i.h, 1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit60
  store i8 45, ptr %i.ac, align 1, !tbaa !7
  %i.af = sub nsw i32 1, %i.h                     ; 2 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !3
  br label %bb.j

bb.i:                                             ; preds = %.loopexit60
  store i8 43, ptr %i.ac, align 1, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = phi i32 [ %i.ad, %bb.i ], [ %i.af, %bb.h ] ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.046 = phi i32 [ 2, %bb.j ], [ %i.ai, %bb.k ]  ; 6 uses
  %.041 = phi i32 [ 10, %bb.j ], [ %i.ah, %bb.k ] ; 10 uses
  %i.ah = mul nuw nsw i32 %.041, 10               ; 2 uses
  %.not56 = icmp samesign ugt i32 %i.ah, %i.ag
  %i.ai = add nuw nsw i32 %.046, 1
  br i1 %.not56, label %.preheader59, label %bb.k, !llvm.loop !14

.preheader59:                                     ; preds = %bb.k
  %.4 = getelementptr inbounds nuw i8, ptr %.3, i64 2
  %i.aj = sdiv i32 %i.ag, %.041                   ; 3 uses
  %.recomposed = srem i32 %i.ag, %.041
  %i.ak = trunc i32 %i.aj to i8
  %i.al = add i8 %i.ak, 48
  %i.am = getelementptr inbounds nuw i8, ptr %.3, i64 3 ; 3 uses
  store i8 %i.al, ptr %.4, align 1, !tbaa !7
  %i.an = icmp samesign ult i32 %.046, 2
  br i1 %i.an, label %.loopexit.sink.split, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader59
  %i.ao = and i32 %.046, 1
  %lcmp.mod.not.not = icmp eq i32 %i.ao, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph81.prol, label %.lr.ph81.prol.loopexit

.lr.ph81.prol:                                    ; preds = %.lr.ph81.preheader
  %i.ap = add nsw i32 %.046, -1
  %i.aq = mul nsw i32 %i.aj, %.041                ; 0 uses
  %i.ar = mul nsw i32 %.recomposed, 10            ; 3 uses
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !3
  %i.as = sdiv i32 %i.ar, %.041                   ; 2 uses
  %i.at = trunc i32 %i.as to i8
  %i.au = add i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %.3, i64 4 ; 2 uses
  store i8 %i.au, ptr %i.am, align 1, !tbaa !7
  br label %.lr.ph81.prol.loopexit

.lr.ph81.prol.loopexit:                           ; preds = %.lr.ph81.prol, %.lr.ph81.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph81.preheader ], [ %i.av, %.lr.ph81.prol ]
  %.unr = phi i32 [ %i.ag, %.lr.ph81.preheader ], [ %i.ar, %.lr.ph81.prol ]
  %.unr.a = phi ptr [ %i.am, %.lr.ph81.preheader ], [ %i.av, %.lr.ph81.prol ]
  %.unr121 = phi i32 [ %i.aj, %.lr.ph81.preheader ], [ %i.as, %.lr.ph81.prol ]
  %.14780.unr = phi i32 [ %.046, %.lr.ph81.preheader ], [ %i.ap, %.lr.ph81.prol ]
  %i.aw = icmp eq i32 %.046, 2
  br i1 %i.aw, label %.loopexit.sink.split, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81
  %3 = phi i32 [ %i.bi, %.lr.ph81 ], [ %.unr, %.lr.ph81.prol.loopexit ]
  %i.ax = phi ptr [ %i.bm, %.lr.ph81 ], [ %.unr.a, %.lr.ph81.prol.loopexit ] ; 3 uses
  %i.ay = phi i32 [ %i.bj, %.lr.ph81 ], [ %.unr121, %.lr.ph81.prol.loopexit ]
  %.14780 = phi i32 [ %i.bg, %.lr.ph81 ], [ %.14780.unr, %.lr.ph81.prol.loopexit ] ; 2 uses
  %i.az = mul nsw i32 %i.ay, %.041
  %i.ba = sub nsw i32 %3, %i.az
  %i.bb = mul nsw i32 %i.ba, 10                   ; 3 uses
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !3
  %i.bc = sdiv i32 %i.bb, %.041                   ; 2 uses
  %i.bd = trunc i32 %i.bc to i8
  %i.be = add i8 %i.bd, 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 %i.be, ptr %i.ax, align 1, !tbaa !7
  %i.bg = add nsw i32 %.14780, -2
  %i.bh = mul nsw i32 %i.bc, %.041                ; 0 uses
  %.recomposed126 = srem i32 %i.bb, %.041
  %i.bi = mul nsw i32 %.recomposed126, 10         ; 3 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !3
  %i.bj = sdiv i32 %i.bi, %.041                   ; 2 uses
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = add i8 %i.bk, 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 2 uses
  store i8 %i.bl, ptr %i.bf, align 1, !tbaa !7
  %i.bn = icmp slt i32 %.14780, 4
  br i1 %i.bn, label %.loopexit.sink.split, label %.lr.ph81

bb.l:                                             ; preds = %bb.e
  %i.bo = icmp slt i32 %i.h, 1
  br i1 %i.bo, label %bb.m, label %.preheader63

.preheader63:                                     ; preds = %bb.l
  %i.bp = load i8, ptr %i.e, align 1, !tbaa !7    ; 2 uses
  store i8 %i.bp, ptr %.0, align 1, !tbaa !7
  %.not5164 = icmp eq i8 %i.bp, 0
  br i1 %.not5164, label %.lr.ph67.preheader, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  store i8 46, ptr %.0, align 1, !tbaa !7
  %.669 = getelementptr i8, ptr %.0, i64 1        ; 2 uses
  %i.bq = icmp slt i32 %i.h, 0
  br i1 %i.bq, label %.lr.ph72.preheader, label %.preheader61.preheader

.lr.ph72.preheader:                               ; preds = %bb.m
  %i.br = xor i32 %i.h, -1
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.669, i8 48, i64 %i.bt, i1 false), !tbaa !7
  %4 = getelementptr i8, ptr %.0, i64 %i.bs
  %i.bu = getelementptr i8, ptr %4, i64 2
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %.preheader61.preheader

.preheader61.preheader:                           ; preds = %.lr.ph72.preheader, %bb.m
  %.7.ph = phi ptr [ %.669, %bb.m ], [ %i.bu, %.lr.ph72.preheader ]
  br label %.preheader61

.preheader61:                                     ; preds = %.preheader61.preheader, %.preheader61
  %.244 = phi ptr [ %i.bv, %.preheader61 ], [ %i.e, %.preheader61.preheader ] ; 2 uses
  %.7 = phi ptr [ %i.bx, %.preheader61 ], [ %.7.ph, %.preheader61.preheader ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.244, i64 1
  %i.bw = load i8, ptr %.244, align 1, !tbaa !7   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.7, i64 1
  store i8 %i.bw, ptr %.7, align 1, !tbaa !7
  %.not53 = icmp eq i8 %i.bw, 0
  br i1 %.not53, label %.loopexit, label %.preheader61, !llvm.loop !15

.lr.ph:                                           ; preds = %.preheader63, %bb.p
  %.pn = phi ptr [ %i.by, %bb.p ], [ %i.e, %.preheader63 ]
  %.865 = phi ptr [ %.9, %bb.p ], [ %.0, %.preheader63 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.865, i64 1 ; 4 uses
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cb = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !3
  %i.cc = icmp eq i32 %i.cb, 0
  %.pre89 = load i8, ptr %i.by, align 1, !tbaa !7 ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %.not52 = icmp eq i8 %.pre89, 0
  br i1 %.not52, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  store i8 0, ptr %i.bz, align 1, !tbaa !7
  br label %thread-pre-split

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %.865, i64 2
  store i8 46, ptr %i.bz, align 1, !tbaa !7
  %.pre = load i8, ptr %i.by, align 1, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph
  %i.ce = phi i8 [ %.pre, %bb.o ], [ %.pre89, %.lr.ph ] ; 2 uses
  %.9 = phi ptr [ %i.cd, %bb.o ], [ %i.bz, %.lr.ph ] ; 3 uses
  store i8 %i.ce, ptr %.9, align 1, !tbaa !7
  %.not51 = icmp eq i8 %i.ce, 0
  br i1 %.not51, label %thread-pre-split, label %.lr.ph, !llvm.loop !16

thread-pre-split:                                 ; preds = %bb.p, %.thread
  %.996 = phi ptr [ %i.bz, %.thread ], [ %.9, %bb.p ] ; 2 uses
  %.pr58.pre = load i32, ptr %i.a, align 4, !tbaa !3
  %i.cf = icmp sgt i32 %.pr58.pre, 0
  br i1 %i.cf, label %.lr.ph67.preheader, label %.loopexit.sink.split

.lr.ph67.preheader:                               ; preds = %.preheader63, %thread-pre-split
  %.1066.ph = phi ptr [ %.0, %.preheader63 ], [ %.996, %thread-pre-split ]
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %.1066 = phi ptr [ %i.cg, %.lr.ph67 ], [ %.1066.ph, %.lr.ph67.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1066, i64 1 ; 2 uses
  store i8 48, ptr %.1066, align 1, !tbaa !7
  %i.ch = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.a, align 4, !tbaa !3
  %i.cj = icmp sgt i32 %i.ch, 1
  br i1 %i.cj, label %.lr.ph67, label %.loopexit.sink.split, !llvm.loop !17

.loopexit.sink.split:                             ; preds = %.lr.ph67, %.lr.ph81.prol.loopexit, %.lr.ph81, %thread-pre-split, %.preheader59
  %.lcssa.sink = phi ptr [ %i.bm, %.lr.ph81 ], [ %i.am, %.preheader59 ], [ %.996, %thread-pre-split ], [ %.lcssa.unr, %.lr.ph81.prol.loopexit ], [ %i.cg, %.lr.ph67 ]
  store i8 0, ptr %.lcssa.sink, align 1, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader61, %.preheader, %.loopexit.sink.split
  call void @g_freedtoa(ptr noundef %i.d, ptr noundef %i.e) #4
  call void @dtoa_alloc_done(ptr noundef %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @dtoa_alloc_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @g_dtoa(ptr noundef, double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_freedtoa(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtoa_alloc_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
end_hunk_0
