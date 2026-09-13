Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfcvt?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._sftab_ = type { [6 x x86_fp80], [6 x x86_fp80], [200 x i8], ptr, ptr, [256 x i8], [256 x i8], [256 x i8] }

@_sfcvt.Buf = internal global [1284 x i8] zeroinitializer, align 16
@_Sfi = external local_unnamed_addr global i64, align 8
@_Sftable = external local_unnamed_addr global %struct._sftab_, align 16
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Inf\00", align 1

; Function Attrs: nofree nounwind uwtable
define nonnull ptr @_sfcvt(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !12
  store i32 0, ptr %3, align 4, !tbaa !12
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 4 uses
  %i.b = fcmp oeq double %i.a, 0.000000e+00
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt double %i.a, 0.000000e+00       ; 2 uses
  %i.d = zext i1 %i.c to i32
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  %i.e = fneg double %i.a
  %.082 = select i1 %i.c, double %i.e, double %i.a ; 3 uses
  %i.f = fcmp ult double %.082, f0x43E0000000000000
  br i1 %i.f, label %.loopexit145, label %.preheader144

.preheader144:                                    ; preds = %bb.b, %bb.e
  %.093 = phi i64 [ %.194, %bb.e ], [ 0, %bb.b ]  ; 2 uses
  %.091 = phi i64 [ %.192, %bb.e ], [ 5, %bb.b ]  ; 5 uses
  %.1 = phi double [ %.2, %bb.e ], [ %.082, %bb.b ] ; 2 uses
  %i.g = fpext double %.1 to x86_fp80             ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr @_Sftable, i64 %.091
  %i.i = load x86_fp80, ptr %i.h, align 16, !tbaa !16
  %i.j = fcmp ogt x86_fp80 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader144
  %i.k = add nsw i64 %.091, -1
  br label %bb.e

bb.d:                                             ; preds = %.preheader144
  %i.l = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 96), i64 %.091
  %i.m = load x86_fp80, ptr %i.l, align 16, !tbaa !16
  %i.n = fmul x86_fp80 %i.m, %i.g
  %i.o = fptrunc x86_fp80 %i.n to double
  %i.p = trunc i64 %.091 to i32
  %i.q = shl nuw i32 1, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = add nsw i64 %.093, %i.r                  ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1023
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.194 = phi i64 [ %.093, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %.192 = phi i64 [ %i.k, %bb.c ], [ %.091, %bb.d ]
  %.2 = phi double [ %.1, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.u = fcmp ult double %.2, f0x43E0000000000000
  br i1 %i.u, label %.loopexit145.loopexit, label %.preheader144, !llvm.loop !8

.loopexit145.loopexit:                            ; preds = %bb.e
  %i.v = trunc i64 %.194 to i32
  br label %.loopexit145

.loopexit145:                                     ; preds = %.loopexit145.loopexit, %bb.b
  %.295 = phi i32 [ 0, %bb.b ], [ %i.v, %.loopexit145.loopexit ] ; 2 uses
  %.3 = phi double [ %.082, %bb.b ], [ %.2, %.loopexit145.loopexit ] ; 3 uses
  store i32 %.295, ptr %2, align 4, !tbaa !12
  %i.w = fptosi double %.3 to i32                 ; 3 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.loopexit145
  %i.x = sext i32 %i.w to i64
  %i.y = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_sfcvt.Buf, i64 noundef 1284, ptr noundef nonnull @.str, i64 noundef %i.x) #5 ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 512), i64 %i.aa ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 16 @_sfcvt.Buf, i64 %i.z, i1 false)
  %i.ac = load i32, ptr %2, align 4, !tbaa !12
  %i.ad = add nsw i32 %i.ac, %i.y                 ; 3 uses
  store i32 %i.ad, ptr %2, align 4, !tbaa !12
  %i.ae = icmp sgt i32 %i.ad, 1023
  br i1 %i.ae, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sitofp i32 %i.w to double
  %i.ag = fsub double %.3, %i.af
  br label %bb.h

bb.h:                                             ; preds = %.loopexit145, %bb.g
  %.promoted = phi i32 [ %i.ad, %bb.g ], [ %.295, %.loopexit145 ] ; 3 uses
  %.396 = phi i64 [ %i.z, %bb.g ], [ 0, %.loopexit145 ]
  %.084 = phi ptr [ %i.ab, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 512), %.loopexit145 ] ; 6 uses
  %.4 = phi double [ %i.ag, %bb.g ], [ %.3, %.loopexit145 ] ; 5 uses
  %i.ah = and i32 %4, 134217728
  %.not119 = icmp ne i32 %i.ah, 0                 ; 3 uses
  %i.ai = icmp slt i32 %.promoted, 1
  %or.cond179 = select i1 %.not119, i1 true, i1 %i.ai
  %i.aj = add nuw nsw i32 %.promoted, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = select i1 %or.cond179, i64 1, i64 %i.ak
  %i.am = sub nsw i64 %i.al, %.396
  %narrow = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.an = zext nneg i32 %narrow to i64
  %.497 = add nsw i64 %i.am, %i.an                ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 512), i64 %.497
  %i.ap = icmp sgt i64 %.497, 770
  %.086 = select i1 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 1282), ptr %i.ao ; 11 uses
  %i.aq = icmp ult ptr %.086, getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 512)
  br i1 %i.aq, label %.loopexit141, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not119, label %bb.j, label %.loopexit143

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp eq i32 %.promoted, 0
  %i.as = fcmp ogt double %.4, 0.000000e+00
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %.preheader142, label %.loopexit143

