Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rbutil?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.itostr.digits = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @get_dirname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #9 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %spec.select = select i1 %.not, ptr null, ptr %i.b ; 2 uses
  %i.c = icmp ugt ptr %spec.select, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = tail call ptr @strncpy(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.f) #10 ; 0 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @get_basename(ptr noundef %0, ptr nofree noundef readonly %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #9 ; 2 uses
  %.not = icmp ne ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.c = icmp ugt ptr %i.b, %1
  %i.d = select i1 %.not, i1 %i.c, i1 false
  %. = select i1 %i.d, ptr %i.b, ptr %1
  %i.e = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %.) #10 ; 0 uses
  %i.f = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #9 ; 2 uses
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 1, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @itostr(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %spec.select = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.a = add i32 %3, -2                           ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv59 = phi i32 [ %indvars.iv.next60, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %bb.b ], [ 2, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %.141 = phi i32 [ %i.g, %bb.b ], [ %spec.select, %bb.a ] ; 3 uses
  %i.b = urem i32 %.141, %2
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @__const.itostr.digits, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.e, ptr %i.f, align 1, !tbaa !9
  %i.g = udiv i32 %.141, %2
  %.not = icmp ugt i32 %2, %.141
  %indvars.iv.next58 = add i64 %indvars.iv57, 1
  %indvars.iv.next60 = add i32 %indvars.iv59, -1
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !10

.preheader:                                       ; preds = %bb.b
  %i.h = icmp slt i32 %1, 0
  %i.i = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.j = icmp sgt i32 %3, %i.i
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %0, i64 %indvars.iv.next
  %i.k = trunc i64 %indvars.iv to i32
  %i.l = sub i32 %i.a, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.n, i1 false), !tbaa !9
  %i.o = trunc i64 %indvars.iv57 to i32
  %i.p = add i32 %indvars.iv59, %i.o
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %.1.lcssa = phi i32 [ %i.i, %.preheader ], [ %i.p, %.lr.ph.preheader ] ; 3 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.q = add nuw nsw i32 %.1.lcssa, 1
  %i.r = zext nneg i32 %.1.lcssa to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  store i8 45, ptr %i.s, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.2 = phi i32 [ %i.q, %bb.c ], [ %.1.lcssa, %._crit_edge ] ; 7 uses
  %i.t = icmp slt i32 %.2, 10
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = sext i32 %.2 to i64
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  store i8 0, ptr %i.v, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = tail call i32 @llvm.smax.i32(i32 %3, i32 %.2) ; 2 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %.lr.ph49.preheader, label %._crit_edge50

.lr.ph49.preheader:                               ; preds = %bb.f
  %i.y = lshr i32 %i.w, 1                         ; 4 uses
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %.lr.ph49.epil.preheader, label %.lr.ph49.preheader.new

.lr.ph49.preheader.new:                           ; preds = %.lr.ph49.preheader
  %4 = and i32 %i.y, 1073741822
  %unroll_iter = zext nneg i32 %4 to i64
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49, %.lr.ph49.preheader.new
  %indvars.iv62 = phi i64 [ 0, %.lr.ph49.preheader.new ], [ %indvars.iv.next63.1, %.lr.ph49 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph49.preheader.new ], [ %niter.next.1, %.lr.ph49 ]
  %i.aa = trunc i64 %indvars.iv62 to i32
  %i.ab = xor i32 %i.aa, -1
  %i.ac = add i32 %.2, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv62 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !9
  store i8 %i.ah, ptr %i.ae, align 1, !tbaa !9
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !9
  %indvars.iv.next63 = or disjoint i64 %indvars.iv62, 1 ; 2 uses
  %i.ai = trunc i64 %indvars.iv.next63 to i32
  %i.aj = xor i32 %i.ai, -1
  %i.ak = add i32 %.2, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next63 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !9
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !9
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge50.loopexit.unr-lcssa, label %.lr.ph49, !llvm.loop !12

._crit_edge50.loopexit.unr-lcssa:                 ; preds = %.lr.ph49
  %lcmp.mod.not = trunc i32 %i.y to i1
  br i1 %lcmp.mod.not, label %.lr.ph49.epil.preheader, label %._crit_edge50

.lr.ph49.epil.preheader:                          ; preds = %._crit_edge50.loopexit.unr-lcssa, %.lr.ph49.preheader
  %indvars.iv62.epil.init = phi i64 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next63.1, %._crit_edge50.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %i.aq = trunc i64 %indvars.iv62.epil.init to i32
  %i.ar = xor i32 %i.aq, -1
  %i.as = add i32 %.2, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv62.epil.init ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !9
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !9
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !9
  br label %._crit_edge50

._crit_edge50:                                    ; preds = %.lr.ph49.epil.preheader, %._crit_edge50.loopexit.unr-lcssa, %bb.f
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
end_hunk_0
