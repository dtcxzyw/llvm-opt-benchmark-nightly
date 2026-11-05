Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-mergesort?download=true
inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mode_reverse:bb.a
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
  %scevgep = getelementptr i8, ptr %2, i64 4
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %unriffle.exit
  %.tr1215 = phi i32 [ %i.cl, %unriffle.exit ], [ %1, %.lr.ph.preheader.i.preheader ] ; 5 uses
  %.tr14 = phi ptr [ %i.ck, %unriffle.exit ], [ %0, %.lr.ph.preheader.i.preheader ] ; 15 uses
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
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %bound037 = icmp ult ptr %.tr14, %i.n
  %bound138 = icmp ult ptr %2, %i.k
  %found.conflict39 = and i1 %bound037, %bound138
  br i1 %found.conflict39, label %.lr.ph.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck36
  %i.o = and i64 %wide.trip.count.i, 7            ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 8, i64 %i.o
  %n.vec41 = sub nsw i64 %wide.trip.count.i, %i.q ; 3 uses
  %i.r = shl nsw i64 %n.vec41, 1
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body42 ] ; 3 uses
  %i.s = shl nuw i64 %index43, 1                  ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %wide.vec44 = load <8 x i32>, ptr %i.t, align 4, !tbaa !21, !alias.scope !84
  %strided.vec45 = shufflevector <8 x i32> %wide.vec44, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec46 = load <8 x i32>, ptr %i.v, align 4, !tbaa !21, !alias.scope !84
  %strided.vec47 = shufflevector <8 x i32> %wide.vec46, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %index43 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %strided.vec45, ptr %i.w, align 4, !tbaa !21, !alias.scope !85, !noalias !84
  store <4 x i32> %strided.vec47, ptr %i.x, align 4, !tbaa !21, !alias.scope !85, !noalias !84
  %index.next48 = add nuw i64 %index43, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next48, %n.vec41
  br i1 %i.y, label %.lr.ph.i.preheader, label %vector.body42, !llvm.loop !76

.lr.ph.i.preheader:                               ; preds = %vector.body42, %vector.memcheck36, %.lr.ph.preheader.i
  %indvars.iv24.i.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.preheader.i ], [ %i.r, %vector.body42 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck36 ], [ 0, %.lr.ph.preheader.i ], [ %n.vec41, %vector.body42 ] ; 4 uses
  %i.z = lshr i32 %i.d, 1
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = sub nsw i64 %i.ab, %indvars.iv.i.ph
  %i.ad = sub nsw i64 %i.aa, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv24.i.prol = phi i64 [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ], [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i.prol
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !21
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i.prol
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !21
  %indvars.iv.next25.i.prol = add nuw nsw i64 %indvars.iv24.i.prol, 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !77

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv24.i.unr = phi i64 [ %indvars.iv24.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next25.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 3
  br i1 %i.ah, label %.lr.ph23.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.3, %.lr.ph.i ], [ %indvars.iv24.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !21
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !21
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.as, ptr %i.au, align 4, !tbaa !21
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv24.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !21
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !21
  %indvars.iv.next25.i.3 = add nuw nsw i64 %indvars.iv24.i, 8
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.lr.ph23.i.preheader, label %.lr.ph.i, !llvm.loop !78

.lr.ph23.i.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ba = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3)
  %i.bb = add nsw i64 %i.ba, -2                   ; 3 uses
  %i.bc = lshr i64 %i.bb, 1
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 24
  br i1 %min.iters.check, label %.lr.ph23.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph23.i.preheader
  %i.be = lshr i32 %i.d, 1
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 2
  %i.bh = getelementptr i8, ptr %.tr14, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %i.bj = lshr i64 %i.bb, 1                       ; 2 uses
  %i.bk = add nuw i64 %i.bj, %i.bf
  %i.bl = shl i64 %i.bk, 2
  %i.bm = getelementptr i8, ptr %.tr14, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = shl nuw nsw i64 %i.bj, 3
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %bound0 = icmp ult ptr %i.bi, %i.bq
  %bound1 = icmp ult ptr %scevgep, %i.bn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph23.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = and i64 %i.bd, 7                        ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = select i1 %i.bs, i64 8, i64 %i.br
  %n.vec = sub nsw i64 %i.bd, %i.bt               ; 3 uses
  %i.bu = shl i64 %n.vec, 1
  %i.bv = or disjoint i64 %i.bu, 1
  %i.bw = add i64 %n.vec, %wide.trip.count.i
  %invariant.gep = getelementptr [4 x i8], ptr %.tr14, i64 %wide.trip.count.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = shl nuw i64 %index, 1                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  %wide.vec = load <8 x i32>, ptr %i.bz, align 4, !tbaa !21, !alias.scope !86
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec23 = load <8 x i32>, ptr %i.cb, align 4, !tbaa !21, !alias.scope !86
  %strided.vec24 = shufflevector <8 x i32> %wide.vec23, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %strided.vec, ptr %gep, align 4, !tbaa !21, !alias.scope !87, !noalias !86
  store <4 x i32> %strided.vec24, ptr %i.cc, align 4, !tbaa !21, !alias.scope !87, !noalias !86
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %.lr.ph23.i.preheader52, label %vector.body, !llvm.loop !82

.lr.ph23.i.preheader52:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph23.i.preheader
  %indvars.iv31.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph23.i.preheader ], [ %i.bv, %vector.body ]
  %indvars.iv29.i.ph = phi i64 [ %wide.trip.count.i, %vector.memcheck ], [ %wide.trip.count.i, %.lr.ph23.i.preheader ], [ %i.bw, %vector.body ]
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i.preheader52, %.lr.ph23.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.lr.ph23.i ], [ %indvars.iv31.i.ph, %.lr.ph23.i.preheader52 ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %.lr.ph23.i ], [ %indvars.iv29.i.ph, %.lr.ph23.i.preheader52 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !21
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %indvars.iv29.i
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !21
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 2 ; 2 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next32.i, %i.b
  br i1 %i.ch, label %.lr.ph23.i, label %unriffle.exit, !llvm.loop !83

unriffle.exit:                                    ; preds = %.lr.ph23.i
  %i.ci = lshr i32 %.tr1215, 1                    ; 3 uses
  tail call fastcc void @unriffle_recursively(ptr noundef nonnull %.tr14, i32 noundef %i.ci, ptr noundef nonnull %2)
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.tr14, i64 %i.cj
  %i.cl = sub nuw nsw i32 %.tr1215, %i.ci         ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.cl, 1
  br i1 %i.cm, label %.lr.ph.preheader.i, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %unriffle.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unriffle_recursively_skewed(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  br label %tailrecurse

end_hunk_0
