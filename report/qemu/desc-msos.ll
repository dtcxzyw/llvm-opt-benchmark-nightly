Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/desc-msos?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @usb_desc_msos(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4096) ptr @g_malloc0(i64 noundef 4096) #7 ; 22 uses
  switch i32 %2, label %bb.h [
    i32 4, label %bb.b
    i32 5, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 1, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %usb_desc_msos_compat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.h = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.g, i64 noundef 8, i32 noundef 1, i64 noundef 8, ptr noundef nonnull @.str, ptr noundef nonnull %i.f) #8 ; 0 uses
  br label %usb_desc_msos_compat.exit

usb_desc_msos_compat.exit:                        ; preds = %bb.b, %bb.c
  store i32 40, ptr %i.a, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i8> <i8 0, i8 1, i8 4, i8 0>, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.j, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  %.not.i14 = icmp eq ptr %i.n, null
  br i1 %.not.i14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.p = tail call i64 @wcslen(ptr noundef nonnull readonly %i.n) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i32 1, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store <4 x i16> <i16 12, i16 76, i16 97, i16 98>, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 101, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i16 108, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i16 0, ptr %i.u, align 1
  %i.v = trunc i64 %i.p to i32                    ; 2 uses
  %i.w = add i32 %i.v, 1                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.y = shl i32 %i.w, 1                          ; 3 uses
  store i32 %i.y, ptr %i.x, align 1
  %i.z = icmp ult i32 %i.v, 2147483647
  br i1 %i.z, label %.lr.ph.i.i, label %usb_desc_msos_prop_str.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 5 uses
  %wide.trip.count.i.i = zext i32 %i.w to i64     ; 8 uses
  %min.iters.check = icmp ult i32 %i.w, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i
  %i.ab = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %i.ac = and i64 %i.ab, -3221225472
  %5 = icmp ne i64 %i.ac, 0
  %scevgep = getelementptr nuw i8, ptr %i.a, i64 37 ; 2 uses
  %mul.result19 = shl nsw i64 %i.ab, 1
  %6 = getelementptr i8, ptr %scevgep, i64 %mul.result19
  %7 = icmp ult ptr %6, %scevgep
  %8 = or i1 %5, %7
  br i1 %8, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ad = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ae = getelementptr i8, ptr %i.n, i64 %i.ad
  %i.af = shl nuw nsw i64 %wide.trip.count.i.i, 1
  %i.ag = getelementptr i8, ptr %i.a, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 36
  %bound0 = icmp ult ptr %i.n, %i.ah
  %bound1 = icmp ult ptr %i.aa, %i.ae
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = trunc i64 %index to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !alias.scope !12, !noalias !13 ; 2 uses
  %i.ak = shl nuw i32 %i.ai, 1
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.al
  %i.an = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.ao = shufflevector <4 x i32> %wide.load, <4 x i32> %i.an, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.ao to <8 x i8>
  store <8 x i8> %interleaved.vec, ptr %i.am, align 1, !alias.scope !13
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %usb_desc_msos_prop_str.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = trunc i32 %i.ar to i8
  %indvars.iv.tr.i.i.prol = trunc nuw nsw i64 %indvars.iv.i.i.ph to i32
  %i.at = shl nuw i32 %indvars.iv.tr.i.i.prol, 1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.aa, i64 %i.au ; 2 uses
  store i8 %i.as, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.aq, align 4
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr i8, ptr %i.av, i64 1
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ba = add nsw i64 %wide.trip.count.i.i, -1
  %i.bb = icmp eq i64 %indvars.iv.i.i.ph, %i.ba
  br i1 %i.bb, label %usb_desc_msos_prop_str.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i.i ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = trunc i32 %i.bd to i8
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.bf = shl nuw i32 %indvars.iv.tr.i.i, 1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.aa, i64 %i.bg ; 2 uses
  store i8 %i.be, ptr %i.bh, align 1
  %i.bi = load i32, ptr %i.bc, align 4
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr i8, ptr %i.bh, i64 1
  store i8 %i.bk, ptr %i.bl, align 1
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = trunc i32 %i.bn to i8
  %indvars.iv.tr.i.i.1 = trunc nuw i64 %indvars.iv.next.i.i to i32
  %i.bp = shl nuw i32 %indvars.iv.tr.i.i.1, 1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.aa, i64 %i.bq ; 2 uses
  store i8 %i.bo, ptr %i.br, align 1
  %i.bs = load i32, ptr %i.bm, align 4
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr i8, ptr %i.br, i64 1
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %usb_desc_msos_prop_str.exit.i, label %scalar.ph, !llvm.loop !11

usb_desc_msos_prop_str.exit.i:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e
  %i.bw = add i32 %i.y, 32
  store i32 %i.bw, ptr %i.o, align 1
  %i.bx = add i32 %i.y, 42
  br label %bb.f

bb.f:                                             ; preds = %usb_desc_msos_prop_str.exit.i, %bb.d
  %.022.i = phi i32 [ %i.bx, %usb_desc_msos_prop_str.exit.i ], [ 10, %bb.d ] ; 3 uses
  %.0.i = phi i16 [ 1, %usb_desc_msos_prop_str.exit.i ], [ 0, %bb.d ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bz = load i8, ptr %i.by, align 8, !range !17, !noundef !18
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.g, label %usb_desc_msos_prop.exit

bb.g:                                             ; preds = %bb.f
  %i.cb = sext i32 %.022.i to i64
  %i.cc = getelementptr inbounds i8, ptr %i.a, i64 %i.cb ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 4, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store <8 x i16> <i16 48, i16 83, i16 101, i16 108, i16 101, i16 99, i16 116, i16 105>, ptr %i.ce, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store <8 x i16> <i16 118, i16 101, i16 83, i16 117, i16 115, i16 112, i16 101, i16 110>, ptr %i.cf, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store <8 x i16> <i16 100, i16 69, i16 110, i16 97, i16 98, i16 108, i16 101, i16 100>, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store i16 0, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 58
  store i32 4, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 62
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.cj, align 1
  store i32 72, ptr %i.cc, align 1
  %i.ck = add i32 %.022.i, 72
  %i.cl = add nuw nsw i16 %.0.i, 1
  br label %usb_desc_msos_prop.exit

usb_desc_msos_prop.exit:                          ; preds = %bb.f, %bb.g
  %.123.i = phi i32 [ %i.ck, %bb.g ], [ %.022.i, %bb.f ] ; 2 uses
  %.1.i = phi i16 [ %i.cl, %bb.g ], [ %.0.i, %bb.f ]
  store i32 %.123.i, ptr %i.a, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i8> <i8 0, i8 1, i8 5, i8 0>, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %.1.i, ptr %i.cn, align 1
  %i.co = sext i32 %.123.i to i64
  br label %bb.h

bb.h:                                             ; preds = %usb_desc_msos_prop.exit, %usb_desc_msos_compat.exit, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 40, %usb_desc_msos_compat.exit ], [ %i.co, %usb_desc_msos_prop.exit ]
  %spec.select15 = tail call i64 @llvm.umin.i64(i64 %4, i64 %.0) ; 2 uses
  %spec.select = trunc i64 %spec.select15 to i32
  %sext = shl i64 %spec.select15, 32
  %i.cp = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %i.a, i64 noundef range(i64 -2147483648, 2147483648) %i.cp, i1 noundef false) #8
  tail call void @g_free(ptr noundef nonnull %i.a) #8
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %spec.select, ptr %i.cq, align 8
  ret i32 0
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, i1 false, !"LVerDomain"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !14, !15, !16}
end_hunk_0
