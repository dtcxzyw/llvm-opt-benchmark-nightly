inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_size(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !9
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @lzma_vli_size(i64 noundef %i.e) #5 ; 2 uses
  %1 = icmp ne i32 %i.f, 0
  %2 = icmp ne i64 %i.e, 0                        ; 2 uses
  %or.cond.not = and i1 %2, %1
  %3 = add i32 %i.f, 6
  %.035 = select i1 %2, i32 %3, i32 6
  br i1 %or.cond.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %.136 = phi i32 [ %.035, %bb.c ], [ 6, %bb.b ]  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %.not52 = icmp eq i64 %i.h, -1
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @lzma_vli_size(i64 noundef %i.h) #5 ; 2 uses
  %.not53 = icmp eq i32 %i.i, 0
  %i.j = add i32 %i.i, %.136
  br i1 %.not53, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.338 = phi i32 [ %i.j, %bb.e ], [ %.136, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.p = call i32 @lzma_filter_flags_size(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) #6 ; 2 uses
  %.not55.a = icmp eq i32 %i.p, 0
  %i.q = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %.not55.a, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph.preheader
  %i.r = add i32 %i.q, %.338                      ; 2 uses
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16
  %.not54 = icmp eq i64 %i.u, -1
  br i1 %.not54, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.v = call i32 @lzma_filter_flags_size(ptr noundef nonnull %i.a, ptr noundef nonnull %i.t) #6 ; 2 uses
  %.not55.1.a = icmp eq i32 %i.v, 0
  %i.w = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %.not55.1.a, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph.1
  %i.x = add i32 %i.w, %i.r                       ; 2 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16
  %.not54.1 = icmp eq i64 %i.aa, -1
  br i1 %.not54.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ab = call i32 @lzma_filter_flags_size(ptr noundef nonnull %i.a, ptr noundef nonnull %i.z) #6 ; 2 uses
  %.not55.2.a = icmp eq i32 %i.ab, 0
  %i.ac = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %.not55.2.a, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph.2
  %i.ad = add i32 %i.ac, %i.x                     ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16
  %.not54.2 = icmp eq i64 %i.ag, -1
  br i1 %.not54.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ah = call i32 @lzma_filter_flags_size(ptr noundef nonnull %i.a, ptr noundef nonnull %i.af) #6 ; 2 uses
  %.not55.3.a = icmp eq i32 %i.ah, 0
  %i.ai = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %.not55.3.a, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph.3
  %i.aj = add i32 %i.ai, %i.ad
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16
  %.not54.3 = icmp eq i64 %i.am, -1
  br i1 %.not54.3, label %._crit_edge, label %.critedge

._crit_edge:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %.lcssa = phi i32 [ %i.r, %bb.h ], [ %i.x, %bb.i ], [ %i.ad, %bb.j ], [ %i.aj, %bb.k ]
  %i.an = add i32 %.lcssa, 3
  %i.ao = and i32 %i.an, -4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %bb.k, %._crit_edge, %bb.e, %bb.c, %bb.g, %bb.f, %bb.a
  %.8 = phi i32 [ 8, %bb.a ], [ 11, %bb.c ], [ 0, %._crit_edge ], [ 11, %bb.f ], [ 11, %bb.e ], [ 11, %bb.g ], [ %i.ab, %.lr.ph.2 ], [ %i.p, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.3 ], [ %i.v, %.lr.ph.1 ], [ 11, %bb.k ]
  ret i32 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @lzma_filter_flags_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_encode(ptr nofree noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = tail call i64 @lzma_block_unpadded_size(ptr noundef %0) #5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %or.cond = icmp sgt i64 %i.e, -2
  br i1 %or.cond, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = add i32 %i.g, -4                         ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 9 uses
  %i.j = lshr i32 %i.h, 2
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %1, align 1, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 7 uses
  store i8 0, ptr %i.l, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 2, ptr %i.a, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call i32 @lzma_vli_encode(i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.i) #6 ; 2 uses
  %.not54 = icmp eq i32 %i.o, 0
  br i1 %.not54, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 1, !tbaa !19
  %i.q = or i8 %i.p, 64
  store i8 %i.q, ptr %i.l, align 1, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.r = load i64, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not55 = icmp eq i64 %i.r, -1
  br i1 %.not55, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @lzma_vli_encode(i64 noundef %i.r, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.i) #6 ; 2 uses
  %.not56 = icmp eq i32 %i.s, 0
  br i1 %.not56, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %i.l, align 1, !tbaa !19
  %i.u = or i8 %i.t, -128
  store i8 %i.u, ptr %i.l, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !16
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %i.aa = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %i.w, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.i) #6 ; 2 uses
  %.not57 = icmp eq i32 %i.aa, 0
  br i1 %.not57, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.preheader.preheader
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  %.not58 = icmp eq i64 %i.ad, -1
  br i1 %.not58, label %bb.o, label %.preheader.1

.preheader.1:                                     ; preds = %bb.k
  %i.ae = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %i.ac, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.i) #6 ; 2 uses
  %.not57.1 = icmp eq i32 %i.ae, 0
  br i1 %.not57.1, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.preheader.1
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !16
  %.not58.1 = icmp eq i64 %i.ah, -1
  br i1 %.not58.1, label %bb.o, label %.preheader.2

.preheader.2:                                     ; preds = %bb.l
  %i.ai = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %i.ag, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.i) #6 ; 2 uses
  %.not57.2 = icmp eq i32 %i.ai, 0
  br i1 %.not57.2, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.preheader.2
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16
  %.not58.2 = icmp eq i64 %i.al, -1
  br i1 %.not58.2, label %bb.o, label %.preheader.3

