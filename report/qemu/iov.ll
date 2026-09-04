Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/iov?download=true
inline.NumInlined: 24
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qemu_iovec_to_buf:bb.a

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.041.i.i = phi i64 [ %1, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.d ] ; 4 uses
  %.03040.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %.131.i.i, %bb.d ] ; 4 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %.041.i.i, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = sub nuw i64 %i.i, %.041.i.i
  %i.l = sub i64 %3, %.03040.i.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.03040.i.i
  %i.o = load ptr, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.041.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.n, ptr noundef nonnull align 1 %i.p, i64 noundef %i.m, i1 noundef false) #17
  %i.q = add i64 %i.m, %.03040.i.i
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = sub nuw i64 %.041.i.i, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.131.i.i = phi i64 [ %i.q, %bb.b ], [ %.03040.i.i, %bb.c ] ; 3 uses
  %.1.i.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp ne i64 %.1.i.i, 0
  %i.s = icmp ult i64 %.131.i.i, %3
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.s
  %i.t = icmp samesign ult i64 %indvars.iv.next.i.i, %i.f
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %i.t, i1 false
  br i1 %or.cond35.i.i, label %.lr.ph.i.i, label %iov_to_buf.exit, !llvm.loop !1

iov_to_buf.exit:                                  ; preds = %bb.d, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %.131.i.i, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @qemu_iovec_from_buf(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ne i32 %i.c, 0
  %i.e = or i64 %3, %1
  %or.cond37.i.i = icmp ne i64 %i.e, 0
  %or.cond3538.i.i = and i1 %or.cond37.i.i, %i.d
  br i1 %or.cond3538.i.i, label %.lr.ph.preheader.i.i, label %iov_from_buf.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.041.i.i = phi i64 [ %1, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.d ] ; 4 uses
  %.03040.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %.131.i.i, %bb.d ] ; 4 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.i.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %.041.i.i, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = sub nuw i64 %i.i, %.041.i.i
  %i.l = sub i64 %3, %.03040.i.i
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.041.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.03040.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.o, ptr noundef nonnull readonly align 1 %i.p, i64 noundef %i.m, i1 noundef false) #17
  %i.q = add i64 %i.m, %.03040.i.i
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = sub nuw i64 %.041.i.i, %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.131.i.i = phi i64 [ %i.q, %bb.b ], [ %.03040.i.i, %bb.c ] ; 3 uses
  %.1.i.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp ne i64 %.1.i.i, 0
  %i.s = icmp ult i64 %.131.i.i, %3
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.s
  %i.t = icmp samesign ult i64 %indvars.iv.next.i.i, %i.f
  %or.cond35.i.i = select i1 %or.cond.i.i, i1 %i.t, i1 false
  br i1 %or.cond35.i.i, label %.lr.ph.i.i, label %iov_from_buf.exit, !llvm.loop !0

iov_from_buf.exit:                                ; preds = %bb.d, %bb.a
  %.0.i = phi i64 [ 0, %bb.a ], [ %.131.i.i, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @qemu_iovec_memset(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = or i64 %3, %1
  %or.cond36.i = icmp ne i64 %i.d, 0
  %i.e = icmp ne i32 %i.c, 0
  %or.cond3437.i = and i1 %or.cond36.i, %i.e
  br i1 %or.cond3437.i, label %.lr.ph.preheader.i, label %iov_memset.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext i32 %i.c to i64
  %i.g = trunc i32 %2 to i8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.040.i = phi i64 [ %1, %.lr.ph.preheader.i ], [ %.1.i, %bb.d ] ; 4 uses
  %.02939.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.130.i, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp ult i64 %.040.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = sub nuw i64 %i.j, %.040.i
  %i.m = sub i64 %3, %.02939.i
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.m) ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.040.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.p, i8 noundef %i.g, i64 noundef %i.n, i1 noundef false) #17
  %i.q = add i64 %i.n, %.02939.i
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = sub nuw i64 %.040.i, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.130.i = phi i64 [ %i.q, %bb.b ], [ %.02939.i, %bb.c ] ; 3 uses
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.c ]   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp ne i64 %.1.i, 0
  %i.s = icmp ult i64 %.130.i, %3
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.s
  %i.t = icmp samesign ult i64 %indvars.iv.next.i, %i.f
  %or.cond34.i = select i1 %or.cond.i, i1 %i.t, i1 false
  br i1 %or.cond34.i, label %.lr.ph.i, label %iov_memset.exit, !llvm.loop !2

iov_memset.exit:                                  ; preds = %bb.d, %bb.a
  %.029.lcssa.i = phi i64 [ 0, %bb.a ], [ %.130.i, %bb.d ]
  ret i64 %.029.lcssa.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @qemu_iovec_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %.preheader32, label %bb.b

.preheader32:                                     ; preds = %bb.a
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader32
  %i.g = load ptr, ptr %0, align 8
  %i.h = load ptr, ptr %1, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 523, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_iovec_compare) #19
  unreachable

