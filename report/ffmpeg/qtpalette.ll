Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qtpalette?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@qt_default_palette_2 = internal unnamed_addr constant [6 x i8] c"\FF\FF\FF\00\00\00", align 1
@qt_default_palette_4 = internal unnamed_addr constant [12 x i8] c"\FF\FF\FF\AC\AC\ACUUU\00\00\00", align 1
@qt_default_palette_16 = internal unnamed_addr constant [48 x i8] c"\FF\FF\FF\FC\F3\05\FFd\02\DD\08\06\F2\08\84F\00\A5\00\00\D4\02\AB\EA\1F\B7\14\00d\11V,\05\90q:\C0\C0\C0\80\80\80@@@\00\00\00", align 16
@qt_default_palette_256 = internal unnamed_addr constant [768 x i8] c"\FF\FF\FF\FF\FF\CC\FF\FF\99\FF\FFf\FF\FF3\FF\FF\00\FF\CC\FF\FF\CC\CC\FF\CC\99\FF\CCf\FF\CC3\FF\CC\00\FF\99\FF\FF\99\CC\FF\99\99\FF\99f\FF\993\FF\99\00\FFf\FF\FFf\CC\FFf\99\FFff\FFf3\FFf\00\FF3\FF\FF3\CC\FF3\99\FF3f\FF33\FF3\00\FF\00\FF\FF\00\CC\FF\00\99\FF\00f\FF\003\FF\00\00\CC\FF\FF\CC\FF\CC\CC\FF\99\CC\FFf\CC\FF3\CC\FF\00\CC\CC\FF\CC\CC\CC\CC\CC\99\CC\CCf\CC\CC3\CC\CC\00\CC\99\FF\CC\99\CC\CC\99\99\CC\99f\CC\993\CC\99\00\CCf\FF\CCf\CC\CCf\99\CCff\CCf3\CCf\00\CC3\FF\CC3\CC\CC3\99\CC3f\CC33\CC3\00\CC\00\FF\CC\00\CC\CC\00\99\CC\00f\CC\003\CC\00\00\99\FF\FF\99\FF\CC\99\FF\99\99\FFf\99\FF3\99\FF\00\99\CC\FF\99\CC\CC\99\CC\99\99\CCf\99\CC3\99\CC\00\99\99\FF\99\99\CC\99\99\99\99\99f\99\993\99\99\00\99f\FF\99f\CC\99f\99\99ff\99f3\99f\00\993\FF\993\CC\993\99\993f\9933\993\00\99\00\FF\99\00\CC\99\00\99\99\00f\99\003\99\00\00f\FF\FFf\FF\CCf\FF\99f\FFff\FF3f\FF\00f\CC\FFf\CC\CCf\CC\99f\CCff\CC3f\CC\00f\99\FFf\99\CCf\99\99f\99ff\993f\99\00ff\FFff\CCff\99fffff3ff\00f3\FFf3\CCf3\99f3ff33f3\00f\00\FFf\00\CCf\00\99f\00ff\003f\00\003\FF\FF3\FF\CC3\FF\993\FFf3\FF33\FF\003\CC\FF3\CC\CC3\CC\993\CCf3\CC33\CC\003\99\FF3\99\CC3\99\993\99f3\9933\99\003f\FF3f\CC3f\993ff3f33f\0033\FF33\CC33\9933f33333\003\00\FF3\00\CC3\00\993\00f3\0033\00\00\00\FF\FF\00\FF\CC\00\FF\99\00\FFf\00\FF3\00\FF\00\00\CC\FF\00\CC\CC\00\CC\99\00\CCf\00\CC3\00\CC\00\00\99\FF\00\99\CC\00\99\99\00\99f\00\993\00\99\00\00f\FF\00f\CC\00f\99\00ff\00f3\00f\00\003\FF\003\CC\003\99\003f\0033\003\00\00\00\FF\00\00\CC\00\00\99\00\00f\00\003\EE\00\00\DD\00\00\BB\00\00\AA\00\00\88\00\00w\00\00U\00\00D\00\00\22\00\00\11\00\00\00\EE\00\00\DD\00\00\BB\00\00\AA\00\00\88\00\00w\00\00U\00\00D\00\00\22\00\00\11\00\00\00\EE\00\00\DD\00\00\BB\00\00\AA\00\00\88\00\00w\00\00U\00\00D\00\00\22\00\00\11\EE\EE\EE\DD\DD\DD\BB\BB\BB\AA\AA\AA\88\88\88wwwUUUDDD\22\22\22\11\11\11\00\00\00", align 16
@switch.table.ff_get_qtpalette = private unnamed_addr constant [4 x ptr] [ptr @qt_default_palette_2, ptr @qt_default_palette_4, ptr @qt_default_palette_256, ptr @qt_default_palette_16], align 8

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ff_get_qtpalette(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 82, i32 noundef 1) #3 ; 0 uses
  %i.b = tail call i32 @avio_rb16(ptr noundef %1) #3 ; 3 uses
  %i.c = and i32 %i.b, 31                         ; 5 uses
  %i.d = and i32 %i.b, 32
  %i.e = tail call i32 @avio_rb16(ptr noundef %1) #3
  %i.f = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.g = icmp eq i32 %0, 43
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call range(i32 0, 6) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.i = icmp eq i32 %i.h, 1
  %i.j = and i32 %i.b, 15
  %switch = icmp ne i32 %i.j, 0
  %or.cond87 = select i1 %i.i, i1 %switch, i1 false
  br i1 %or.cond87, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ugt i32 %i.c, 1
  %or.cond9 = select i1 %i.f, i1 %i.k, i1 false
  %i.l = icmp ne i32 %i.e, 0                      ; 2 uses
  %or.cond11 = select i1 %or.cond9, i1 %i.l, i1 false
  br i1 %or.cond11, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw nsw i32 1, %i.c                  ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  %i.o = udiv i32 256, %i.n                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.m to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv105 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next106.1, %bb.e ] ; 3 uses
  %.08194 = phi i32 [ 255, %bb.d ], [ %spec.store.select.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %bb.d ], [ %indvars.iv.next106.1.a, %bb.e ]
  %i.p = shl i32 %.08194, 16
  %i.q = shl i32 %.08194, 8
  %i.r = or i32 %i.q, %i.p
  %i.s = or i32 %i.r, %.08194
  %i.t = or i32 %i.s, -16777216
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv105
  store i32 %i.t, ptr %i.u, align 4, !tbaa !9
  %i.v = sub nsw i32 %.08194, %i.o
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.v, i32 0) ; 4 uses
  %i.w = shl i32 %spec.store.select, 16
  %i.x = shl i32 %spec.store.select, 8
  %i.y = or i32 %i.x, %i.w
  %i.z = or i32 %i.y, %spec.store.select
  %i.aa = or i32 %i.z, -16777216
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv105
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !9
  %i.ad = sub nsw i32 %spec.store.select, %i.o
  %spec.store.select.1 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2
  %indvars.iv.next106.1.a = add nuw nsw i64 %niter, 2 ; 2 uses
  %exitcond108.not.1 = icmp eq i64 %indvars.iv.next106.1.a, %wide.trip.count
  br i1 %exitcond108.not.1, label %.loopexit, label %bb.e, !llvm.loop !10