.preheader142:                                    ; preds = %bb.j
  %i.at = fmul nnan double %.4, 1.000000e+01      ; 2 uses
  %i.au = fptosi double %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.lr.ph, label %.loopexit143

.lr.ph:                                           ; preds = %.preheader142, %.lr.ph
  %i.aw = phi i32 [ %i.ay, %.lr.ph ], [ 0, %.preheader142 ]
  %i.ax = phi double [ %i.az, %.lr.ph ], [ %i.at, %.preheader142 ] ; 2 uses
  %i.ay = add nsw i32 %i.aw, -1                   ; 2 uses
  %i.az = fmul double %i.ax, 1.000000e+01         ; 2 uses
  %i.ba = fptosi double %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %..loopexit143_crit_edge, !llvm.loop !9

..loopexit143_crit_edge:                          ; preds = %.lr.ph
  store i32 %i.ay, ptr %2, align 4, !tbaa !12
  br label %.loopexit143

.loopexit143:                                     ; preds = %.preheader142, %..loopexit143_crit_edge, %bb.j, %bb.i
  %.6 = phi double [ %.4, %bb.i ], [ %.4, %bb.j ], [ %i.ax, %..loopexit143_crit_edge ], [ %.4, %.preheader142 ]
  %i.bc = icmp ugt ptr %.086, getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 512)
  br i1 %i.bc, label %.lr.ph150.preheader, label %.loopexit141

.lr.ph150.preheader:                              ; preds = %.loopexit143
  %smin = tail call i64 @llvm.smin.i64(i64 %.497, i64 770)
  %i.bd = add i64 %smin, add (i64 ptrtoaddr (ptr @_sfcvt.Buf to i64), i64 512) ; 2 uses
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %.loopexit140
  %.7149 = phi double [ %.8, %.loopexit140 ], [ %.6, %.lr.ph150.preheader ] ; 2 uses
  %.199148 = phi ptr [ %.4102, %.loopexit140 ], [ getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 512), %.lr.ph150.preheader ] ; 6 uses
  %.199148161 = ptrtoaddr ptr %.199148 to i64     ; 4 uses
  %i.be = fcmp ugt double %.7149, 0.000000e+00
  br i1 %i.be, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph150
  %i.bf = add i64 %.199148161, 1
  %umax167 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.bf)
  %i.bg = sub i64 %umax167, %.199148161
  tail call void @llvm.memset.p0.i64(ptr align 1 %.199148, i8 48, i64 %i.bg, i1 false), !tbaa !18
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph150
  %i.bh = fmul double %.7149, 1.000000e+01        ; 3 uses
  %i.bi = fptosi double %i.bh to i32              ; 3 uses
  %5 = icmp ult i32 %i.bi, 10
  br i1 %5, label %bb.l, label %.preheader139.preheader

.preheader139.preheader:                          ; preds = %bb.k
  %i.bj = add i64 %.199148161, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.bj)
  %i.bk = sub i64 %umax, %.199148161              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.199148, i8 57, i64 %i.bk, i1 false), !tbaa !18
  %scevgep = getelementptr i8, ptr %.199148, i64 %i.bk
  br label %.loopexit140

bb.l:                                             ; preds = %bb.k
  %i.bl = trunc nuw nsw i32 %i.bi to i8
  %6 = or disjoint i8 %i.bl, 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.199148, i64 1
  store i8 %6, ptr %.199148, align 1, !tbaa !18
  %7 = uitofp nneg i32 %i.bi to double
  %i.bn = fsub double %i.bh, %7
  br label %.loopexit140

.loopexit140:                                     ; preds = %.preheader139.preheader, %bb.l
  %.4102 = phi ptr [ %i.bm, %bb.l ], [ %scevgep, %.preheader139.preheader ] ; 3 uses
  %.8 = phi double [ %i.bn, %bb.l ], [ %i.bh, %.preheader139.preheader ]
  %i.bo = icmp ult ptr %.4102, %.086
  br i1 %i.bo, label %.lr.ph150, label %.loopexit141, !llvm.loop !10

.loopexit141:                                     ; preds = %.loopexit140, %.loopexit143, %bb.h
  %.6104.ph = phi ptr [ %.086, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 512), %.loopexit143 ], [ %.4102, %.loopexit140 ]
  %.not120 = icmp ugt ptr %.086, %.084
  br i1 %.not120, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit141
  %i.bp = getelementptr inbounds nuw i8, ptr %.084, i64 1
  br label %.loopexit

