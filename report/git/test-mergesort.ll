Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-mergesort?download=true
inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@mode_reverse:bb.a
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mode_reverse_1st_half(ptr nofree noundef captures(none) %0, i32 noundef %1) #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 3
  br i1 %i.a, label %.lr.ph.preheader.i, label %mode_reverse.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = add nsw i64 %i.c, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next18.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.d, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv17.i ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.e, align 1
  %i.g = load i32, ptr %i.f, align 1
  store i32 %i.g, ptr %i.e, align 1
  store i32 %.sroa.0.0.copyload.i, ptr %i.f, align 1
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.h = icmp slt i64 %indvars.iv.next18.i, %indvars.iv.next.i
  br i1 %i.h, label %.lr.ph.i, label %mode_reverse.exit, !llvm.loop !0

mode_reverse.exit:                                ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mode_reverse_2nd_half(ptr nofree noundef captures(none) %0, i32 noundef %1) #13 {
bb.a:
  %i.a = sdiv i32 %1, 2                           ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = sub nsw i32 %1, %i.a                     ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader.i, label %mode_reverse.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next18.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv17.i ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 1
  %i.j = load i32, ptr %i.i, align 1
  store i32 %i.j, ptr %i.h, align 1
  store i32 %.sroa.0.0.copyload.i, ptr %i.i, align 1
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next18.i, %indvars.iv.next.i
  br i1 %i.k, label %.lr.ph.i, label %mode_reverse.exit, !llvm.loop !0

mode_reverse.exit:                                ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @mode_sort(ptr noundef %0, i32 noundef %1) #14 {
bb.a:
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %bb.b, label %sane_qsort.exit

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4, ptr noundef nonnull @compare_ints) #20
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @mode_dither(ptr nofree noundef captures(none) %0, i32 noundef %1) #13 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.b = urem <4 x i32> %vec.ind, splat (i32 5)
  %i.c = urem <4 x i32> %step.add, splat (i32 5)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !21
  %wide.load7 = load <4 x i32>, ptr %i.e, align 4, !tbaa !21
  %i.f = add nsw <4 x i32> %wide.load, %i.b
  %i.g = add nsw <4 x i32> %wide.load7, %i.c
  store <4 x i32> %i.f, ptr %i.d, align 4, !tbaa !21
  store <4 x i32> %i.g, ptr %i.e, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader8

.lr.ph.preheader8:                                ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader8, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader8 ] ; 3 uses
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = urem i32 %i.i, 5
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mode_unriffle(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %st_mult.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef %i.a) #21
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call ptr @xmalloc(i64 noundef %i.c) #20 ; 2 uses
  tail call fastcc void @unriffle_recursively(ptr noundef %0, i32 noundef %1, ptr noundef %i.d)
  tail call void @free(ptr noundef %i.d) #20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mode_unriffle_skewed(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %st_mult.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef %i.a) #21
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call ptr @xmalloc(i64 noundef %i.c) #20 ; 2 uses
  tail call fastcc void @unriffle_recursively_skewed(ptr noundef %0, i32 noundef %1, ptr noundef %i.d)
  tail call void @free(ptr noundef %i.d) #20
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unriffle_recursively(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader.i.preheader, label %tailrecurse._crit_edge

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %scevgep20 = getelementptr i8, ptr %2, i64 4
  %scevgep21 = getelementptr i8, ptr %2, i64 8
  %scevgep29 = getelementptr i8, ptr %2, i64 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %unriffle.exit
  %.tr1215 = phi i32 [ %i.ca, %unriffle.exit ], [ %1, %.lr.ph.preheader.i.preheader ] ; 5 uses
  %.tr14 = phi ptr [ %i.bz, %unriffle.exit ], [ %0, %.lr.ph.preheader.i.preheader ] ; 15 uses
  %i.b = zext i32 %.tr1215 to i64                 ; 4 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %.tr14, i64 %i.c, i1 false)
  %i.d = add i32 %.tr1215, -1                     ; 4 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = add nuw i32 %i.e, 1
  %wide.trip.count.i = zext i32 %i.f to i64       ; 8 uses
  %min.iters.check35 = icmp ult i32 %.tr1215, 17
  br i1 %min.iters.check35, label %.lr.ph.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.lr.ph.preheader.i
  %scevgep27 = getelementptr i8, ptr %.tr14, i64 4
  %i.g = lshr i32 %i.d, 1
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %scevgep28 = getelementptr i8, ptr %scevgep27, i64 %i.i
  %i.j = shl nuw nsw i64 %i.h, 3
  %scevgep30 = getelementptr i8, ptr %scevgep29, i64 %i.j
  %bound031 = icmp ult ptr %.tr14, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep28
  %found.conflict33 = and i1 %bound031, %bound132
  br i1 %found.conflict33, label %.lr.ph.i.preheader, label %vector.ph36

