inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@adx_decode_frame:bb.a
  %.091120.us = phi i32 [ %i.de, %bb.x ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.295119.us = phi ptr [ %.4.us161, %bb.x ], [ %.194156, %.preheader.us.preheader ]
  %i.bk = phi i32 [ %i.dd, %bb.x ], [ %.promoted.fr, %.preheader.us.preheader ] ; 2 uses
  %i.bl = add nsw i32 %.in, -1                    ; 2 uses
  %i.bm = sext i32 %.091120.us to i64
  br label %bb.s

bb.s:                                             ; preds = %.preheader.us, %bb.w
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %.396115.us = phi ptr [ %.295119.us, %.preheader.us ], [ %i.cx, %bb.w ] ; 4 uses
  %i.bn = ptrtoint ptr %.396115.us to i64
  %i.bo = sub i64 %i.bg, %i.bn
  %i.bp = icmp slt i64 %i.bo, 18
  br i1 %i.bp, label %..loopexit_crit_edge.us.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv ; 3 uses
  %i.br = load i16, ptr %.396115.us, align 1, !tbaa !41
  %i.bs = call i16 @llvm.bswap.i16(i16 %i.br)     ; 2 uses
  %i.bt = zext i16 %i.bs to i32
  %.not.i.us = icmp sgt i16 %i.bs, -1
  br i1 %.not.i.us, label %bb.u, label %..loopexit_crit_edge.us.thread

bb.u:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !48
  %i.bw = getelementptr inbounds nuw i8, ptr %.396115.us, i64 2
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.bm
  %i.by = load i32, ptr %i.bq, align 4, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !51
  %i.cb = load i32, ptr %i.bi, align 4, !tbaa !40
  %i.cc = load i32, ptr %i.bj, align 4, !tbaa !40
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.02534.i.us = phi i32 [ %i.ca, %bb.u ], [ %.02633.i.us, %bb.v ]
  %.02633.i.us = phi i32 [ %i.by, %bb.u ], [ %i.cu, %bb.v ] ; 3 uses
  %.02732.i.us = phi ptr [ %i.bx, %bb.u ], [ %i.cv, %bb.v ] ; 2 uses
  %.02831.i.us = phi i32 [ 0, %bb.u ], [ %i.cw, %bb.v ]
  %.sroa.4.030.i.us = phi i32 [ 0, %bb.u ], [ %i.cm, %bb.v ] ; 3 uses
  %i.cd = lshr i32 %.sroa.4.030.i.us, 3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 1, !tbaa !41
  %i.ch = call i32 @llvm.bswap.i32(i32 %i.cg)
  %i.ci = and i32 %.sroa.4.030.i.us, 7
  %i.cj = shl i32 %i.ch, %i.ci
  %i.ck = ashr i32 %i.cj, 28
  %i.cl = call i32 @llvm.umin.i32(i32 %.sroa.4.030.i.us, i32 132)
  %i.cm = add nuw nsw i32 %i.cl, 4
  %i.cn = mul nsw i32 %i.ck, %i.bt
  %i.co = mul nsw i32 %.02633.i.us, %i.cb
  %i.cp = mul nsw i32 %.02534.i.us, %i.cc
  %i.cq = add nsw i32 %i.co, %i.cp
  %i.cr = ashr i32 %i.cq, 12
  %i.cs = add nsw i32 %i.cn, %i.cr
  %i.ct = call i32 @llvm.smax.i32(i32 %i.cs, i32 -32768)
  %i.cu = call i32 @llvm.smin.i32(i32 %i.ct, i32 32767) ; 3 uses
  %.0.i.i.us = trunc nsw i32 %i.cu to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %.02732.i.us, i64 2
  store i16 %.0.i.i.us, ptr %.02732.i.us, align 2, !tbaa !52
  %i.cw = add nuw nsw i32 %.02831.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.cw, 32
  br i1 %exitcond.not.i.us, label %bb.w, label %bb.v, !llvm.loop !54

bb.w:                                             ; preds = %bb.v
  store i32 %i.cu, ptr %i.bq, align 4, !tbaa !49
  store i32 %.02633.i.us, ptr %i.bz, align 4, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.396115.us, i64 18 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %bb.s, !llvm.loop !56

..loopexit_crit_edge.us.thread:                   ; preds = %bb.s, %bb.t
  store i32 1, ptr %i.aa, align 4, !tbaa !39
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.cz = load i32, ptr %i.d, align 8, !tbaa !36
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cy, i64 %i.da
  br label %bb.x

..loopexit_crit_edge.us:                          ; preds = %bb.w
  %.not108.us = icmp eq i32 %i.bk, 0
  %i.dc = add nsw i32 %.091120.us, 32
  %spec.select = select i1 %.not108.us, i32 %i.dc, i32 %.091120.us
  br label %bb.x

bb.x:                                             ; preds = %..loopexit_crit_edge.us, %..loopexit_crit_edge.us.thread
  %.4.us161 = phi ptr [ %i.db, %..loopexit_crit_edge.us.thread ], [ %i.cx, %..loopexit_crit_edge.us ] ; 2 uses
  %i.dd = phi i32 [ 1, %..loopexit_crit_edge.us.thread ], [ %i.bk, %..loopexit_crit_edge.us ]
  %i.de = phi i32 [ %.091120.us, %..loopexit_crit_edge.us.thread ], [ %spec.select, %..loopexit_crit_edge.us ] ; 2 uses
  %.not106.us = icmp eq i32 %i.bl, 0
  br i1 %.not106.us, label %.split124.us, label %.preheader.us, !llvm.loop !57

.split:                                           ; preds = %bb.r
  %.not108 = icmp eq i32 %.promoted.fr, 0
  %spec.select164 = select i1 %.not108, i32 %i.ay, i32 0
  br label %.split124.us

.split124.us:                                     ; preds = %bb.x, %.split
  %.us-phi = phi ptr [ %.194156, %.split ], [ %.4.us161, %bb.x ]
  %.us-phi125 = phi i32 [ %spec.select164, %.split ], [ %i.de, %bb.x ]
  store i32 %.us-phi125, ptr %i.az, align 8, !tbaa !42
  store i32 1, ptr %2, align 4, !tbaa !40
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.dg = ptrtoint ptr %.us-phi to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = trunc i64 %i.di to i32
  br label %thread-pre-split.thread

.critedge:                                        ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.i, %bb.e, %bb.q, %bb.n, %bb.o, %thread-pre-split, %.critedge, %.split124.us, %bb.p, %bb.g
  %.3 = phi i32 [ %i.e, %bb.g ], [ %i.ax, %bb.p ], [ -1094995529, %thread-pre-split ], [ -1094995529, %bb.n ], [ %i.dj, %.split124.us ], [ -1094995529, %bb.e ], [ -1094995529, %.critedge ], [ -1094995529, %bb.o ], [ %i.ba, %bb.q ], [ -1094995529, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @adx_decode_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.d, align 4, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @adx_decode_header(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %2, 24
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1, !tbaa !41
  %.not = icmp eq i16 %i.b, 128
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 1, !tbaa !41
  %i.e = tail call i16 @llvm.bswap.i16(i16 %i.d)  ; 2 uses
  %i.f = zext i16 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 4                  ; 3 uses
  %i.h = icmp samesign uge i32 %2, %i.g
  %i.i = icmp ugt i16 %i.e, 1
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -6 ; 2 uses
  %i.m = load i32, ptr %i.l, align 1
  %i.n = xor i32 %i.m, 1126785832
  %i.o = getelementptr i8, ptr %i.l, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 %i.q, 18770
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !41
  %.not45 = icmp eq i8 %i.w, 3
  br i1 %.not45, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !41
  %.not46 = icmp eq i8 %i.y, 18
  br i1 %.not46, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !41
  %.not47 = icmp eq i8 %i.aa, 4
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41  ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %i.ae = add i8 %i.ac, -7
  %or.cond3 = icmp ult i8 %i.ae, -6
  br i1 %or.cond3, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  %.not48 = icmp eq i32 %i.ag, %i.ad
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.ah) #7
  store i32 0, ptr %i.ah, align 8, !tbaa !58
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i32, ptr %i.ai, align 1, !tbaa !41
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !59
  %i.am = icmp slt i32 %i.ak, 1
  br i1 %i.am, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = mul nuw nsw i32 %i.ad, 144
  %i.ao = udiv i32 2147483647, %i.an
  %i.ap = icmp samesign ugt i32 %i.ak, %i.ao
  br i1 %i.ap, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %5 = mul nuw nsw i32 %i.ad, 9
  %i.aq = mul nuw nsw i32 %5, %i.ak
  %i.ar = lshr i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.as, ptr %i.at, align 8, !tbaa !60
  %.not49 = icmp eq ptr %4, null
  br i1 %.not49, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i16, ptr %i.au, align 1, !tbaa !41
  %i.aw = tail call i16 @llvm.bswap.i16(i16 %i.av)
  %i.ax = zext i16 %i.aw to i32
  tail call void @ff_adx_calculate_coeffs(i32 noundef %i.ax, i32 noundef %i.ak, i32 noundef 12, ptr noundef nonnull %4) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 %i.g, ptr %3, align 4, !tbaa !40
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.m, %bb.i, %bb.d, %bb.b, %bb.a, %bb.p, %bb.h
  %.0 = phi i32 [ 0, %bb.p ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ -1163346256, %bb.h ], [ -1094995529, %bb.d ], [ -1094995529, %bb.i ], [ -1094995529, %bb.m ], [ -1094995529, %bb.l ]
  ret i32 %.0
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

declare void @ff_adx_calculate_coeffs(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @av_packet_get_side_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 80}
!30 = !{!10, !16, i64 72}
!31 = !{!10, !6, i64 356}
!32 = !{!33, !6, i64 0}
!33 = !{!"ADXContext", !6, i64 0, !7, i64 4, !6, i64 52, !6, i64 56, !6, i64 60, !7, i64 64}
!34 = !{!33, !6, i64 52}
!35 = !{!10, !6, i64 348}
!36 = !{!37, !6, i64 32}
!37 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!38 = !{!37, !16, i64 24}
!39 = !{!33, !6, i64 56}
!40 = !{!6, !6, i64 0}
!41 = !{!7, !7, i64 0}
!42 = !{!43, !6, i64 112}
!43 = !{!"AVFrame", !7, i64 0, !7, i64 64, !44, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !45, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !46, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!44 = !{!"p2 omnipotent char", !28, i64 0}
!45 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!46 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!47 = !{!43, !44, i64 96}
!48 = !{!19, !19, i64 0}
!49 = !{!50, !6, i64 0}
!50 = !{!"ADXChannelState", !6, i64 0, !6, i64 4}
!51 = !{!50, !6, i64 4}
!52 = !{!53, !53, i64 0}
!53 = !{!"short", !7, i64 0}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = distinct !{!56, !55}
!57 = distinct !{!57, !55}
!58 = !{!10, !6, i64 352}
!59 = !{!10, !6, i64 344}
!60 = !{!10, !15, i64 56}
end_hunk_0
