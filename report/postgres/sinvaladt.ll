Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/sinvaladt?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SICleanupQueue:bb.a
.lr.ph70.new:                                     ; preds = %.lr.ph70
  %unroll_iter = and i64 %i.r, 2147483644
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph70.new
  %indvars.iv72 = phi i64 [ 0, %.lr.ph70.new ], [ %indvars.iv.next73.3, %bb.k ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph70.new ], [ %niter.next.3, %bb.k ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre76, i64 %indvars.iv72
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr [16 x i8], ptr %i.a, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 65572  ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = add i32 %i.az, -1073741824
  store i32 %i.ba, ptr %i.ay, align 4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.pre76, i64 %indvars.iv72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [16 x i8], ptr %i.a, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 65572  ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = add i32 %i.bh, -1073741824
  store i32 %i.bi, ptr %i.bg, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre76, i64 %indvars.iv72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [16 x i8], ptr %i.a, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 65572  ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, -1073741824
  store i32 %i.bq, ptr %i.bo, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre76, i64 %indvars.iv72
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [16 x i8], ptr %i.a, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 65572  ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = add i32 %i.bx, -1073741824
  store i32 %i.by, ptr %i.bw, align 4
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !19

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph70
  %indvars.iv72.epil.init = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next73.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod87)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv72.epil = phi i64 [ %indvars.iv72.epil.init, %.epil.preheader ], [ %indvars.iv.next73.epil, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre76, i64 %indvars.iv72.epil
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr [16 x i8], ptr %i.a, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 65572  ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = add i32 %i.ce, -1073741824
  store i32 %i.cf, ptr %i.cd, align 4
  %indvars.iv.next73.epil = add nuw nsw i64 %indvars.iv72.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.l, !llvm.loop !20

.loopexit.loopexit:                               ; preds = %bb.l, %.loopexit.loopexit.unr-lcssa
  %.pre77 = load i32, ptr %i.h, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %._crit_edge.thread, %.loopexit.loopexit, %._crit_edge
  %.0.lcssa83 = phi ptr [ %.2, %.loopexit.loopexit ], [ null, %.thread ], [ %.2, %._crit_edge ], [ null, %._crit_edge.thread ] ; 4 uses
  %i.cg = phi i32 [ %i.aq, %.loopexit.loopexit ], [ %i.ao, %.thread ], [ %.258, %._crit_edge ], [ %i.i, %._crit_edge.thread ]
  %i.ch = phi i32 [ %.pre77, %.loopexit.loopexit ], [ %i.ap, %.thread ], [ %i.i, %._crit_edge ], [ %i.i, %._crit_edge.thread ]
  %i.ci = sub i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 2048
  %i.ck = and i32 %i.ci, 2147483392
  %i.cl = add nuw i32 %i.ck, 256
  %.sink = select i1 %i.cj, i32 2048, i32 %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sink, ptr %i.cm, align 8
  %.not = icmp eq ptr %.0.lcssa83, null
  br i1 %.not, label %bb.q, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.cn = load i32, ptr %.0.lcssa83, align 4      ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 65568
  %i.cp = ptrtoint ptr %.0.lcssa83 to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = lshr exact i64 %i.cr, 4
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa83, i64 9
  store i8 1, ptr %i.cu, align 1
  %i.cv = load ptr, ptr @MainLWLockArray, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 640
  tail call void @LWLockRelease(ptr noundef nonnull %i.cw) #8
  %i.cx = load ptr, ptr @MainLWLockArray, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 768
  tail call void @LWLockRelease(ptr noundef nonnull %i.cy) #8
  %i.cz = tail call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #8
  br i1 %i.cz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.da = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.cn) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 675, ptr noundef nonnull @__func__.SICleanupQueue) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.db = tail call i32 @SendProcSignal(i32 noundef %i.cn, i32 noundef 0, i32 noundef %i.ct) #8 ; 0 uses
  br i1 %0, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr @MainLWLockArray, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 768
  %i.de = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.dd, i32 noundef 0) #8 ; 0 uses
  br label %bb.s