vector.ph36:                                      ; preds = %vector.memcheck26
  %i.k = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec37 = sub nsw i64 %wide.trip.count.i, %i.m ; 3 uses
  %i.n = shl nsw i64 %n.vec37, 1
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next44, %vector.body38 ] ; 3 uses
  %i.o = shl nuw i64 %index39, 1                  ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.vec40 = load <8 x i32>, ptr %i.p, align 4, !tbaa !21, !alias.scope !82
  %strided.vec41 = shufflevector <8 x i32> %wide.vec40, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec42 = load <8 x i32>, ptr %i.r, align 4, !tbaa !21, !alias.scope !82
  %strided.vec43 = shufflevector <8 x i32> %wide.vec42, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %index39 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %strided.vec41, ptr %i.s, align 4, !tbaa !21, !alias.scope !83, !noalias !82
  store <4 x i32> %strided.vec43, ptr %i.t, align 4, !tbaa !21, !alias.scope !83, !noalias !82
  %index.next44 = add nuw i64 %index39, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.u, label %.lr.ph.i.preheader, label %vector.body38, !llvm.loop !74

.lr.ph.i.preheader:                               ; preds = %vector.body38, %vector.memcheck26, %.lr.ph.preheader.i
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck26 ], [ 0, %.lr.ph.preheader.i ], [ %i.n, %vector.body38 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck26 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec37, %vector.body38 ] ; 4 uses
  %3 = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %i.v = lshr i32 %i.d, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = sub nsw i64 %i.w, %indvars.iv.i.ph
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv24.i.prol = phi i64 [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ], [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !21
  %indvars.iv.next25.i.prol = add nuw nsw i64 %indvars.iv24.i.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !75

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv24.i.unr = phi i64 [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ab = icmp ult i64 %i.x, 3
  br i1 %i.ab, label %.lr.ph23.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.3, %.lr.ph.i ], [ %indvars.iv24.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !21
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !21
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !21
  %indvars.iv.next25.i.3 = add nuw nsw i64 %indvars.iv24.i, 8
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph23.i.preheader, label %.lr.ph.i, !llvm.loop !76

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.au = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.av = add nsw i64 %i.au, -2                   ; 2 uses
  %i.aw = lshr i64 %i.av, 1
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 24
  br i1 %min.iters.check, label %.lr.ph23.i.preheader48, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph23.i.preheader
  %scevgep = getelementptr i8, ptr %.tr14, i64 4
  %i.ay = lshr i32 %i.d, 1
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 2
  %scevgep17 = getelementptr i8, ptr %scevgep, i64 %i.ba
  %scevgep18 = getelementptr i8, ptr %.tr14, i64 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.bb = add nsw i64 %umax, -2
  %i.bc = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bd = add nuw i64 %i.bc, %i.az
  %i.be = shl i64 %i.bd, 2
  %scevgep19 = getelementptr i8, ptr %scevgep18, i64 %i.be
  %i.bf = shl nuw nsw i64 %i.bc, 3
  %scevgep22 = getelementptr i8, ptr %scevgep21, i64 %i.bf
  %bound0 = icmp ult ptr %scevgep17, %scevgep22
  %bound1 = icmp ult ptr %scevgep20, %scevgep19
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph23.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bg = and i64 %i.ax, 7                        ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  %i.bi = select i1 %i.bh, i64 8, i64 %i.bg
  %n.vec = sub nsw i64 %i.ax, %i.bi               ; 3 uses
  %i.bj = shl i64 %n.vec, 1
  %i.bk = or disjoint i64 %i.bj, 1
  %i.bl = add i64 %n.vec, %wide.trip.count.i
  %invariant.gep = getelementptr [4 x i8], ptr %.tr14, i64 %wide.trip.count.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = shl nuw i64 %index, 1                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %wide.vec = load <8 x i32>, ptr %i.bo, align 4, !tbaa !21, !alias.scope !84
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec23 = load <8 x i32>, ptr %i.bq, align 4, !tbaa !21, !alias.scope !84
  %strided.vec24 = shufflevector <8 x i32> %wide.vec23, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %strided.vec, ptr %gep, align 4, !tbaa !21, !alias.scope !85, !noalias !84
  store <4 x i32> %strided.vec24, ptr %i.br, align 4, !tbaa !21, !alias.scope !85, !noalias !84
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %.lr.ph23.i.preheader48, label %vector.body, !llvm.loop !80

.lr.ph23.i.preheader48:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph23.i.preheader
  %indvars.iv31.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph23.i.preheader ], [ %i.bk, %vector.body ]
  %indvars.iv29.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.lr.ph23.i.preheader ], [ %i.bl, %vector.body ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader48, %.lr.ph23.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.lr.ph23.i ], [ %indvars.iv31.i.ph, %.lr.ph23.i.preheader48 ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %.lr.ph23.i ], [ %indvars.iv29.i.ph, %.lr.ph23.i.preheader48 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv29.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !21
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next32.i, %i.b
  br i1 %i.bw, label %.lr.ph23.i, label %unriffle.exit, !llvm.loop !81

unriffle.exit:                                    ; preds = %.lr.ph23.i
  %i.bx = lshr i32 %.tr1215, 1                    ; 3 uses
  tail call fastcc void @unriffle_recursively(ptr noundef nonnull %.tr14, i32 noundef %i.bx, ptr noundef nonnull %2)
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %i.by
  %i.ca = sub nuw nsw i32 %.tr1215, %i.bx         ; 2 uses
  %i.cb = icmp samesign ugt i32 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.preheader.i, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %unriffle.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unriffle_recursively_skewed(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %prev_pow2.exit, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr17, %prev_pow2.exit ]
  %.tr81 = phi i32 [ %1, %bb.a ], [ %.0.i, %prev_pow2.exit ] ; 2 uses
  %i.a = icmp sgt i32 %.tr81, 1
  br i1 %i.a, label %.preheader.preheader, label %tailrecurse._crit_edge

.preheader.preheader:                             ; preds = %tailrecurse
  %scevgep38 = getelementptr i8, ptr %2, i64 4
  %scevgep39 = getelementptr i8, ptr %2, i64 8
  %scevgep48 = getelementptr i8, ptr %2, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %unriffle.exit
  %.tr1518 = phi i32 [ %i.d, %unriffle.exit ], [ %.tr81, %.preheader.preheader ] ; 5 uses
  %.tr17 = phi ptr [ %i.f, %unriffle.exit ], [ %.tr, %.preheader.preheader ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ 1, %.preheader ] ; 8 uses
  %i.b = shl nuw i32 %.0.i, 1                     ; 2 uses
  %i.c = icmp ult i32 %i.b, %.tr1518
  br i1 %i.c, label %bb.b, label %prev_pow2.exit, !llvm.loop !86

prev_pow2.exit:                                   ; preds = %bb.b
  %i.d = sub i32 %.tr1518, %.0.i                  ; 5 uses
  %i.e = zext i32 %.0.i to i64                    ; 3 uses
  %i.f = getelementptr [4 x i8], ptr %.tr17, i64 %i.e ; 2 uses
  %i.g = sext i32 %i.d to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h ; 10 uses
  %i.j = shl i32 %i.d, 1                          ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 5 uses
  %.not.i.i = icmp eq i32 %.tr1518, %.0.i
  br i1 %.not.i.i, label %tailrecurse, label %bb.c

bb.c:                                             ; preds = %prev_pow2.exit
  %i.l = icmp slt i32 %i.d, 0
  br i1 %i.l, label %bb.d, label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.k) #21
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false)
  %i.n = add nsw i32 %i.j, -2                     ; 5 uses
  %i.o = lshr exact i32 %i.n, 1
  %i.p = add nuw i32 %i.o, 1
  %wide.trip.count.i = zext i32 %i.p to i64       ; 8 uses
  %min.iters.check54 = icmp ult i32 %i.n, 32
  br i1 %min.iters.check54, label %.lr.ph.i.preheader, label %vector.memcheck44