.preheader.3:                                     ; preds = %bb.m
  %i.am = call i32 @lzma_filter_flags_encode(ptr noundef nonnull %i.ak, ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.i) #6 ; 2 uses
  %.not57.3 = icmp eq i32 %i.am, 0
  br i1 %.not57.3, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.preheader.3
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16
  %.not58.3 = icmp eq i64 %i.ap, -1
  br i1 %.not58.3, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.045.lcssa60 = phi i8 [ 0, %bb.k ], [ 1, %bb.l ], [ 2, %bb.m ], [ 3, %bb.n ]
  %i.aq = load i8, ptr %i.l, align 1, !tbaa !19
  %i.ar = or i8 %i.aq, %.045.lcssa60
  store i8 %i.ar, ptr %i.l, align 1, !tbaa !19
  %i.as = load i64, ptr %i.a, align 8, !tbaa !20  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = sub i64 %i.i, %i.as
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.at, i8 0, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.aw = call i32 @lzma_crc32(ptr noundef nonnull %1, i64 noundef %i.i, i32 noundef 0) #5
  store i32 %i.aw, ptr %i.av, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %bb.n, %bb.o, %bb.i, %bb.j, %bb.d, %bb.g
  %.7 = phi i32 [ %i.o, %bb.d ], [ 11, %bb.i ], [ %i.s, %bb.g ], [ 11, %bb.j ], [ 0, %bb.o ], [ %i.aa, %.preheader.preheader ], [ %i.ai, %.preheader.2 ], [ %i.am, %.preheader.3 ], [ %i.ae, %.preheader.1 ], [ 11, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.b, %.loopexit
  %.8 = phi i32 [ %.7, %.loopexit ], [ 11, %bb.b ], [ 11, %bb.a ]
  ret i32 %.8
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @lzma_filter_flags_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 0}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !7, i64 40, !12, i64 104, !12, i64 112, !12, i64 120, !6, i64 128, !6, i64 132, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !7, i64 200, !7, i64 201, !7, i64 202, !7, i64 203, !7, i64 204, !7, i64 205, !7, i64 206, !7, i64 207}
!11 = !{!"long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 16}
!14 = !{!10, !11, i64 24}
!15 = !{!10, !12, i64 32}
!16 = !{!17, !11, i64 0}
end_hunk_0
