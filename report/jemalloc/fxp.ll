Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/fxp?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@je_fxp_parse:bb.a
  %.2.6 = getelementptr inbounds nuw i8, ptr %.2.5, i64 %.2.idx.6 ; 2 uses
  %i.ai = load i8, ptr %.2.6, align 1, !tbaa !12  ; 2 uses
  %i.aj = add i8 %i.ai, -48
  %i.ak = icmp ult i8 %i.aj, 10                   ; 2 uses
  %.2.idx.7 = zext i1 %i.ak to i64
  %.2.7 = getelementptr inbounds nuw i8, ptr %.2.6, i64 %.2.idx.7 ; 2 uses
  %i.al = load i8, ptr %.2.7, align 1, !tbaa !12  ; 2 uses
  %i.am = add i8 %i.al, -48
  %i.an = icmp ult i8 %i.am, 10                   ; 2 uses
  %.2.idx.8 = zext i1 %i.an to i64
  %.2.8 = getelementptr inbounds nuw i8, ptr %.2.7, i64 %.2.idx.8 ; 2 uses
  %i.ao = load i8, ptr %.2.8, align 1, !tbaa !12  ; 2 uses
  %i.ap = add i8 %i.ao, -48
  %i.aq = icmp ult i8 %i.ap, 10                   ; 2 uses
  %.2.idx.9 = zext i1 %i.aq to i64
  %.2.9 = getelementptr inbounds nuw i8, ptr %.2.8, i64 %.2.idx.9 ; 2 uses
  %i.ar = load i8, ptr %.2.9, align 1, !tbaa !12  ; 2 uses
  %i.as = add i8 %i.ar, -48
  %i.at = icmp ult i8 %i.as, 10                   ; 2 uses
  %.2.idx.10 = zext i1 %i.at to i64
  %.2.10 = getelementptr inbounds nuw i8, ptr %.2.9, i64 %.2.idx.10 ; 2 uses
  %i.au = load i8, ptr %.2.10, align 1, !tbaa !12 ; 2 uses
  %i.av = add i8 %i.au, -48
  %i.aw = icmp ult i8 %i.av, 10                   ; 2 uses
  %.2.idx.11 = zext i1 %i.aw to i64
  %.2.11 = getelementptr inbounds nuw i8, ptr %.2.10, i64 %.2.idx.11 ; 2 uses
  %i.ax = load i8, ptr %.2.11, align 1, !tbaa !12 ; 2 uses
  %i.ay = add i8 %i.ax, -48
  %i.az = icmp ult i8 %i.ay, 10                   ; 2 uses
  %.2.idx.12 = zext i1 %i.az to i64
  %.2.12 = getelementptr inbounds nuw i8, ptr %.2.11, i64 %.2.idx.12 ; 2 uses
  %i.ba = load i8, ptr %.2.12, align 1, !tbaa !12 ; 2 uses
  %i.bb = add i8 %i.ba, -48
  %i.bc = icmp ult i8 %i.bb, 10                   ; 2 uses
  %.2.idx.13 = zext i1 %i.bc to i64
  %.2.13 = getelementptr inbounds nuw i8, ptr %.2.12, i64 %.2.idx.13
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader51.preheader
  %.3 = phi ptr [ %i.bg, %bb.e ], [ %.2.13, %.preheader51.preheader ] ; 3 uses
  %i.bd = load i8, ptr %.3, align 1, !tbaa !12
  %i.be = add i8 %i.bd, -48
  %i.bf = icmp ult i8 %i.be, 10
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br i1 %i.bf, label %bb.e, label %bb.f, !llvm.loop !15