vector.memcheck44:                                ; preds = %.lr.ph.preheader.i
  %scevgep45 = getelementptr i8, ptr %.tr17, i64 4
  %i.q = zext nneg i32 %.tr1518 to i64
  %i.r = mul nsw i64 %i.q, -4
  %scevgep46 = getelementptr i8, ptr %scevgep45, i64 %i.r
  %i.s = lshr exact i32 %i.n, 1
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = sext i32 %.0.i to i64
  %i.v = add nsw i64 %i.t, %i.u
  %i.w = add nsw i64 %i.v, %i.e
  %i.x = shl nsw i64 %i.w, 2
  %scevgep47 = getelementptr i8, ptr %scevgep46, i64 %i.x
  %i.y = shl nuw nsw i64 %i.t, 3
  %scevgep49 = getelementptr i8, ptr %scevgep48, i64 %i.y
  %bound050 = icmp ult ptr %i.i, %scevgep49
  %bound151 = icmp ult ptr %2, %scevgep47
  %found.conflict52 = and i1 %bound050, %bound151
  br i1 %found.conflict52, label %.lr.ph.i.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck44
  %i.z = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = select i1 %i.aa, i64 8, i64 %i.z
  %n.vec56 = sub nsw i64 %wide.trip.count.i, %i.ab ; 3 uses
  %i.ac = shl nsw i64 %n.vec56, 1
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next63, %vector.body57 ] ; 3 uses
  %i.ad = shl nuw i64 %index58, 1                 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %wide.vec59 = load <8 x i32>, ptr %i.ae, align 4, !tbaa !21, !alias.scope !98
  %strided.vec60 = shufflevector <8 x i32> %wide.vec59, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec61 = load <8 x i32>, ptr %i.ag, align 4, !tbaa !21, !alias.scope !98
  %strided.vec62 = shufflevector <8 x i32> %wide.vec61, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %strided.vec60, ptr %i.ah, align 4, !tbaa !21, !alias.scope !99, !noalias !98
  store <4 x i32> %strided.vec62, ptr %i.ai, align 4, !tbaa !21, !alias.scope !99, !noalias !98
  %index.next63 = add nuw i64 %index58, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next63, %n.vec56
  br i1 %i.aj, label %.lr.ph.i.preheader, label %vector.body57, !llvm.loop !90

