inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"in suecrypt\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SUE: Can't read %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"SUE: Key seems not (entirely) encrypted\0A\09possible key: 0%08x\0A\09crypted key:  0%08x\0A\09plain key:    0%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SUE: let's roll the dice...\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"SUE: Decrypting with 0%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"SUE: Hunk #%d RVA:%x size:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"SUE: Hunk out of file or cross sections\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SUE: found OEP: @%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @sudecrypt(i32 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str) #6
  %i.a = tail call ptr @cli_calloc(i64 noundef %1, i64 noundef 1) #6 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #6 ; 0 uses
  %i.c = trunc i64 %1 to i32
  %i.d = tail call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.c) #6
  %i.e = sext i32 %i.d to i64
  %.not132 = icmp eq i64 %1, %i.e
  br i1 %.not132, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, i64 noundef %1) #6
  tail call void @free(ptr noundef nonnull %i.a) #6
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 16) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 62
  %.val145 = load i32, ptr %i.g, align 1
  %.val145.fr = freeze i32 %.val145               ; 3 uses
  %i.h = icmp eq i32 %.val145.fr, %i.f
  br i1 %i.h, label %bb.e, label %switch.early.test

switch.early.test:                                ; preds = %bb.d
  %i.i = xor i32 %.val145.fr, %i.f                ; 2 uses
  switch i32 %i.i, label %bb.f [
    i32 956, label %bb.e
    i32 520, label %bb.e
  ]

bb.e:                                             ; preds = %switch.early.test, %switch.early.test, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 70
  %.val144 = load i32, ptr %i.j, align 1          ; 2 uses
  %i.k = xor i32 %.val144, %i.f
  br label %bb.f

bb.f:                                             ; preds = %switch.early.test, %bb.e
  %.0115 = phi i32 [ %.val144, %bb.e ], [ %.val145.fr, %switch.early.test ] ; 4 uses
  %.0113 = phi i32 [ %i.k, %bb.e ], [ %i.i, %switch.early.test ] ; 6 uses
  %.not133 = icmp eq i32 %.0113, %6
  br i1 %.not133, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %6, i32 noundef %.0113, i32 noundef %.0115) #6
  %i.l = and i32 %.0113, 255
  %i.m = and i32 %.0115, -256
  %i.n = or disjoint i32 %i.l, %i.m
  %i.o = icmp eq i32 %i.n, %6
  br i1 %i.o, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %.0113, 65535
  %i.q = and i32 %.0115, -65536
  %i.r = or disjoint i32 %i.p, %i.q
  %i.s = icmp eq i32 %i.r, %6
  br i1 %i.s, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = and i32 %.0113, 16777215
  %i.u = and i32 %.0115, -16777216
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = icmp eq i32 %i.v, %6
  br i1 %i.w, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #6
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.f
  %.2 = phi i32 [ %.0113, %bb.j ], [ %6, %bb.f ], [ %6, %bb.i ], [ %6, %bb.h ], [ %6, %bb.g ] ; 3 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, i32 noundef %.2) #6
  %i.x = getelementptr inbounds i8, ptr %4, i64 -88 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %4, i64 -84 ; 2 uses
  %.not183 = icmp eq i16 %3, 0
  br i1 %.not183, label %.thread.split.split.us, label %.thread.split.us.preheader

.thread.split.us.preheader:                       ; preds = %.thread
  %wide.trip.count = zext i16 %3 to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.z = zext i16 %3 to i64
  br label %.thread.split.us

.thread.split.us:                                 ; preds = %.thread.split.us.preheader, %bb.k
  %indvars.iv197 = phi i64 [ 0, %.thread.split.us.preheader ], [ %indvars.iv.next198, %bb.k ] ; 2 uses
  %indvars.iv195 = phi i64 [ 0, %.thread.split.us.preheader ], [ %indvars.iv.next196, %bb.k ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv195
  %.val143.us = load i32, ptr %i.aa, align 1      ; 2 uses
  %i.ab = xor i32 %.val143.us, %5                 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv195
  %.val142.us = load i32, ptr %i.ac, align 1
  %.val142.us.fr = freeze i32 %.val142.us         ; 2 uses
  %i.ad = xor i32 %.val142.us.fr, %5              ; 7 uses
  %.not136.us = icmp eq i32 %.val143.us, %5
  br i1 %.not136.us, label %.split.us, label %.lr.ph.us

bb.k:                                             ; preds = %bb.o
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 8
  %exitcond202 = icmp eq i64 %indvars.iv.next198, 20
  br i1 %exitcond202, label %.split174.us, label %.thread.split.us

.lr.ph.us:                                        ; preds = %.thread.split.us
  %i.ae = trunc nuw nsw i64 %indvars.iv197 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %i.ae, i32 noundef %i.ab, i32 noundef %i.ad) #6
  %i.af = icmp eq i32 %.val142.us.fr, %5
  %i.ag = add i32 %i.ad, %i.ab                    ; 2 uses
  br i1 %i.af, label %.split176.us, label %.lr.ph.split.us172

