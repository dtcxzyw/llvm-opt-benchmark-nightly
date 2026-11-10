Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-mergesort?download=true
inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mode_reverse:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv17 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next18, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.c, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv17 ; 2 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 1
  %i.f = load i32, ptr %i.e, align 1
  store i32 %i.f, ptr %i.d, align 1
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 1
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.g = icmp slt i64 %indvars.iv.next18, %indvars.iv.next
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
  tail call void @qsort(ptr noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 4, ptr noundef nonnull @compare_ints) #19
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
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !71

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

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
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef %i.a) #20
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call ptr @xmalloc(i64 noundef %i.c) #19 ; 2 uses
  tail call fastcc void @unriffle_recursively(ptr noundef %0, i32 noundef %1, ptr noundef %i.d)
  tail call void @free(ptr noundef %i.d) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mode_unriffle_skewed(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %st_mult.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef %i.a) #20
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.a, 2
  %i.d = tail call ptr @xmalloc(i64 noundef %i.c) #19 ; 2 uses
  tail call fastcc void @unriffle_recursively_skewed(ptr noundef %0, i32 noundef %1, ptr noundef %i.d)
  tail call void @free(ptr noundef %i.d) #19
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unriffle_recursively(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph.preheader.i.preheader, label %tailrecurse._crit_edge

.lr.ph.preheader.i.preheader:                     ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %2, i64 8
  %scevgep.a = getelementptr i8, ptr %2, i64 4    ; 2 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %unriffle.exit
  %.tr1215 = phi i32 [ %i.cj, %unriffle.exit ], [ %1, %.lr.ph.preheader.i.preheader ] ; 5 uses
  %.tr14 = phi ptr [ %i.ci, %unriffle.exit ], [ %0, %.lr.ph.preheader.i.preheader ] ; 15 uses
  %i.b = zext nneg i32 %.tr1215 to i64            ; 3 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %.tr14, i64 %i.c, i1 false)
  %i.d = add nsw i32 %.tr1215, -1                 ; 4 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = add nuw nsw i32 %i.e, 1
  %wide.trip.count.i = zext nneg i32 %i.f to i64  ; 7 uses
  %min.iters.check35 = icmp ult i32 %.tr1215, 17
  br i1 %min.iters.check35, label %.lr.ph.i.preheader, label %vector.memcheck36

vector.memcheck36:                                ; preds = %.lr.ph.preheader.i
  %i.g = lshr i32 %i.d, 1
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = getelementptr i8, ptr %.tr14, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = shl nuw nsw i64 %i.h, 3
  %i.m = getelementptr i8, ptr %scevgep.a, i64 %i.l
  %bound037 = icmp ult ptr %.tr14, %i.m
  %bound138 = icmp ult ptr %2, %i.k
  %found.conflict39 = and i1 %bound037, %bound138
  br i1 %found.conflict39, label %.lr.ph.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck36
  %i.n = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %i.p = select i1 %i.o, i64 8, i64 %i.n
  %n.vec41 = sub nsw i64 %wide.trip.count.i, %i.p ; 3 uses
  %i.q = shl nsw i64 %n.vec41, 1
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body42 ] ; 3 uses
  %i.r = shl nuw i64 %index43, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %wide.vec44 = load <8 x i32>, ptr %i.s, align 4, !tbaa !21, !alias.scope !84
  %strided.vec45 = shufflevector <8 x i32> %wide.vec44, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i32>, ptr %i.u, align 4, !tbaa !21, !alias.scope !84
  %strided.vec47 = shufflevector <8 x i32> %wide.vec46, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %index43 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %strided.vec45, ptr %i.v, align 4, !tbaa !21, !alias.scope !85, !noalias !84
  store <4 x i32> %strided.vec47, ptr %i.w, align 4, !tbaa !21, !alias.scope !85, !noalias !84
  %index.next48 = add nuw i64 %index43, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next48, %n.vec41
  br i1 %i.x, label %.lr.ph.i.preheader, label %vector.body42, !llvm.loop !76