bb.f:                                             ; preds = %bb.e
  %i.bh = zext nneg i8 %i.n to i64
  %i.bi = mul nuw nsw i64 %i.bh, 10
  %i.bj = add nsw i64 %i.bi, -480
  %i.bk = zext nneg i8 %i.q to i64
  %i.bl = add nsw i64 %i.bk, -48
  %i.bm = select i1 %i.s, i64 %i.bl, i64 0
  %.1.1 = add nsw i64 %i.bm, %i.bj
  %i.bn = mul nsw i64 %.1.1, 10
  %i.bo = zext nneg i8 %i.t to i64
  %i.bp = add nsw i64 %i.bo, -48
  %i.bq = select i1 %i.v, i64 %i.bp, i64 0
  %.1.2 = add nsw i64 %i.bq, %i.bn
  %i.br = mul nsw i64 %.1.2, 10
  %i.bs = zext nneg i8 %i.w to i64
  %i.bt = add nsw i64 %i.bs, -48
  %i.bu = select i1 %i.y, i64 %i.bt, i64 0
  %.1.3 = add nsw i64 %i.bu, %i.br
  %i.bv = mul nsw i64 %.1.3, 10
  %i.bw = zext nneg i8 %i.z to i64
  %i.bx = add nsw i64 %i.bw, -48
  %i.by = select i1 %i.ab, i64 %i.bx, i64 0
  %.1.4 = add nsw i64 %i.by, %i.bv
  %i.bz = mul nsw i64 %.1.4, 10
  %i.ca = zext nneg i8 %i.ac to i64
  %i.cb = add nsw i64 %i.ca, -48
  %i.cc = select i1 %i.ae, i64 %i.cb, i64 0
  %.1.5 = add nsw i64 %i.cc, %i.bz
  %i.cd = mul nsw i64 %.1.5, 10
  %i.ce = zext nneg i8 %i.af to i64
  %i.cf = add nsw i64 %i.ce, -48
  %i.cg = select i1 %i.ah, i64 %i.cf, i64 0
  %.1.6 = add nsw i64 %i.cg, %i.cd
  %i.ch = mul nsw i64 %.1.6, 10
  %i.ci = zext nneg i8 %i.ai to i64
  %i.cj = add nsw i64 %i.ci, -48
  %i.ck = select i1 %i.ak, i64 %i.cj, i64 0
  %.1.7 = add nsw i64 %i.ck, %i.ch
  %i.cl = mul nsw i64 %.1.7, 10
  %i.cm = zext nneg i8 %i.al to i64
  %i.cn = add nsw i64 %i.cm, -48
  %i.co = select i1 %i.an, i64 %i.cn, i64 0
  %.1.8 = add nsw i64 %i.co, %i.cl
  %i.cp = mul nsw i64 %.1.8, 10
  %i.cq = zext nneg i8 %i.ao to i64
  %i.cr = add nsw i64 %i.cq, -48
  %i.cs = select i1 %i.aq, i64 %i.cr, i64 0
  %.1.9 = add nsw i64 %i.cs, %i.cp
  %i.ct = mul nsw i64 %.1.9, 10
  %i.cu = zext nneg i8 %i.ar to i64
  %i.cv = add nsw i64 %i.cu, -48
  %i.cw = select i1 %i.at, i64 %i.cv, i64 0
  %.1.10 = add nsw i64 %i.cw, %i.ct
  %i.cx = mul nsw i64 %.1.10, 10
  %i.cy = zext nneg i8 %i.au to i64
  %i.cz = add nsw i64 %i.cy, -48
  %i.da = select i1 %i.aw, i64 %i.cz, i64 0
  %.1.11 = add nsw i64 %i.da, %i.cx
  %i.db = mul nsw i64 %.1.11, 10
  %i.dc = zext nneg i8 %i.ax to i64
  %i.dd = add nuw nsw i64 %i.dc, 281474976710608
  %i.de = select i1 %i.az, i64 %i.dd, i64 0
  %.1.12 = add nsw i64 %i.de, %i.db
  %i.df = mul nsw i64 %.1.12, 10
  %i.dg = zext nneg i8 %i.ba to i64
  %i.dh = add nuw nsw i64 %i.dg, 281474976710608
  %i.di = select i1 %i.bc, i64 %i.dh, i64 0
  %.1.13 = add nsw i64 %i.di, %i.df
  %i.dj = shl i64 %.1.13, 16
  %i.dk = udiv i64 %i.dj, 100000000000000
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = add i32 %.040.lcssa, %i.dl
  store i32 %i.dm, ptr %0, align 4, !tbaa !16
  %.not47 = icmp eq ptr %2, null
  br i1 %.not47, label %.loopexit, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.f, %bb.c
  %.3.lcssa.sink = phi ptr [ %.038.lcssa, %bb.c ], [ %.3, %bb.f ]
  store ptr %.3.lcssa.sink, ptr %2, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %bb.a, %bb.f, %bb.d, %bb.c
  %.041 = phi i1 [ true, %bb.a ], [ false, %bb.f ], [ true, %bb.d ], [ false, %bb.c ], [ false, %.loopexit.sink.split ], [ true, %.lr.ph ]
  ret i1 %.041
}