bb.f:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %switch.tableidx = add nsw i32 %i.c, -1         ; 2 uses
  %i.ae = icmp ult i32 %switch.tableidx, 4
  br i1 %i.ae, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %bb.g
  %i.af = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ff_get_qtpalette, i64 %i.af
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @qt_default_palette_256, %bb.g ]
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv102 = phi i64 [ 0, %bb.h ], [ %indvars.iv.next103, %bb.i ] ; 3 uses
  %i.ag = mul nuw nsw i64 %indvars.iv102, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ag ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = zext i8 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = zext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.aj, 16
  %i.ar = shl nuw nsw i32 %i.am, 8
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = or disjoint i32 %i.as, %i.ap
  %i.au = or disjoint i32 %i.at, -16777216
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv102
  store i32 %i.au, ptr %i.av, align 4, !tbaa !9
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv.next103 to i32
  %.1.highbits = lshr i32 %i.aw, %i.c
  %i.ax = icmp eq i32 %.1.highbits, 0
  br i1 %i.ax, label %bb.i, label %.loopexit, !llvm.loop !13

bb.j:                                             ; preds = %bb.f
  %i.ay = tail call i32 @avio_rb32(ptr noundef %1) #3 ; 3 uses
  %i.az = tail call i32 @avio_rb16(ptr noundef %1) #3 ; 0 uses
  %i.ba = tail call i32 @avio_rb16(ptr noundef %1) #3 ; 3 uses
  %i.bb = icmp ugt i32 %i.ay, 255
  %i.bc = icmp ugt i32 %i.ba, 255
  %or.cond13.not98 = select i1 %i.bb, i1 true, i1 %i.bc
  %.not90 = icmp ugt i32 %i.ay, %i.ba
  %or.cond95 = select i1 %or.cond13.not98, i1 true, i1 %.not90
  br i1 %or.cond95, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bd = zext nneg i32 %i.ay to i64
  %i.be = add nuw nsw i32 %i.ba, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bf = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 2) #3 ; 0 uses
  %i.bg = tail call i32 @avio_r8(ptr noundef %1) #3
  %i.bh = tail call i32 @avio_r8(ptr noundef %1) #3 ; 0 uses
  %i.bi = tail call i32 @avio_r8(ptr noundef %1) #3
  %i.bj = tail call i32 @avio_r8(ptr noundef %1) #3 ; 0 uses
  %i.bk = tail call i32 @avio_r8(ptr noundef %1) #3
  %i.bl = tail call i32 @avio_r8(ptr noundef %1) #3 ; 0 uses
  %i.bm = shl i32 %i.bg, 16
  %i.bn = shl i32 %i.bi, 8
  %i.bo = or i32 %i.bm, %i.bn
  %i.bp = or i32 %i.bo, %i.bk
  %i.bq = or i32 %i.bp, -16777216
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.be, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.e, %bb.b, %bb.j, %bb.a
  %.083 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ], [ 1, %bb.i ], [ 0, %bb.b ], [ 1, %bb.e ], [ 1, %.lr.ph ]
  ret i32 %.083
}

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @avio_rb16(ptr noundef) local_unnamed_addr #1

declare i32 @avio_rb32(ptr noundef) local_unnamed_addr #1

declare i64 @avio_skip(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @avio_r8(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!9 = !{!6, !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
end_hunk_0