.lr.ph.i.preheader:                               ; preds = %vector.body42, %vector.memcheck36, %.lr.ph.preheader.i
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.preheader.i ], [ %i.q, %vector.body42 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec41, %vector.body42 ] ; 4 uses
  %i.y = lshr i32 %i.d, 1
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1
  %i.ab = sub nsw i64 %i.aa, %indvars.iv.i.ph
  %i.ac = sub nsw i64 %i.z, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv24.i.prol = phi i64 [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ], [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i.prol
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i.prol
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !21
  %indvars.iv.next25.i.prol = add nuw nsw i64 %indvars.iv24.i.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !77

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv24.i.unr = phi i64 [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ag = icmp ult i64 %i.ac, 3
  br i1 %i.ag, label %.lr.ph23.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.3, %.lr.ph.i ], [ %indvars.iv24.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !21
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !21
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !21
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !21
  %indvars.iv.next25.i.3 = add nuw nsw i64 %indvars.iv24.i, 8
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph23.i.preheader, label %.lr.ph.i, !llvm.loop !78

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.az = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.ba = add nsw i64 %i.az, -2                   ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 24
  br i1 %min.iters.check, label %.lr.ph23.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph23.i.preheader
  %i.bd = lshr i32 %i.d, 1
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = getelementptr i8, ptr %.tr14, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = lshr i64 %i.ba, 1                       ; 2 uses
  %i.bj = add nuw i64 %i.bi, %i.be
  %i.bk = shl i64 %i.bj, 2
  %i.bl = getelementptr i8, ptr %.tr14, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = shl nuw nsw i64 %i.bi, 3
  %i.bo = getelementptr i8, ptr %scevgep, i64 %i.bn
  %bound0 = icmp ult ptr %i.bh, %i.bo
  %bound1 = icmp ult ptr %scevgep.a, %i.bm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph23.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bp = and i64 %i.bc, 7                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  %i.br = select i1 %i.bq, i64 8, i64 %i.bp
  %n.vec = sub nsw i64 %i.bc, %i.br               ; 3 uses
  %i.bs = shl i64 %n.vec, 1
  %i.bt = or disjoint i64 %i.bs, 1
  %i.bu = add i64 %n.vec, %wide.trip.count.i
  %invariant.gep = getelementptr [4 x i8], ptr %.tr14, i64 %wide.trip.count.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = shl nuw i64 %index, 1                   ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  %wide.vec = load <8 x i32>, ptr %i.bx, align 4, !tbaa !21, !alias.scope !86
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec23 = load <8 x i32>, ptr %i.bz, align 4, !tbaa !21, !alias.scope !86
  %strided.vec24 = shufflevector <8 x i32> %wide.vec23, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %strided.vec, ptr %gep, align 4, !tbaa !21, !alias.scope !87, !noalias !86
  store <4 x i32> %strided.vec24, ptr %i.ca, align 4, !tbaa !21, !alias.scope !87, !noalias !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %.lr.ph23.i.preheader52, label %vector.body, !llvm.loop !82

.lr.ph23.i.preheader52:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph23.i.preheader
  %indvars.iv31.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph23.i.preheader ], [ %i.bt, %vector.body ]
  %indvars.iv29.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.lr.ph23.i.preheader ], [ %i.bu, %vector.body ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader52, %.lr.ph23.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.lr.ph23.i ], [ %indvars.iv31.i.ph, %.lr.ph23.i.preheader52 ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %.lr.ph23.i ], [ %indvars.iv29.i.ph, %.lr.ph23.i.preheader52 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !21
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv29.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !21
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next32.i, %i.b
  br i1 %i.cf, label %.lr.ph23.i, label %unriffle.exit, !llvm.loop !83

unriffle.exit:                                    ; preds = %.lr.ph23.i
  %i.cg = lshr i32 %.tr1215, 1                    ; 3 uses
  tail call fastcc void @unriffle_recursively(ptr noundef nonnull %.tr14, i32 noundef %i.cg, ptr noundef nonnull %2)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %i.ch
  %i.cj = sub nuw nsw i32 %.tr1215, %i.cg         ; 2 uses
  %i.ck = icmp samesign ugt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph.preheader.i, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %unriffle.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unriffle_recursively_skewed(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %prev_pow2.exit, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr17, %prev_pow2.exit ]
  %.tr85 = phi i32 [ %1, %bb.a ], [ %.0.i, %prev_pow2.exit ] ; 2 uses
  %i.a = icmp sgt i32 %.tr85, 1
  br i1 %i.a, label %.preheader.preheader, label %tailrecurse._crit_edge

.preheader.preheader:                             ; preds = %tailrecurse
  %scevgep = getelementptr i8, ptr %2, i64 8
  %scevgep.a = getelementptr i8, ptr %2, i64 4    ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %unriffle.exit
  %.tr1518 = phi i32 [ %i.d, %unriffle.exit ], [ %.tr85, %.preheader.preheader ] ; 5 uses
  %.tr17 = phi ptr [ %i.f, %unriffle.exit ], [ %.tr, %.preheader.preheader ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ 1, %.preheader ] ; 8 uses
  %i.b = shl nuw i32 %.0.i, 1                     ; 2 uses
  %i.c = icmp ult i32 %i.b, %.tr1518
  br i1 %i.c, label %bb.b, label %prev_pow2.exit, !llvm.loop !88

prev_pow2.exit:                                   ; preds = %bb.b
  %i.d = sub i32 %.tr1518, %.0.i                  ; 5 uses
  %i.e = zext i32 %.0.i to i64                    ; 4 uses
  %i.f = getelementptr [4 x i8], ptr %.tr17, i64 %i.e ; 2 uses
  %i.g = sext i32 %i.d to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h ; 10 uses
  %i.j = shl i32 %i.d, 1                          ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %.not.i.i = icmp eq i32 %.tr1518, %.0.i
  br i1 %.not.i.i, label %tailrecurse, label %bb.c

bb.c:                                             ; preds = %prev_pow2.exit
  %i.l = icmp slt i32 %i.d, 0
  br i1 %i.l, label %bb.d, label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef range(i64 -2147483648, 2147483648) %i.k) #20
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.m = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.i, i64 %i.m, i1 false)
  %i.n = add nsw i32 %i.j, -2                     ; 5 uses
  %i.o = lshr exact i32 %i.n, 1
  %i.p = add nuw nsw i32 %i.o, 1
  %wide.trip.count.i = zext nneg i32 %i.p to i64  ; 7 uses
  %min.iters.check54 = icmp ult i32 %i.n, 32
  br i1 %min.iters.check54, label %.lr.ph.i.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %.lr.ph.preheader.i
  %i.q = lshr exact i32 %i.n, 1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = sext i32 %.0.i to i64
  %i.t = zext nneg i32 %.tr1518 to i64
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = add nsw i64 %i.r, %i.s
  %i.w = add nsw i64 %i.v, %i.e
  %i.x = shl nsw i64 %i.w, 2
  %i.y = add nsw i64 %i.x, 4
  %i.z = sub nsw i64 %i.y, %i.u
  %i.aa = getelementptr i8, ptr %.tr17, i64 %i.z
  %i.ab = shl nuw nsw i64 %i.r, 3
  %i.ac = getelementptr i8, ptr %scevgep.a, i64 %i.ab
  %bound056 = icmp ult ptr %i.i, %i.ac
  %bound157 = icmp ult ptr %2, %i.aa
  %found.conflict58 = and i1 %bound056, %bound157
  br i1 %found.conflict58, label %.lr.ph.i.preheader, label %vector.ph59