.lr.ph.split.us172:                               ; preds = %.lr.ph.us, %8
  %indvars.iv = phi i64 [ %indvars.iv.next, %8 ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [36 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 2 uses
  %.not137.us = icmp ugt i32 %i.ad, %i.aj
  br i1 %.not137.us, label %8, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us172
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !10 ; 4 uses
  %.not138.us = icmp ult i32 %i.ab, %i.ak
  br i1 %.not138.us, label %8, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add i32 %i.ak, %i.aj
  %.not139.us = icmp ule i32 %i.ag, %i.al
  %i.am = icmp ugt i32 %i.ag, %i.ak
  %or.cond140.us = and i1 %i.am, %.not139.us
  br i1 %or.cond140.us, label %bb.n, label %8

8:                                                ; preds = %bb.m, %bb.l, %.lr.ph.split.us172
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split176.us, label %.lr.ph.split.us172, !llvm.loop !11

bb.n:                                             ; preds = %bb.m
  %i.an = icmp ugt i32 %i.ad, 3
  br i1 %i.an, label %.lr.ph167.us.preheader, label %bb.o

.lr.ph167.us.preheader:                           ; preds = %bb.n
  %i.ao = zext i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  %i.aq = zext i32 %i.ab to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !13
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av ; 3 uses
  %i.ax = add i32 %i.ad, -4                       ; 2 uses
  %i.ay = lshr i32 %i.ax, 2
  %narrow = add nuw nsw i32 %i.ay, 1
  %i.az = zext nneg i32 %narrow to i64            ; 2 uses
  %min.iters.check = icmp ult i32 %i.ax, 28
  br i1 %min.iters.check, label %.lr.ph167.us.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167.us.preheader
  %n.vec = and i64 %i.az, 2147483640              ; 4 uses
  %i.ba = trunc nuw nsw i64 %n.vec to i32
  %i.bb = shl i32 %i.ba, 2
  %i.bc = sub i32 %i.ad, %i.bb
  %i.bd = shl nuw nsw i64 %n.vec, 2
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bf ; 3 uses
  %i.bg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load221 = load <4 x i32>, ptr %i.bg, align 1
  %i.bh = xor <4 x i32> %wide.load, %broadcast.splat
  %i.bi = xor <4 x i32> %wide.load221, %broadcast.splat
  store <4 x i32> %i.bh, ptr %next.gep, align 1
  store <4 x i32> %i.bi, ptr %i.bg, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.az
  br i1 %cmp.n, label %bb.o, label %.lr.ph167.us.preheader223

.lr.ph167.us.preheader223:                        ; preds = %.lr.ph167.us.preheader, %middle.block
  %.1116166.us.ph = phi i32 [ %i.ad, %.lr.ph167.us.preheader ], [ %i.bc, %middle.block ]
  %.0118165.us.ph = phi ptr [ %i.aw, %.lr.ph167.us.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph167.us

.lr.ph167.us:                                     ; preds = %.lr.ph167.us.preheader223, %.lr.ph167.us
  %.1116166.us = phi i32 [ %i.bm, %.lr.ph167.us ], [ %.1116166.us.ph, %.lr.ph167.us.preheader223 ]
  %.0118165.us = phi ptr [ %i.bl, %.lr.ph167.us ], [ %.0118165.us.ph, %.lr.ph167.us.preheader223 ] ; 3 uses
  %.0118.val.us = load i32, ptr %.0118165.us, align 1
  %i.bk = xor i32 %.0118.val.us, %.2
  store i32 %i.bk, ptr %.0118165.us, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.0118165.us, i64 4
  %i.bm = add i32 %.1116166.us, -4                ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, 3
  br i1 %i.bn, label %.lr.ph167.us, label %bb.o, !llvm.loop !17

bb.o:                                             ; preds = %.lr.ph167.us, %middle.block, %bb.n
  %exitcond.not.a = icmp eq i64 %indvars.iv, %i.z
  br i1 %exitcond.not.a, label %.split176.us, label %bb.k

.thread.split.split.us:                           ; preds = %.thread
  %.val143.us179 = load i32, ptr %i.x, align 1    ; 2 uses
  %.not136.us181 = icmp eq i32 %.val143.us179, %5
  br i1 %.not136.us181, label %.split.us, label %.loopexit150.us182

.loopexit150.us182:                               ; preds = %.thread.split.split.us
  %.val142.us180 = load i32, ptr %i.y, align 1
  %i.bo = xor i32 %.val142.us180, %5
  %i.bp = xor i32 %.val143.us179, %5
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef %i.bp, i32 noundef %i.bo) #6
  br label %.split176.us

.split174.us:                                     ; preds = %bb.k
  tail call void @free(ptr noundef %i.a) #6
  br label %bb.p

.split176.us:                                     ; preds = %.lr.ph.us, %bb.o, %8, %.loopexit150.us182
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #6
  tail call void @free(ptr noundef %i.a) #6
  br label %bb.p

.split.us:                                        ; preds = %.thread.split.us, %.thread.split.split.us
  %i.bq = getelementptr inbounds i8, ptr %4, i64 -116
  %.val141 = load i32, ptr %i.bq, align 1
  %i.br = xor i32 %.val141, %5                    ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, i32 noundef %i.br) #6
  %i.bs = zext i32 %7 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs ; 4 uses
  %i.bu = zext i16 %3 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  store i16 %3, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  store i32 %i.br, ptr %i.bw, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %.val = load i32, ptr %i.bx, align 1
  %i.by = and i32 %.val, 65535
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = mul nuw nsw i64 %i.bu, 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.cd, i8 0, i64 40, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %.split.us, %.split176.us, %.split174.us, %bb.c
  %.0119 = phi ptr [ null, %bb.c ], [ null, %.split176.us ], [ %i.a, %.split.us ], [ null, %.split174.us ], [ null, %bb.a ]
  ret ptr %.0119
}

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!9, !5, i64 8}
!14 = distinct !{!14, !12, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !12, !16, !15}
end_hunk_0