; Function Attrs: nounwind uwtable
define hidden void @je_fxp_print(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, 65535                        ; 4 uses
  %narrow = mul nuw nsw i32 %i.a, 10
  %i.b = add nsw i32 %narrow, -6554
  %or.cond.1 = icmp ult i32 %i.b, 58982
  %.128.1 = zext i1 %or.cond.1 to i32
  %narrow44 = mul nuw nsw i32 %i.a, 100
  %i.c = add nsw i32 %narrow44, -6554
  %or.cond.2 = icmp ult i32 %i.c, 58982
  %.128.2 = select i1 %or.cond.2, i32 2, i32 %.128.1
  %narrow45 = mul nuw nsw i32 %i.a, 1000
  %i.d = add nsw i32 %narrow45, -6554
  %or.cond.3 = icmp ult i32 %i.d, 58982
  %.128.3 = select i1 %or.cond.3, i32 3, i32 %.128.2
  %narrow46 = mul nuw nsw i32 %i.a, 10000         ; 2 uses
  %i.e = zext nneg i32 %narrow46 to i64           ; 10 uses
  %i.f = add nsw i32 %narrow46, -6554
  %or.cond.4 = icmp ult i32 %i.f, 58982
  %.128.4 = select i1 %or.cond.4, i32 4, i32 %.128.3
  %i.g = mul nuw nsw i64 %i.e, 10
  %i.h = add nsw i64 %i.g, -6554
  %or.cond.5 = icmp ult i64 %i.h, 58982
  %.128.5 = select i1 %or.cond.5, i32 5, i32 %.128.4
  %i.i = mul nuw nsw i64 %i.e, 100
  %i.j = add nsw i64 %i.i, -6554
  %or.cond.6 = icmp ult i64 %i.j, 58982
  %.128.6 = select i1 %or.cond.6, i32 6, i32 %.128.5
  %i.k = mul nuw nsw i64 %i.e, 1000
  %i.l = add nsw i64 %i.k, -6554
  %or.cond.7 = icmp ult i64 %i.l, 58982
  %.128.7 = select i1 %or.cond.7, i32 7, i32 %.128.6
  %i.m = mul nuw nsw i64 %i.e, 10000
  %i.n = add nsw i64 %i.m, -6554
  %or.cond.8 = icmp ult i64 %i.n, 58982
  %.128.8 = select i1 %or.cond.8, i32 8, i32 %.128.7
  %i.o = mul nuw nsw i64 %i.e, 100000
  %i.p = add nsw i64 %i.o, -6554
  %or.cond.9 = icmp ult i64 %i.p, 58982
  %.128.9 = select i1 %or.cond.9, i32 9, i32 %.128.8
  %i.q = mul nuw nsw i64 %i.e, 1000000
  %i.r = add nsw i64 %i.q, -6554
  %or.cond.10 = icmp ult i64 %i.r, 58982
  %.128.10 = select i1 %or.cond.10, i32 10, i32 %.128.9
  %i.s = mul nuw nsw i64 %i.e, 10000000
  %i.t = add nsw i64 %i.s, -6554
  %or.cond.11 = icmp ult i64 %i.t, 58982
  %.128.11 = select i1 %or.cond.11, i32 11, i32 %.128.10
  %i.u = mul nuw nsw i64 %i.e, 100000000
  %i.v = add nsw i64 %i.u, -6554
  %or.cond.12 = icmp ult i64 %i.v, 58982
  %.128.12 = select i1 %or.cond.12, i32 12, i32 %.128.11
  %i.w = mul nuw nsw i64 %i.e, 1000000000
  %i.x = add nsw i64 %i.w, -6554
  %or.cond.13 = icmp ult i64 %i.x, 58982
  %.128.13 = select i1 %or.cond.13, i32 13, i32 %.128.12 ; 3 uses
  %i.y = mul nuw nsw i64 %i.e, 10000000000
  %i.z = lshr i32 %0, 16
  %i.aa = lshr i64 %i.y, 16                       ; 4 uses
  %.not34 = icmp ne i64 %i.aa, 0
  %i.ab = urem i64 %i.aa, 10
  %i.ac = icmp eq i64 %i.ab, 0
  %or.cond3035 = and i1 %.not34, %i.ac
  br i1 %or.cond3035, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.136 = phi i64 [ %i.ad, %.lr.ph ], [ %i.aa, %bb.a ] ; 2 uses
  %i.ad = udiv i64 %.136, 10                      ; 3 uses
  %.not = icmp samesign ugt i64 %.136, 9
  %i.ae = urem i64 %i.ad, 10
  %i.af = icmp eq i64 %i.ae, 0
  %or.cond30 = and i1 %.not, %i.af
  br i1 %or.cond30, label %.lr.ph, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.1.lcssa = phi i64 [ %i.aa, %bb.a ], [ %i.ad, %.lr.ph ]
  %i.ag = tail call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef %1, i64 noundef 21, ptr noundef nonnull @.str, i32 noundef %i.z) #4 ; 3 uses
  %.not41 = icmp eq i32 %.128.13, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.critedge
  %scevgep = getelementptr i8, ptr %1, i64 %i.ag
  %i.ah = zext nneg i32 %.128.13 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.ah, i1 false), !tbaa !12
  %i.ai = add nsw i32 %.128.13, -1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = add i64 %i.ak, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph39.preheader, %.critedge
  %.024.lcssa = phi i64 [ %i.ag, %.critedge ], [ %i.al, %.lr.ph39.preheader ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.024.lcssa
  %i.an = sub i64 21, %.024.lcssa
  %i.ao = tail call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.1, i64 noundef %.1.lcssa) #4 ; 0 uses
  ret void
}

declare i64 @je_malloc_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!9, !9, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = distinct !{!20, !13}
end_hunk_0
