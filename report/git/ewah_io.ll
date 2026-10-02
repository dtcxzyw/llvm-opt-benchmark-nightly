Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/ewah_io?download=true
inline.NumInlined: 15
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@llvm.bswap.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 12, 5) i32 @ewah_serialize_strbuf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2048 x i64], align 16            ; 13 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %i.h, ptr %i.b, align 4, !tbaa !20
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef 4) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %i.k = trunc i64 %i.j to i32
  %i.l = call i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %i.c, align 4, !tbaa !20
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef 4) #6
  %i.m = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.n = load i64, ptr %i.i, align 8, !tbaa !21   ; 3 uses
  %i.o = icmp ugt i64 %i.n, 2047
  br i1 %i.o, label %.preheader42.i, label %._crit_edge.i

.preheader42.i:                                   ; preds = %bb.a, %bb.c
  %.048.i = phi i64 [ %i.aj, %bb.c ], [ %i.n, %bb.a ]
  %.03347.i = phi ptr [ %i.ai, %bb.c ], [ %i.m, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader42.i
  %.146.i = phi ptr [ %.03347.i, %.preheader42.i ], [ %i.ai, %bb.b ] ; 5 uses
  %.03445.i = phi i64 [ 0, %.preheader42.i ], [ %i.ah, %bb.b ] ; 5 uses
  %i.p = load i64, ptr %.146.i, align 8, !tbaa !23
  %i.q = call i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  store i64 %i.q, ptr %i.r, align 16, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %.146.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  %i.u = call i64 @llvm.bswap.i64(i64 %i.t)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %.146.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = call i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.z, ptr %i.ab, align 16, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %.146.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !23
  %i.ae = call i64 @llvm.bswap.i64(i64 %i.ad)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.03445.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !23
  %i.ah = add nuw nsw i64 %.03445.i, 4            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.146.i, i64 32 ; 3 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ah, 2048
  br i1 %exitcond.not.i.3, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 16384) #6
  %i.aj = add i64 %.048.i, -2048                  ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 2047
  br i1 %i.ak, label %.preheader42.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  %.033.lcssa.i = phi ptr [ %i.m, %bb.a ], [ %i.ai, %bb.c ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.n, %bb.a ], [ %i.aj, %bb.c ] ; 5 uses
  %.not38.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not38.i, label %ewah_serialize_to.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge.i
  %xtraiter = and i64 %.0.lcssa.i, 3              ; 3 uses
  %i.al = icmp ult i64 %.0.lcssa.i, 4
  br i1 %i.al, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %.0.lcssa.i, 2044
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.251.i = phi ptr [ %.033.lcssa.i, %.preheader.i.preheader.new ], [ %i.bf, %.preheader.i ] ; 5 uses
  %.13550.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.be, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.am = load i64, ptr %.251.i, align 8, !tbaa !23
  %i.an = call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  store i64 %i.an, ptr %i.ao, align 16, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %.251.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !23
  %i.ar = call i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %.251.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !23
  %i.aw = call i64 @llvm.bswap.i64(i64 %i.av)
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.aw, ptr %i.ay, align 16, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %.251.i, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !23
  %i.bb = call i64 @llvm.bswap.i64(i64 %i.ba)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !23
  %i.be = add nuw nsw i64 %.13550.i, 4            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.251.i, i64 32 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !2

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.251.i.epil.init = phi ptr [ %.033.lcssa.i, %.preheader.i.preheader ], [ %i.bf, %.unr-lcssa ]
  %.13550.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.be, %.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod9)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.251.i.epil = phi ptr [ %i.bk, %.preheader.i.epil ], [ %.251.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.13550.i.epil = phi i64 [ %i.bj, %.preheader.i.epil ], [ %.13550.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.bg = load i64, ptr %.251.i.epil, align 8, !tbaa !23
  %i.bh = call i64 @llvm.bswap.i64(i64 %i.bg)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.13550.i.epil
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !23
  %i.bj = add nuw nsw i64 %.13550.i.epil, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.251.i.epil, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !28

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %i.bl = shl nuw nsw i64 %.0.lcssa.i, 3
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.bl) #6
  br label %ewah_serialize_to.exit

ewah_serialize_to.exit:                           ; preds = %.epilog-lcssa, %._crit_edge.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !26
  %i.bo = load ptr, ptr %0, align 8, !tbaa !22
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = lshr i32 %i.bs, 3
  %i.bu = call i32 @llvm.bswap.i32(i32 %i.bt)
  store i32 %i.bu, ptr %i.d, align 4, !tbaa !20
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef 4) #6
  %i.bv = load i64, ptr %i.i, align 8, !tbaa !21
  %.tr.i = trunc i64 %i.bv to i32
  %i.bw = shl i32 %.tr.i, 3
  %i.bx = add i32 %i.bw, 12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %i.bx
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 12, 0) i64 @ewah_read_mmap(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str) #6 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.f, align 8, !tbaa !19
  %i.g = icmp ult i64 %2, 8
  br i1 %i.g, label %bb.d, label %st_mult.exit

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.1) #6 ; 0 uses
  br label %bb.k

st_mult.exit:                                     ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %3 = load i32, ptr %i.i, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %i.j = zext i32 %4 to i64                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !21
  %i.m = add i64 %2, -8                           ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !22
  %i.o = shl nuw nsw i64 %i.j, 3
  %i.p = tail call ptr @xrealloc(ptr noundef %i.n, i64 noundef %i.o) #6 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !22
  %i.q = load i64, ptr %i.l, align 8, !tbaa !21   ; 3 uses
  %mul.ov.i49 = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %mul.ov.i49, label %bb.e, label %st_mult.exit50

bb.e:                                             ; preds = %st_mult.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.4, i64 noundef %i.q, i64 noundef 8) #7
  unreachable

st_mult.exit50:                                   ; preds = %st_mult.exit
  %i.r = shl nuw i64 %i.q, 3                      ; 6 uses
  %i.s = icmp ult i64 %i.m, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %st_mult.exit50
  %i.t = sub nuw i64 %i.r, %i.m
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.2, i64 noundef %i.t) #6 ; 0 uses
  br label %bb.k

bb.g:                                             ; preds = %st_mult.exit50
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.p, ptr nonnull align 1 %i.v, i64 %i.r, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.r
  %i.x = sub nuw i64 %i.m, %i.r
  %i.y = load i64, ptr %i.l, align 8, !tbaa !21
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.054 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.h ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.054 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.ab)
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add nuw i64 %.054, 1                    ; 2 uses
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !21
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.ag = icmp ult i64 %i.x, 4
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.ah = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %0, align 8, !tbaa !22
  %5 = load i32, ptr %i.w, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %i.aj = zext i32 %6 to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !26
  %i.am = add nuw nsw i64 %i.r, 12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.d, %bb.b
  %.042 = phi i64 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.am, %bb.j ]
  ret i64 %.042
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 long", !15, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"ewah_bitmap", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !16, i64 32}
!19 = !{!18, !17, i64 24}
!20 = !{!12, !12, i64 0}
!21 = !{!18, !17, i64 8}
!22 = !{!18, !16, i64 0}
!23 = !{!17, !17, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = !{!18, !16, i64 32}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !24}
!30 = !{!18, !17, i64 16}
end_hunk_0
