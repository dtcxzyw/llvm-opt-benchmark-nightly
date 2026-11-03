Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h263dsp?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_h263_loop_filter_strength = local_unnamed_addr constant [32 x i8] c"\00\01\01\02\02\03\03\04\04\04\05\05\06\06\07\07\07\08\08\08\09\09\09\0A\0A\0A\0B\0B\0B\0C\0C\0C", align 16

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_h263dsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @h263_h_loop_filter_c, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @h263_v_loop_filter_c, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h263_h_loop_filter_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #1 {
.lver.check:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr @ff_h263_loop_filter_strength, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32                      ; 5 uses
  %i.e = mul nsw i32 %i.d, -2                     ; 4 uses
  %i.f = sub nsw i32 0, %i.d                      ; 2 uses
  %i.g = shl nuw nsw i32 %i.d, 1                  ; 4 uses
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %ident.check.not = icmp eq i32 %1, 1
  br i1 %ident.check.not, label %.ph, label %.ph.lver.orig

.ph.lver.orig:                                    ; preds = %.lver.check, %bb.e
  %indvars.iv.lver.orig = phi i64 [ %indvars.iv.next.lver.orig, %bb.e ], [ 0, %.lver.check ] ; 2 uses
  %i.i = mul nsw i64 %indvars.iv.lver.orig, %i.h
  %i.j = getelementptr i8, ptr %0, i64 %i.i       ; 5 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -2       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9     ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr i8, ptr %i.j, i64 -1       ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = load i8, ptr %i.j, align 1, !tbaa !9
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = getelementptr i8, ptr %i.j, i64 1        ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9     ; 2 uses
  %i.u = zext i8 %i.t to i32
  %i.v = sub nsw i32 %i.m, %i.u                   ; 2 uses
  %i.w = sub nsw i32 %i.r, %i.p
  %i.x = shl nsw i32 %i.w, 2
  %i.y = add nsw i32 %i.v, %i.x
  %.lhs.trunc.lver.orig = trunc nsw i32 %i.y to i16
  %i.z = sdiv i16 %.lhs.trunc.lver.orig, 8
  %.sext.lver.orig = sext i16 %i.z to i32         ; 7 uses
  %i.aa = icmp sgt i32 %i.e, %.sext.lver.orig
  br i1 %i.aa, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.ph.lver.orig
  %i.ab = icmp slt i32 %.sext.lver.orig, %i.f
  br i1 %i.ab, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = icmp slt i32 %.sext.lver.orig, %i.d
  br i1 %i.ac, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp sgt i32 %i.g, %.sext.lver.orig
  %i.ae = sub nsw i32 %i.g, %.sext.lver.orig
  %spec.select.lver.orig = select i1 %i.ad, i32 %i.ae, i32 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.af = sub nsw i32 %i.e, %.sext.lver.orig
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %.ph.lver.orig
  %.065.lver.orig = phi i32 [ %.sext.lver.orig, %bb.b ], [ %i.af, %bb.d ], [ 0, %.ph.lver.orig ], [ %spec.select.lver.orig, %bb.c ] ; 3 uses
  %i.ag = add nsw i32 %.065.lver.orig, %i.p       ; 3 uses
  %i.ah = sub nsw i32 %i.r, %.065.lver.orig       ; 3 uses
  %i.ai = and i32 %i.ag, 256
  %.not.lver.orig = icmp eq i32 %i.ai, 0
  %isnotneg.lver.orig = icmp sgt i32 %i.ag, -1
  %i.aj = sext i1 %isnotneg.lver.orig to i32
  %.064.lver.orig = select i1 %.not.lver.orig, i32 %i.ag, i32 %i.aj
  %i.ak = and i32 %i.ah, 256
  %.not71.lver.orig = icmp eq i32 %i.ak, 0
  %isnotneg72.lver.orig = icmp sgt i32 %i.ah, -1
  %i.al = sext i1 %isnotneg72.lver.orig to i32
  %.0.lver.orig = select i1 %.not71.lver.orig, i32 %i.ah, i32 %i.al
  %i.am = trunc i32 %.064.lver.orig to i8
  store i8 %i.am, ptr %i.n, align 1, !tbaa !9
  %i.an = trunc i32 %.0.lver.orig to i8
  store i8 %i.an, ptr %i.j, align 1, !tbaa !9
  %i.ao = tail call i32 @llvm.abs.i32(i32 %.065.lver.orig, i1 true)
  %i.ap = lshr i32 %i.ao, 1                       ; 2 uses
  %.lhs.trunc73.lver.orig = trunc nsw i32 %i.v to i16
  %i.aq = sdiv i16 %.lhs.trunc73.lver.orig, 4
  %.sext74.lver.orig = sext i16 %i.aq to i32      ; 2 uses
  %i.ar = sub nsw i32 0, %i.ap                    ; 2 uses
  %i.as = icmp slt i32 %.sext74.lver.orig, %i.ar
  %..i.lver.orig = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %.sext74.lver.orig)
  %.0.i.lver.orig = select i1 %i.as, i32 %i.ar, i32 %..i.lver.orig
  %i.at = trunc i32 %.0.i.lver.orig to i8         ; 2 uses
  %i.au = sub i8 %i.l, %i.at
  store i8 %i.au, ptr %i.k, align 1, !tbaa !9
  %i.av = add i8 %i.t, %i.at
  store i8 %i.av, ptr %i.s, align 1, !tbaa !9
  %indvars.iv.next.lver.orig = add nuw nsw i64 %indvars.iv.lver.orig, 1 ; 2 uses
  %exitcond.not.lver.orig = icmp eq i64 %indvars.iv.next.lver.orig, 8
  br i1 %exitcond.not.lver.orig, label %.loopexit, label %.ph.lver.orig, !llvm.loop !15