vector.ph59:                                      ; preds = %vector.memcheck55
  %i.ad = and i64 %wide.trip.count.i, 7           ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 8, i64 %i.ad
  %n.vec60 = sub nsw i64 %wide.trip.count.i, %i.af ; 3 uses
  %i.ag = shl nsw i64 %n.vec60, 1
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 3 uses
  %i.ah = shl nuw i64 %index62, 1                 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %wide.vec63 = load <8 x i32>, ptr %i.ai, align 4, !tbaa !21, !alias.scope !100
  %strided.vec64 = shufflevector <8 x i32> %wide.vec63, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec65 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !21, !alias.scope !100
  %strided.vec66 = shufflevector <8 x i32> %wide.vec65, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index62 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %strided.vec64, ptr %i.al, align 4, !tbaa !21, !alias.scope !101, !noalias !100
  store <4 x i32> %strided.vec66, ptr %i.am, align 4, !tbaa !21, !alias.scope !101, !noalias !100
  %index.next67 = add nuw i64 %index62, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.an, label %.lr.ph.i.preheader, label %vector.body61, !llvm.loop !92

.lr.ph.i.preheader:                               ; preds = %vector.body61, %vector.memcheck55, %.lr.ph.preheader.i
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck55 ], [ 0, %.lr.ph.preheader.i ], [ %i.ag, %vector.body61 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck55 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec60, %vector.body61 ] ; 4 uses
  %i.ao = lshr exact i32 %i.n, 1
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %reass.sub = sub nsw i64 %i.ap, %indvars.iv.i.ph
  %i.aq = add nsw i64 %reass.sub, 1
  %i.ar = sub nsw i64 %i.ap, %indvars.iv.i.ph
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv24.i.prol = phi i64 [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ], [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i.prol
  %i.at = load i32, ptr %i.as, align 4, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.prol
  store i32 %i.at, ptr %i.au, align 4, !tbaa !21
  %indvars.iv.next25.i.prol = add nuw nsw i64 %indvars.iv24.i.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !93

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv24.i.unr = phi i64 [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.av = icmp ult i64 %i.ar, 3
  br i1 %i.av, label %.lr.ph23.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.3, %.lr.ph.i ], [ %indvars.iv24.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !21
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !21
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !21
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !21
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !21
  %indvars.iv.next25.i.3 = add nuw nsw i64 %indvars.iv24.i, 8
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph23.i.preheader, label %.lr.ph.i, !llvm.loop !94

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.bo = tail call i64 @llvm.smax.i64(i64 %i.k, i64 3)
  %i.bp = add nsw i64 %i.bo, -2                   ; 2 uses
  %i.bq = lshr i64 %i.bp, 1
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp slt i32 %i.j, 42
  br i1 %min.iters.check, label %.lr.ph23.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph23.i.preheader
  %i.bs = lshr exact i32 %i.n, 1
  %i.bt = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.bu = sext i32 %.0.i to i64                   ; 2 uses
  %i.bv = zext nneg i32 %.tr1518 to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2                ; 2 uses
  %i.bx = add nsw i64 %i.bt, %i.bu
  %i.by = add nsw i64 %i.bx, %i.e
  %i.bz = shl nsw i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, 4
  %i.cb = sub nsw i64 %i.ca, %i.bw
  %i.cc = getelementptr i8, ptr %.tr17, i64 %i.cb
  %i.cd = lshr i64 %i.bp, 1                       ; 2 uses
  %i.ce = add nuw i64 %i.cd, %i.bt
  %i.cf = add i64 %i.ce, %i.bu
  %i.cg = add i64 %i.cf, %i.e
  %i.ch = shl i64 %i.cg, 2
  %i.ci = add i64 %i.ch, 8
  %i.cj = sub i64 %i.ci, %i.bw
  %i.ck = getelementptr i8, ptr %.tr17, i64 %i.cj
  %i.cl = shl nsw i64 %i.cd, 3
  %i.cm = getelementptr i8, ptr %scevgep, i64 %i.cl
  %bound0 = icmp ult ptr %i.cc, %i.cm
  %bound1 = icmp ult ptr %scevgep.a, %i.ck
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph23.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cn = and i64 %i.br, 7                        ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = select i1 %i.co, i64 8, i64 %i.cn
  %n.vec = sub nsw i64 %i.br, %i.cp               ; 3 uses
  %i.cq = shl i64 %n.vec, 1
  %i.cr = or disjoint i64 %i.cq, 1
  %i.cs = add i64 %n.vec, %wide.trip.count.i
  %invariant.gep = getelementptr [4 x i8], ptr %i.i, i64 %wide.trip.count.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = shl nuw i64 %index, 1                   ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %wide.vec = load <8 x i32>, ptr %i.cv, align 4, !tbaa !21, !alias.scope !102
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec41 = load <8 x i32>, ptr %i.cx, align 4, !tbaa !21, !alias.scope !102
  %strided.vec42 = shufflevector <8 x i32> %wide.vec41, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %strided.vec, ptr %gep, align 4, !tbaa !21, !alias.scope !103, !noalias !102
  store <4 x i32> %strided.vec42, ptr %i.cy, align 4, !tbaa !21, !alias.scope !103, !noalias !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %.lr.ph23.i.preheader72, label %vector.body, !llvm.loop !98

.lr.ph23.i.preheader72:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph23.i.preheader
  %indvars.iv31.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph23.i.preheader ], [ %i.cr, %vector.body ]
  %indvars.iv29.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.lr.ph23.i.preheader ], [ %i.cs, %vector.body ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader72, %.lr.ph23.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.lr.ph23.i ], [ %indvars.iv31.i.ph, %.lr.ph23.i.preheader72 ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %.lr.ph23.i ], [ %indvars.iv29.i.ph, %.lr.ph23.i.preheader72 ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.db = load i32, ptr %i.da, align 4, !tbaa !21
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv29.i
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !21
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.dd = icmp slt i64 %indvars.iv.next32.i, %i.k
  br i1 %i.dd, label %.lr.ph23.i, label %unriffle.exit, !llvm.loop !99

unriffle.exit:                                    ; preds = %.lr.ph23.i
  tail call fastcc void @unriffle_recursively_skewed(ptr noundef nonnull %.tr17, i32 noundef %.0.i, ptr noundef nonnull %2)
  %i.de = icmp samesign ugt i32 %i.d, 1
  br i1 %i.de, label %.preheader, label %tailrecurse._crit_edge

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
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { cold }
attributes #22 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !22}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"dist", !14, i64 0, !13, i64 8}
!16 = !{!15, !14, i64 0}
!17 = !{!"mode", !14, i64 0, !13, i64 8}
!18 = !{!17, !14, i64 0}
!19 = !{!15, !13, i64 8}
!20 = !{!17, !13, i64 8}
!21 = !{!10, !10, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{null}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{null}
!31 = distinct !{null, null}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = !{!14, !14, i64 0}
!36 = !{!"long", !9, i64 0}
!37 = !{!"strbuf", !36, i64 0, !36, i64 8, !14, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!37, !14, i64 16}
!40 = !{!9, !9, i64 0}
!41 = !{!37, !36, i64 0}
!42 = !{!"p1 _ZTS4line", !13, i64 0}
!43 = !{!"line", !14, i64 0, !42, i64 8}
!44 = !{!43, !14, i64 0}
!45 = !{!42, !42, i64 0}
!46 = !{!43, !42, i64 8}
!47 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!48 = !{!47, !47, i64 0}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !22}
!53 = !{!"p1 _ZTS6number", !13, i64 0}
!54 = !{!"number", !10, i64 0, !10, i64 4, !53, i64 8}
!55 = !{!54, !10, i64 0}
!56 = !{!54, !10, i64 4}
!57 = !{!53, !53, i64 0}
!58 = !{!"stats", !10, i64 0, !10, i64 4, !10, i64 8}
!59 = !{!58, !10, i64 8}
!60 = !{!58, !10, i64 4}
!61 = !{!58, !10, i64 0}
!62 = !{!54, !53, i64 8}
!63 = distinct !{!63, !22, !23, !24}
!64 = distinct !{!64, !22, !24, !23}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22, !23, !24}
!67 = distinct !{!67, !22, !24, !23}
!68 = distinct !{!68, !22, !23, !24}
!69 = distinct !{!69, !22, !24, !23}
!70 = distinct !{!70, !22}
!71 = distinct !{!71, !22, !23, !24}
!72 = distinct !{!72, !22, !24, !23}
!73 = distinct !{!73, i1 false, !"LVerDomain"}
!74 = distinct !{!74, !73}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !22, !23, !24}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !22, !23}
!79 = distinct !{!79, i1 false, !"LVerDomain"}
!80 = distinct !{!80, !79}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !22, !23, !24}
!83 = distinct !{!83, !22, !23}
!84 = !{!74}
!85 = !{!75}
!86 = !{!80}
end_hunk_0