bb.c:                                             ; preds = %.critedge.thread, %.critedge
  %i.i = phi i64 [ %i.y, %.critedge.thread ], [ %i.z, %.critedge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond45.not, label %._crit_edge, label %bb.d, !llvm.loop !38

bb.d:                                             ; preds = %.lr.ph40, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph40 ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.02939 = phi i64 [ 0, %.lr.ph40 ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %.not43 = icmp eq i64 %i.m, 0
  br i1 %.not43, label %.critedge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = load ptr, ptr %i.k, align 8
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_iovec_compare) #19
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.02635 = phi ptr [ %i.v, %bb.f ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %.02734 = phi ptr [ %i.w, %bb.f ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.02833 = phi i64 [ %i.x, %bb.f ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.s = load i8, ptr %.02734, align 1
  %i.t = load i8, ptr %.02635, align 1
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.02635, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %.02734, i64 1
  %i.x = add nuw i64 %.02833, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.m
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !39

.critedge.thread:                                 ; preds = %bb.f, %.preheader
  %i.y = add i64 %i.m, %.02939
  br label %bb.c

.critedge:                                        ; preds = %.lr.ph
  %i.z = add i64 %.02833, %.02939                 ; 2 uses
  %.not = icmp eq i64 %.02833, %i.m
  br i1 %.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.c, %.preheader32
  %.2 = phi i64 [ -1, %.preheader32 ], [ -1, %bb.c ], [ %i.z, %.critedge ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_iovec_clone(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @g_malloc_n(i64 noundef %i.c, i64 noundef 24) #18 ; 10 uses
  %i.e = load i32, ptr %i.a, align 8              ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8                ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.h = icmp ult i32 %i.e, 4
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.next ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.next.1 ; 2 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.next.1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.s, ptr %i.t, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 3 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.next.2 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.next.2
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod97 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv.epil ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv.epil
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !41

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ac = sext i32 %i.e to i64
  tail call void @qsort(ptr noundef %i.d, i64 noundef %i.ac, i64 noundef 24, ptr noundef nonnull @sortelem_cmp_src_base) #17
  %i.ad = load i32, ptr %i.a, align 8             ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %._crit_edge
  %wide.trip.count88 = zext nneg i32 %i.ad to i64
  br label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %bb.f
  %indvars.iv85 = phi i64 [ 0, %.lr.ph77.preheader ], [ %indvars.iv.next86, %bb.f ] ; 2 uses
  %.075 = phi ptr [ %2, %.lr.ph77.preheader ], [ %i.at, %bb.f ] ; 2 uses
  %.05974 = phi ptr [ null, %.lr.ph77.preheader ], [ %i.ax, %bb.f ] ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv85 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %.05974, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph77
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ugt ptr %.05974, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = ptrtoint ptr %.05974 to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph77
  %.061 = phi i64 [ %i.am, %bb.e ], [ 0, %bb.d ], [ 0, %.lr.ph77 ] ; 2 uses
  %i.an = sub i64 0, %.061
  %i.ao = getelementptr inbounds i8, ptr %.075, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = tail call i64 @llvm.usub.sat.i64(i64 %i.ar, i64 %.061)
  %i.at = getelementptr inbounds nuw i8, ptr %.075, i64 %i.as
  %i.au = load ptr, ptr %i.ah, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ar ; 2 uses
  %i.aw = icmp ugt ptr %i.av, %.05974
  %i.ax = select i1 %i.aw, ptr %i.av, ptr %.05974
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge78, label %.lr.ph77, !llvm.loop !42

._crit_edge78:                                    ; preds = %bb.f, %._crit_edge
  %i.ay = sext i32 %i.ad to i64
  tail call void @qsort(ptr noundef %i.d, i64 noundef %i.ay, i64 noundef 24, ptr noundef nonnull @sortelem_cmp_src_index) #17
  %i.az = load i32, ptr %i.a, align 8
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph82, label %._crit_edge83

.lr.ph82:                                         ; preds = %._crit_edge78
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph82, %qemu_iovec_add.exit
  %indvars.iv90 = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next91, %qemu_iovec_add.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %1, align 8
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %indvars.iv90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = load i32, ptr %i.bb, align 8            ; 3 uses
  %.not.i = icmp eq i32 %i.bl, -1
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 304, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_iovec_add) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.bn = icmp eq i32 %i.bm, %i.bl
  %.pre.i = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %i.bn, label %bb.j, label %qemu_iovec_add.exit

bb.j:                                             ; preds = %bb.i
  %i.bo = shl i32 %i.bl, 1
  %i.bp = or disjoint i32 %i.bo, 1                ; 2 uses
  store i32 %i.bp, ptr %i.bb, align 8
  %i.bq = sext i32 %i.bp to i64
  %i.br = tail call ptr @g_realloc_n(ptr noundef %.pre.i, i64 noundef %i.bq, i64 noundef 16) #17 ; 2 uses
  store ptr %i.br, ptr %0, align 8
  %.pre32.i = load i32, ptr %i.bc, align 8
  br label %qemu_iovec_add.exit

qemu_iovec_add.exit:                              ; preds = %bb.i, %bb.j
  %i.bs = phi i32 [ %.pre32.i, %bb.j ], [ %i.bm, %bb.i ]
  %i.bt = phi ptr [ %i.br, %bb.j ], [ %.pre.i, %bb.i ]
  %i.bu = sext i32 %i.bs to i64
  %i.bv = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.bu
  store ptr %i.bg, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %0, align 8
  %i.bx = load i32, ptr %i.bc, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bw, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.bk, ptr %i.ca, align 8
  %i.cb = load i64, ptr %i.bd, align 8
  %i.cc = add i64 %i.cb, %i.bk
  store i64 %i.cc, ptr %i.bd, align 8
  %i.cd = load i32, ptr %i.bc, align 8
end_hunk_0