bb.n:                                             ; preds = %.loopexit141
  %i.bq = icmp ult ptr %.086, getelementptr inbounds nuw (i8, ptr @_sfcvt.Buf, i64 1282)
  br i1 %i.bq, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds i8, ptr %.6104.ph, i64 -1 ; 4 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = add i8 %i.bs, 5                         ; 2 uses
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !18
  %i.bu = icmp sgt i8 %i.bt, 57
  br i1 %i.bu, label %.lr.ph154, label %.loopexit

.lr.ph154:                                        ; preds = %bb.o
  br i1 %.not119, label %.lr.ph154.split, label %.lr.ph154.split.us

.lr.ph154.split.us:                               ; preds = %.lr.ph154, %bb.r
  %.288153.us = phi ptr [ %.389.us, %bb.r ], [ %.086, %.lr.ph154 ] ; 3 uses
  %.7105152.us = phi ptr [ %.8106.us, %bb.r ], [ %i.br, %.lr.ph154 ] ; 6 uses
  store i8 48, ptr %.7105152.us, align 1, !tbaa !18
  %i.bv = icmp ugt ptr %.7105152.us, %.084
  br i1 %i.bv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph154.split.us
  store i8 49, ptr %.7105152.us, align 1, !tbaa !18
  %i.bw = load i32, ptr %2, align 4, !tbaa !12
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %2, align 4, !tbaa !12
  %i.by = getelementptr inbounds i8, ptr %.288153.us, i64 -1
  store i8 48, ptr %i.by, align 1, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %.288153.us, i64 1
  %.pr.us.pre = load i8, ptr %.7105152.us, align 1, !tbaa !18
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph154.split.us
  %i.ca = getelementptr inbounds i8, ptr %.7105152.us, i64 -1 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18
  %i.cc = add i8 %i.cb, 1                         ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pr.us = phi i8 [ %i.cc, %bb.q ], [ %.pr.us.pre, %bb.p ]
  %.8106.us = phi ptr [ %i.ca, %bb.q ], [ %.7105152.us, %bb.p ]
  %.389.us = phi ptr [ %.288153.us, %bb.q ], [ %i.bz, %bb.p ] ; 2 uses
  %i.cd = icmp sgt i8 %.pr.us, 57
  br i1 %i.cd, label %.lr.ph154.split.us, label %.loopexit, !llvm.loop !11

.lr.ph154.split:                                  ; preds = %.lr.ph154, %bb.u
  %.7105152 = phi ptr [ %.8106, %bb.u ], [ %i.br, %.lr.ph154 ] ; 6 uses
  store i8 48, ptr %.7105152, align 1, !tbaa !18
  %i.ce = icmp ugt ptr %.7105152, %.084
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph154.split
  %i.cf = getelementptr inbounds i8, ptr %.7105152, i64 -1 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18
  %i.ch = add i8 %i.cg, 1                         ; 2 uses
  store i8 %i.ch, ptr %i.cf, align 1, !tbaa !18
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph154.split
  store i8 49, ptr %.7105152, align 1, !tbaa !18
  %i.ci = load i32, ptr %2, align 4, !tbaa !12
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %2, align 4, !tbaa !12
  %.pr.pre = load i8, ptr %.7105152, align 1, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pr = phi i8 [ %i.ch, %bb.s ], [ %.pr.pre, %bb.t ]
  %.8106 = phi ptr [ %i.cf, %bb.s ], [ %.7105152, %bb.t ]
  %i.ck = icmp sgt i8 %.pr, 57
  br i1 %i.ck, label %.lr.ph154.split, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.r, %bb.u, %.preheader.preheader, %bb.o, %bb.m, %bb.n
  %.490 = phi ptr [ %i.bp, %bb.m ], [ %.086, %.preheader.preheader ], [ %.086, %bb.n ], [ %.086, %bb.o ], [ %.086, %bb.u ], [ %.389.us, %bb.r ]
  %i.cl = getelementptr inbounds i8, ptr %.490, i64 -1 ; 2 uses
  store i8 0, ptr %i.cl, align 1, !tbaa !18
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %.084 to i64
  %i.co = sub i64 %i.cm, %i.cn
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.a, %.loopexit
  %.sink = phi i64 [ 1, %bb.a ], [ 3, %bb.f ], [ %i.co, %.loopexit ], [ 3, %bb.d ]
  %.1108 = phi ptr [ @.str.1, %bb.a ], [ @.str.2, %bb.f ], [ %.084, %.loopexit ], [ @.str.2, %bb.d ]
  store i64 %.sink, ptr @_Sfi, align 8, !tbaa !20
  ret ptr %.1108
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!8 = distinct !{!8, !17}
!9 = distinct !{!9, !17}
!10 = distinct !{!10, !17}
!11 = distinct !{!11, !17}
!12 = !{!5, !5, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long double", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!4, !4, i64 0}
!19 = !{!"long", !4, i64 0}
!20 = !{!19, !19, i64 0}
end_hunk_0