.ph:                                              ; preds = %.lver.check
  %load_initial = load i8, ptr %0, align 1
  br label %bb.f

bb.f:                                             ; preds = %.ph, %bb.k
  %store_forwarded = phi i8 [ %load_initial, %.ph ], [ %i.ci, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.aw = mul nuw nsw i64 %indvars.iv, %i.h
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw     ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -2     ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9   ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = zext i8 %store_forwarded to i32         ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ax, i64 1      ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9   ; 2 uses
  %i.bh = zext i8 %i.bg to i32
  %i.bi = sub nsw i32 %i.ba, %i.bh                ; 2 uses
  %i.bj = sub nsw i32 %i.be, %i.bd
  %i.bk = shl nsw i32 %i.bj, 2
  %i.bl = add nsw i32 %i.bi, %i.bk
  %.lhs.trunc = trunc nsw i32 %i.bl to i16
  %i.bm = sdiv i16 %.lhs.trunc, 8
  %.sext = sext i16 %i.bm to i32                  ; 7 uses
  %i.bn = icmp sgt i32 %i.e, %.sext
  br i1 %i.bn, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = icmp slt i32 %.sext, %i.f
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = sub nsw i32 %i.e, %.sext
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bq = icmp slt i32 %.sext, %i.d
  br i1 %i.bq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = icmp sgt i32 %i.g, %.sext
  %i.bs = sub nsw i32 %i.g, %.sext
  %spec.select = select i1 %i.br, i32 %i.bs, i32 0
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.h
  %.065 = phi i32 [ %.sext, %bb.i ], [ %i.bp, %bb.h ], [ 0, %bb.f ], [ %spec.select, %bb.j ] ; 3 uses
  %i.bt = add nsw i32 %.065, %i.bd                ; 3 uses
  %i.bu = sub nsw i32 %i.be, %.065                ; 3 uses
  %i.bv = and i32 %i.bt, 256
  %.not = icmp eq i32 %i.bv, 0
  %isnotneg = icmp sgt i32 %i.bt, -1
  %i.bw = sext i1 %isnotneg to i32
  %.064 = select i1 %.not, i32 %i.bt, i32 %i.bw
  %i.bx = and i32 %i.bu, 256
  %.not71 = icmp eq i32 %i.bx, 0
  %isnotneg72 = icmp sgt i32 %i.bu, -1
  %i.by = sext i1 %isnotneg72 to i32
  %.0 = select i1 %.not71, i32 %i.bu, i32 %i.by
  %i.bz = trunc i32 %.064 to i8
  store i8 %i.bz, ptr %i.bb, align 1, !tbaa !9
  %i.ca = trunc i32 %.0 to i8
  store i8 %i.ca, ptr %i.ax, align 1, !tbaa !9
  %i.cb = tail call i32 @llvm.abs.i32(i32 %.065, i1 true)
  %i.cc = lshr i32 %i.cb, 1                       ; 2 uses
  %.lhs.trunc73 = trunc nsw i32 %i.bi to i16
  %i.cd = sdiv i16 %.lhs.trunc73, 4
  %.sext74 = sext i16 %i.cd to i32                ; 2 uses
  %i.ce = sub nsw i32 0, %i.cc                    ; 2 uses
  %i.cf = icmp slt i32 %.sext74, %i.ce
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cc, i32 %.sext74)
  %.0.i = select i1 %i.cf, i32 %i.ce, i32 %..i
  %i.cg = trunc i32 %.0.i to i8                   ; 2 uses
  %i.ch = sub i8 %i.az, %i.cg
  store i8 %i.ch, ptr %i.ay, align 1, !tbaa !9
  %i.ci = add i8 %i.bg, %i.cg                     ; 2 uses
  store i8 %i.ci, ptr %i.bf, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !15

