Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/dmstor?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZL2vm = internal unnamed_addr constant [3 x double] [double f0x3F91DF46A2529D39, double f0x3F33104B57CF96A3, double f0x3ED455A5B2FF8F9D], align 16
@.str = private unnamed_addr constant [9 x i8] c"NnEeSsWw\00", align 1

; Function Attrs: mustprogress uwtable
define noundef double @_Z6dmstorPKcPPc(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z18pj_get_default_ctxv()
  %i.b = tail call noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef %i.a, ptr noundef %0, ptr noundef %1)
  ret double %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_Z10dmstor_ctxP6pj_ctxPKcPPc(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %2, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @__ctype_b_loc() #8        ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.050 = phi ptr [ %1, %bb.c ], [ %i.j, %bb.d ]  ; 4 uses
  %i.e = load i8, ptr %.050, align 1, !tbaa !17   ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !19
  %i.i = and i16 %i.h, 8192
  %.not62 = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.050, i64 1
  br i1 %.not62, label %.preheader, label %bb.d, !llvm.loop !8

.preheader:                                       ; preds = %bb.d, %bb.g
  %i.k = phi ptr [ %i.x, %bb.g ], [ %i.b, %bb.d ] ; 4 uses
  %i.l = phi ptr [ %.pre90.1, %bb.g ], [ %i.d, %bb.d ]
  %i.m = phi i8 [ %.pre.1, %bb.g ], [ %i.e, %bb.d ] ; 3 uses
  %.044 = phi i32 [ %i.v, %bb.g ], [ 64, %bb.d ]
  %.042 = phi ptr [ %i.w, %bb.g ], [ %.050, %bb.d ] ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !19
  %.fr = freeze i16 %i.p
  %.not63 = icmp slt i16 %.fr, 0
  br i1 %.not63, label %bb.e, label %switch.early.test

switch.early.test:                                ; preds = %.preheader
  switch i8 %i.m, label %.critedge [
    i8 -62, label %bb.e
    i8 -80, label %bb.e
  ]

bb.e:                                             ; preds = %.preheader, %switch.early.test, %switch.early.test
  %i.q = getelementptr inbounds nuw i8, ptr %.042, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 4 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !14
  store i8 %i.m, ptr %i.k, align 1, !tbaa !17
  %.pre = load i8, ptr %i.q, align 1, !tbaa !17   ; 3 uses
  %.pre90 = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.s = zext i8 %.pre to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.pre90, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !19
  %.fr.1 = freeze i16 %i.u
  %.not63.1 = icmp slt i16 %.fr.1, 0
  br i1 %.not63.1, label %bb.f, label %switch.early.test.1

switch.early.test.1:                              ; preds = %bb.e
  switch i8 %.pre, label %.critedge [
    i8 -62, label %bb.f
    i8 -80, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test.1, %switch.early.test.1, %bb.e
  %i.v = add nsw i32 %.044, -2                    ; 2 uses
  %.not64.1 = icmp eq i32 %i.v, 0
  br i1 %.not64.1, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.042, i64 2 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !14
  store i8 %.pre, ptr %i.r, align 1, !tbaa !17
  %.pre.1 = load i8, ptr %i.w, align 1, !tbaa !17
  %.pre90.1 = load ptr, ptr %i.c, align 8, !tbaa !16
  br label %.preheader, !llvm.loop !9

.critedge:                                        ; preds = %bb.f, %switch.early.test.1, %switch.early.test
  %.lcssa209 = phi ptr [ %i.k, %switch.early.test ], [ %i.r, %bb.f ], [ %i.r, %switch.early.test.1 ]
  store i8 0, ptr %.lcssa209, align 1, !tbaa !17
  store ptr %i.b, ptr %i.a, align 8, !tbaa !14
  %i.y = load i8, ptr %i.b, align 16, !tbaa !17   ; 2 uses
  switch i8 %i.y, label %bb.i [
    i8 45, label %bb.h
    i8 43, label %bb.h
  ]

bb.h:                                             ; preds = %.critedge, %.critedge
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  %i.ab = phi ptr [ %i.aa, %bb.h ], [ %i.b, %.critedge ]
  %.039 = phi i32 [ %i.z, %bb.h ], [ 43, %.critedge ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.v
  %i.ac = phi ptr [ %i.ab, %bb.i ], [ %i.bc, %bb.v ] ; 5 uses
  %.04085 = phi double [ 0.000000e+00, %bb.i ], [ %i.bb, %bb.v ] ; 3 uses
  %.04384 = phi i32 [ 0, %bb.i ], [ %i.bd, %bb.v ] ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17  ; 4 uses
  %3 = add i8 %i.ad, -48
  %isdigit = icmp ult i8 %3, 10
  %i.ae = icmp eq i8 %i.ad, 46
  %or.cond = or i1 %i.ae, %isdigit
  br i1 %or.cond, label %.lr.ph.i, label %split

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %i.af = phi i8 [ %i.aj, %bb.l ], [ %i.ad, %bb.j ] ; 2 uses
  %.020.i = phi ptr [ %i.ai, %bb.l ], [ %i.ac, %bb.j ] ; 3 uses
  %i.ag = and i8 %i.af, -33
  %or.cond.i = icmp eq i8 %i.ag, 68
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %.020.i, align 1, !tbaa !17
  %i.ah = call double @strtod(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a) #7
  store i8 %i.af, ptr %.020.i, align 1, !tbaa !17
  br label %_ZL11proj_strtodPcPS_.exit

bb.l:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.020.i, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.l
  %i.ak = call noundef double @_Z9pj_strtodPKcPPc(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a)
  br label %_ZL11proj_strtodPcPS_.exit

_ZL11proj_strtodPcPS_.exit:                       ; preds = %bb.k, %._crit_edge.i
  %.015.i = phi double [ %i.ah, %bb.k ], [ %i.ak, %._crit_edge.i ] ; 4 uses
  %i.al = fcmp oeq double %.015.i, +inf
  br i1 %i.al, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %_ZL11proj_strtodPcPS_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !14  ; 5 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17
  switch i8 %i.an, label %.thread [
    i8 68, label %bb.t
    i8 100, label %bb.t
    i8 -80, label %bb.t
    i8 39, label %bb.n
    i8 34, label %bb.o
    i8 -62, label %bb.p
    i8 114, label %bb.q
    i8 82, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = icmp eq i8 %i.ap, -80
  br i1 %i.aq, label %bb.t, label %.thread

bb.q:                                             ; preds = %bb.m, %bb.m
  %.not67 = icmp eq i32 %.04384, 0
  br i1 %.not67, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1027)
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !14
  br label %._crit_edge

.thread:                                          ; preds = %bb.m, %bb.p
  %i.as = zext nneg i32 %.04384 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZL2vm, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !22
  %i.av = call double @llvm.fmuladd.f64(double %.015.i, double %i.au, double %.04085)
  br label %._crit_edge

bb.t:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.p, %bb.n, %bb.o
  %i.aw = phi i1 [ true, %bb.m ], [ true, %bb.n ], [ false, %bb.o ], [ true, %bb.m ], [ true, %bb.m ], [ true, %bb.p ]
  %.3 = phi i32 [ 0, %bb.m ], [ 1, %bb.n ], [ 2, %bb.o ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.p ] ; 3 uses
  %.0 = phi i64 [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.m ], [ 2, %bb.p ]
  %i.ax = icmp samesign ult i32 %.3, %.04384
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %0, i32 noundef 1027)
  br label %.loopexit

bb.v:                                             ; preds = %bb.t
  %i.ay = zext nneg i32 %.3 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZL2vm, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !22
  %i.bb = call double @llvm.fmuladd.f64(double %.015.i, double %i.ba, double %.04085) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %.0 ; 3 uses
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !14
  %i.bd = add nuw nsw i32 %.3, 1
  br i1 %i.aw, label %bb.j, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.v, %bb.s, %.thread
  %.141.ph102 = phi double [ %i.av, %.thread ], [ %.015.i, %bb.s ], [ %i.bb, %bb.v ]
  %i.be = phi ptr [ %i.am, %.thread ], [ %i.ar, %bb.s ], [ %i.bc, %bb.v ] ; 2 uses
  %.pre91 = load i8, ptr %i.be, align 1, !tbaa !17
  br label %split, !llvm.loop !11

split:                                            ; preds = %bb.j, %._crit_edge
  %i.bf = phi i8 [ %.pre91, %._crit_edge ], [ %i.ad, %bb.j ] ; 2 uses
  %i.bg = phi ptr [ %i.be, %._crit_edge ], [ %i.ac, %bb.j ] ; 3 uses
  %.040.lcssa = phi double [ %.141.ph102, %._crit_edge ], [ %.04085, %bb.j ] ; 2 uses
  %.not65 = icmp eq i8 %i.bf, 0
  br i1 %.not65, label %bb.y, label %bb.w

bb.w:                                             ; preds = %split
  %i.bh = sext i8 %i.bf to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.bh, i64 9) ; 2 uses
  %.not66 = icmp eq ptr %memchr, null
  br i1 %.not66, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = ptrtoint ptr %memchr to i64
  %i.bj = sub i64 %i.bi, ptrtoint (ptr @.str to i64)
  %i.bk = icmp sgt i64 %i.bj, 3
  %i.bl = select i1 %i.bk, i32 45, i32 43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %split
  %i.bn = phi ptr [ %i.bm, %bb.x ], [ %i.bg, %bb.w ], [ %i.bg, %split ]
  %.1 = phi i32 [ %i.bl, %bb.x ], [ %.039, %bb.w ], [ %.039, %split ]
  %i.bo = icmp eq i32 %.1, 45
  %i.bp = fneg double %.040.lcssa
  %.2 = select i1 %i.bo, double %i.bp, double %.040.lcssa ; 2 uses
  br i1 %.not, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.b to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %.050, i64 %i.bs
  store ptr %i.bt, ptr %2, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL11proj_strtodPcPS_.exit, %bb.r, %bb.u, %bb.y, %bb.z
  %.249 = phi double [ +inf, %bb.r ], [ %.2, %bb.y ], [ %.2, %bb.z ], [ +inf, %bb.u ], [ +inf, %_ZL11proj_strtodPcPS_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret double %.249
}

declare noundef ptr @_Z18pj_get_default_ctxv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #5

declare noundef double @_Z9pj_strtodPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !20}
!9 = distinct !{!9, !20}
!10 = distinct !{!10, !20}
!11 = distinct !{!11, !20}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 short", !12, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!"short", !4, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"double", !4, i64 0}
!22 = !{!21, !21, i64 0}
end_hunk_0