bb.q:                                             ; preds = %.loopexit
  %i.df = load ptr, ptr @MainLWLockArray, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 640
  tail call void @LWLockRelease(ptr noundef nonnull %i.dg) #8
  br i1 %0, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr @MainLWLockArray, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 768
  tail call void @LWLockRelease(ptr noundef nonnull %i.di) #8
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SIGetDataEntries(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @shmInvalBuffer, align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 65568
  %i.c = load i32, ptr @MyProcNumber, align 4
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.d ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2, !range !8, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @MainLWLockArray, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 640
  %i.k = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.j, i32 noundef 1) #8 ; 0 uses
  store i8 0, ptr %i.f, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.m = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.l, i8 1, ptr nonnull elementtype(i8) %i.l) #8, !srcloc !5
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %SpinLockAcquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @s_lock(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.7, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #8 ; 0 uses
  br label %SpinLockAcquire.exit

SpinLockAcquire.exit:                             ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !6
  store volatile i8 0, ptr %i.l, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !range !8, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  br i1 %i.s, label %bb.d, label %.preheader

.preheader:                                       ; preds = %SpinLockAcquire.exit
  %i.u = icmp sgt i32 %1, 0
  %.pre31 = load i32, ptr %i.t, align 4           ; 2 uses
  br i1 %i.u, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.e

bb.d:                                             ; preds = %SpinLockAcquire.exit
  store i32 %i.p, ptr %i.t, align 4
  store i8 0, ptr %i.q, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 0, ptr %i.w, align 1
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.x = phi i32 [ %.pre31, %.lr.ph ], [ %i.ae, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.y = icmp slt i32 %i.x, %i.p
  br i1 %i.y, label %bb.f, label %.critedge.thread.loopexit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.aa = srem i32 %i.x, 4096
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ad = load i32, ptr %i.t, align 4
  %i.ae = add i32 %i.ad, 1                        ; 3 uses
  store i32 %i.ae, ptr %i.t, align 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !21

.critedge:                                        ; preds = %bb.f, %.preheader
  %2 = phi i32 [ %.pre31, %.preheader ], [ %i.ae, %bb.f ]
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %1, %bb.f ] ; 2 uses
  %.not = icmp slt i32 %2, %i.p
  br i1 %.not, label %bb.h, label %bb.g

.critedge.thread.loopexit:                        ; preds = %bb.e
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.g

bb.g:                                             ; preds = %.critedge.thread.loopexit, %.critedge
  %.0.lcssa36 = phi i32 [ %.0.lcssa, %.critedge ], [ %3, %.critedge.thread.loopexit ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 0, ptr %i.af, align 1
  br label %.sink.split

bb.h:                                             ; preds = %.critedge
  store i8 1, ptr %i.f, align 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.d
  %.025.ph = phi i32 [ -1, %bb.d ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa36, %bb.g ]
  %i.ag = load ptr, ptr @MainLWLockArray, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 640
  tail call void @LWLockRelease(ptr noundef nonnull %i.ah) #8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %.025 = phi i32 [ 0, %bb.a ], [ %.025.ph, %.sink.split ]
  ret i32 %.025
}

declare i32 @SendProcSignal(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 1, 0) i32 @GetNextLocalTransactionId() local_unnamed_addr #4 {
.peel.begin:
  %.pr = load i32, ptr @nextLocalTransactionId, align 4
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.pr, i32 1) ; 2 uses
  %i.a = add i32 %spec.select, 1
  store i32 %i.a, ptr @nextLocalTransactionId, align 4
  ret i32 %spec.select
}

declare i64 @add_size(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @mul_size(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ShmemRequestStructWithOpts(ptr noundef) local_unnamed_addr #2

declare i32 @s_lock(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{i64 2094234, i64 2094250}
!6 = !{i64 2149592011}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !4}
!11 = !{i64 2149591802}
!12 = distinct !{!12, !4, !13}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = distinct !{!14, !4}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !4}
end_hunk_0