.loopexit:                                        ; preds = %bb.e, %bb.k
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @h263_v_loop_filter_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #1 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr @ff_h263_loop_filter_strength, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = shl nsw i32 %1, 1
  %i.f = mul nsw i32 %i.d, -2                     ; 2 uses
  %i.g = sub nsw i32 0, %i.d
  %i.h = shl nuw nsw i32 %i.d, 1                  ; 2 uses
  %i.i = sext i32 %i.e to i64
  %i.j = sext i32 %1 to i64                       ; 2 uses
  %invariant.gep.a = getelementptr i8, ptr %0, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.k = sub nsw i64 %indvars.iv, %i.i
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 2 uses
  %i.n = zext i8 %i.m to i32
  %i.o = sub nsw i64 %indvars.iv, %i.j
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep.a, i64 %indvars.iv ; 2 uses
  %i.v = load i8, ptr %gep, align 1, !tbaa !9     ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = sub nsw i32 %i.n, %i.w                   ; 2 uses
  %i.y = sub nsw i32 %i.u, %i.r
  %i.z = shl nsw i32 %i.y, 2
  %i.aa = add nsw i32 %i.x, %i.z
  %.lhs.trunc = trunc nsw i32 %i.aa to i16
  %i.ab = sdiv i16 %.lhs.trunc, 8
  %.sext = sext i16 %i.ab to i32                  ; 7 uses
  %i.ac = icmp sgt i32 %i.f, %.sext
  br i1 %i.ac, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp slt i32 %.sext, %i.g
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = sub nsw i32 %i.f, %.sext
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.af = icmp slt i32 %.sext, %i.d
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp sgt i32 %i.h, %.sext
  %i.ah = sub nsw i32 %i.h, %.sext
  %spec.select = select i1 %i.ag, i32 %i.ah, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.d
  %.065 = phi i32 [ %.sext, %bb.e ], [ %i.ae, %bb.d ], [ 0, %bb.b ], [ %spec.select, %bb.f ] ; 3 uses
  %i.ai = add nsw i32 %.065, %i.r                 ; 3 uses
  %i.aj = sub nsw i32 %i.u, %.065                 ; 3 uses
  %i.ak = and i32 %i.ai, 256
  %.not = icmp eq i32 %i.ak, 0
  %isnotneg = icmp sgt i32 %i.ai, -1
  %i.al = sext i1 %isnotneg to i32
  %.064 = select i1 %.not, i32 %i.ai, i32 %i.al
  %i.am = and i32 %i.aj, 256
  %.not71 = icmp eq i32 %i.am, 0
  %isnotneg72 = icmp sgt i32 %i.aj, -1
  %i.an = sext i1 %isnotneg72 to i32
  %.0 = select i1 %.not71, i32 %i.aj, i32 %i.an
  %i.ao = trunc i32 %.064 to i8
  store i8 %i.ao, ptr %i.p, align 1, !tbaa !9
  %i.ap = trunc i32 %.0 to i8
  store i8 %i.ap, ptr %i.s, align 1, !tbaa !9
  %i.aq = tail call i32 @llvm.abs.i32(i32 %.065, i1 true)
  %i.ar = lshr i32 %i.aq, 1                       ; 2 uses
  %.lhs.trunc73 = trunc nsw i32 %i.x to i16
  %i.as = sdiv i16 %.lhs.trunc73, 4
  %.sext74 = sext i16 %i.as to i32                ; 2 uses
  %i.at = sub nsw i32 0, %i.ar                    ; 2 uses
  %i.au = icmp slt i32 %.sext74, %i.at
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %.sext74)
  %.0.i = select i1 %i.au, i32 %i.at, i32 %..i
  %i.av = trunc i32 %.0.i to i8                   ; 2 uses
  %i.aw = sub i8 %i.m, %i.av
  store i8 %i.aw, ptr %i.l, align 1, !tbaa !9
  %i.ax = add i8 %i.v, %i.av
  store i8 %i.ax, ptr %gep, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !16

bb.h:                                             ; preds = %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"H263DSPContext", !11, i64 0, !11, i64 8}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !11, i64 8}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
end_hunk_0