.lr.ph.i.preheader:                               ; preds = %vector.body57, %vector.memcheck44, %.lr.ph.preheader.i
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck44 ], [ 0, %.lr.ph.preheader.i ], [ %i.ac, %vector.body57 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck44 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec56, %vector.body57 ] ; 4 uses
  %3 = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %i.ak = lshr exact i32 %i.n, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = sub nsw i64 %i.al, %indvars.iv.i.ph
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv24.i.prol = phi i64 [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ], [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i.prol
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.prol
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !21
  %indvars.iv.next25.i.prol = add nuw nsw i64 %indvars.iv24.i.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !91

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv24.i.unr = phi i64 [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aq = icmp ult i64 %i.am, 3
  br i1 %i.aq, label %.lr.ph23.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.3, %.lr.ph.i ], [ %indvars.iv24.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !21
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !21
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !21
  %indvars.iv.next25.i.3 = add nuw nsw i64 %indvars.iv24.i, 8
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph23.i.preheader, label %.lr.ph.i, !llvm.loop !92

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.k, i64 3)
  %i.bk = add nsw i64 %i.bj, -2
  %i.bl = lshr i64 %i.bk, 1
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp slt i32 %i.j, 42
  br i1 %min.iters.check, label %.lr.ph23.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph23.i.preheader
  %scevgep = getelementptr i8, ptr %.tr17, i64 4
  %i.bn = zext nneg i32 %.tr1518 to i64
  %i.bo = mul nsw i64 %i.bn, -4                   ; 2 uses
  %scevgep33 = getelementptr i8, ptr %scevgep, i64 %i.bo
  %i.bp = lshr exact i32 %i.n, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  %i.bs = sext i32 %.0.i to i64
  %i.bt = shl nsw i64 %i.bs, 2                    ; 2 uses
  %i.bu = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bv = getelementptr i8, ptr %scevgep33, i64 %i.br
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bt
  %scevgep34 = getelementptr i8, ptr %i.bw, i64 %i.bu
  %scevgep35 = getelementptr i8, ptr %.tr17, i64 8
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 %i.bo
  %i.bx = add nsw i64 %i.k, -2                    ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = getelementptr i8, ptr %scevgep36, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.br
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bt
  %scevgep37 = getelementptr i8, ptr %i.cb, i64 %i.bu
  %i.cc = shl nuw nsw i64 %i.bx, 2
  %scevgep40 = getelementptr i8, ptr %scevgep39, i64 %i.cc
  %bound0 = icmp ult ptr %scevgep34, %scevgep40
  %bound1 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph23.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cd = and i64 %i.bm, 7                        ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 0
  %i.cf = select i1 %i.ce, i64 8, i64 %i.cd
  %n.vec = sub nsw i64 %i.bm, %i.cf               ; 3 uses
  %i.cg = shl i64 %n.vec, 1
  %i.ch = or disjoint i64 %i.cg, 1
  %i.ci = add i64 %n.vec, %wide.trip.count.i
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %wide.trip.count.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = shl nuw i64 %index, 1                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %wide.vec = load <8 x i32>, ptr %i.cl, align 4, !tbaa !21, !alias.scope !100
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec41 = load <8 x i32>, ptr %i.cn, align 4, !tbaa !21, !alias.scope !100
  %strided.vec42 = shufflevector <8 x i32> %wide.vec41, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %strided.vec, ptr %gep, align 4, !tbaa !21, !alias.scope !101, !noalias !100
  store <4 x i32> %strided.vec42, ptr %i.co, align 4, !tbaa !21, !alias.scope !101, !noalias !100
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %.lr.ph23.i.preheader68, label %vector.body, !llvm.loop !96

.lr.ph23.i.preheader68:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph23.i.preheader
  %indvars.iv31.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph23.i.preheader ], [ %i.ch, %vector.body ]
  %indvars.iv29.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.lr.ph23.i.preheader ], [ %i.ci, %vector.body ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader68, %.lr.ph23.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.lr.ph23.i ], [ %indvars.iv31.i.ph, %.lr.ph23.i.preheader68 ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %.lr.ph23.i ], [ %indvars.iv29.i.ph, %.lr.ph23.i.preheader68 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !21
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv29.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !21
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ct = icmp slt i64 %indvars.iv.next32.i, %i.k
  br i1 %i.ct, label %.lr.ph23.i, label %unriffle.exit, !llvm.loop !97

unriffle.exit:                                    ; preds = %.lr.ph23.i
  tail call fastcc void @unriffle_recursively_skewed(ptr noundef nonnull %.tr17, i32 noundef %.0.i, ptr noundef nonnull %2)
  %i.cu = icmp samesign ugt i32 %i.d, 1
  br i1 %i.cu, label %.preheader, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %unriffle.exit, %tailrecurse
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { cold }
attributes #23 = { cold nounwind }

end_hunk_0
