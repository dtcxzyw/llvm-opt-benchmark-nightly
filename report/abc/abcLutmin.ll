Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcLutmin?download=true
inline.NumInlined: 307
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Abc_NtkBddPrintInfo1:bb.a

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.val41 = load i32, ptr %i.u, align 4, !tbaa !71
  %i.ab = sext i32 %.val41 to i64
  %i.ac = icmp slt i64 %indvars.iv.next56, %i.ab
  br i1 %i.ac, label %bb.d, label %.critedge6, !llvm.loop !150

.critedge6:                                       ; preds = %bb.g, %bb.c
  %putchar34 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %.val38 = load i32, ptr %i.o, align 4, !tbaa !68
  %i.ad = sext i32 %.val38 to i64
  %i.ae = icmp slt i64 %indvars.iv.next59, %i.ad
  br i1 %i.ae, label %bb.c, label %.critedge4, !llvm.loop !151

.critedge4:                                       ; preds = %.critedge6, %.critedge2
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_NtkBddPrintInfo2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val5054 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.c = icmp sgt i32 %.val5054, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04055 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.04055) ; 0 uses
  %i.e = add nuw nsw i32 %.04055, 1               ; 2 uses
  %.val50 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.f = icmp slt i32 %i.e, %.val50
  br i1 %i.f, label %.lr.ph, label %.critedge, !llvm.loop !152

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %.val4956 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.h = icmp sgt i32 %.val4956, 0
  br i1 %i.h, label %.lr.ph58, label %.critedge2

.lr.ph58:                                         ; preds = %.critedge
  %i.i = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph58, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val47 = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val47, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val53 = load i32, ptr %i.k, align 4, !tbaa !71
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.val53) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val49 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.m = sext i32 %.val49 to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %.critedge2, !llvm.loop !153

.critedge2:                                       ; preds = %bb.b, %.critedge
  %putchar43 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val46 = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.p = getelementptr i8, ptr %.val46, i64 4
  %.val52 = load i32, ptr %i.p, align 4, !tbaa !71 ; 2 uses
  %i.q = add i32 %.val52, -1                      ; 3 uses
  %i.r = icmp sgt i32 %.val52, 1
  br i1 %i.r, label %.lr.ph67.preheader, label %._crit_edge

.lr.ph67.preheader:                               ; preds = %.critedge2
  %wide.trip.count = zext i32 %i.q to i64
  br label %.lr.ph67

.loopexit.loopexit:                               ; preds = %.critedge4
  %i.s = trunc nsw i64 %indvars.iv.next77 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph67
  %.1.lcssa = phi i32 [ %.03865, %.lr.ph67 ], [ %i.s, %.loopexit.loopexit ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond81.not = icmp eq i32 %i.t, %i.q
  br i1 %exitcond81.not, label %._crit_edge, label %.lr.ph67, !llvm.loop !154

._crit_edge:                                      ; preds = %.loopexit, %.critedge2
  ret void

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.loopexit
  %indvars.iv72 = phi i64 [ 1, %.lr.ph67.preheader ], [ %indvars.iv.next73, %.loopexit ] ; 2 uses
  %.03766 = phi i32 [ 0, %.lr.ph67.preheader ], [ %i.t, %.loopexit ] ; 2 uses
  %.03865 = phi i32 [ 0, %.lr.ph67.preheader ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.t = add nuw nsw i32 %.03766, 1               ; 3 uses
  %i.u = icmp slt i32 %i.t, %i.q
  br i1 %i.u, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %.lr.ph67
  %i.v = add nuw nsw i32 %.03766, 97
  %i.w = sext i32 %.03865 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph64, %.critedge4
  %indvars.iv76 = phi i64 [ %i.w, %.lr.ph64 ], [ %indvars.iv.next77, %.critedge4 ] ; 2 uses
  %indvars.iv74 = phi i64 [ %indvars.iv72, %.lr.ph64 ], [ %indvars.iv.next75, %.critedge4 ] ; 3 uses
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %.val45 = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.x = getelementptr inbounds [16 x i8], ptr %.val45, i64 %indvars.iv76 ; 2 uses
  %i.y = trunc i64 %indvars.iv74 to i32
  %i.z = add i32 %i.y, 97
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.v, i32 noundef %i.z) ; 0 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 4       ; 2 uses
  %.val5159 = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ac = icmp sgt i32 %.val5159, 0
  br i1 %i.ac, label %.lr.ph61, label %.critedge4

.lr.ph61:                                         ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %i.x, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph61, %bb.g
  %indvars.iv69 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next70, %bb.g ] ; 3 uses
  %.not = icmp samesign ugt i64 %indvars.iv69, %indvars.iv74
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv69
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !41
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.ag) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %.val51 = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ai = sext i32 %.val51 to i64
  %i.aj = icmp slt i64 %indvars.iv.next70, %i.ai
  br i1 %i.aj, label %bb.d, label %.critedge4, !llvm.loop !155

.critedge4:                                       ; preds = %bb.g, %bb.c
  %putchar44 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !156
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_NtkBddPrintInfo3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %i.b = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val5762 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.c = icmp sgt i32 %.val5762, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04763 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.04763) ; 0 uses
  %i.e = add nuw nsw i32 %.04763, 1               ; 2 uses
  %.val57 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.f = icmp slt i32 %i.e, %.val57
  br i1 %i.f, label %.lr.ph, label %.critedge, !llvm.loop !157

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %.val5664 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.h = icmp sgt i32 %.val5664, 0
  br i1 %i.h, label %.lr.ph66, label %.critedge2

.lr.ph66:                                         ; preds = %.critedge
  %i.i = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val54 = load ptr, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.val54, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val60 = load i32, ptr %i.k, align 4, !tbaa !71
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %.val60) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val56 = load i32, ptr %i.b, align 4, !tbaa !68
  %i.m = sext i32 %.val56 to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %.critedge2, !llvm.loop !158

.critedge2:                                       ; preds = %bb.b, %.critedge
  %putchar50 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.o = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val53 = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.p = getelementptr i8, ptr %.val53, i64 4
  %.val59 = load i32, ptr %i.p, align 4, !tbaa !71 ; 3 uses
  %i.q = add i32 %.val59, -1                      ; 4 uses
  %i.r = icmp sgt i32 %.val59, 1
  br i1 %i.r, label %.lr.ph79, label %._crit_edge

.loopexit61:                                      ; preds = %.loopexit, %.lr.ph79
  %.1.lcssa = phi i32 [ %.04577, %.lr.ph79 ], [ %.2.lcssa, %.loopexit ]
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond97.not = icmp eq i32 %i.s, %i.q
  br i1 %exitcond97.not, label %._crit_edge, label %.lr.ph79, !llvm.loop !159

._crit_edge:                                      ; preds = %.loopexit61, %.critedge2
  ret void

.lr.ph79:                                         ; preds = %.critedge2, %.loopexit61
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.loopexit61 ], [ 2, %.critedge2 ] ; 2 uses
  %.04478 = phi i32 [ %i.s, %.loopexit61 ], [ 0, %.critedge2 ] ; 2 uses
  %.04577 = phi i32 [ %.1.lcssa, %.loopexit61 ], [ 0, %.critedge2 ] ; 2 uses
  %i.s = add nuw nsw i32 %.04478, 1               ; 4 uses
  %i.t = icmp slt i32 %i.s, %i.q
  br i1 %i.t, label %.lr.ph75, label %.loopexit61

.lr.ph75:                                         ; preds = %.lr.ph79
  %i.u = add nuw nsw i32 %.04478, 97
  br label %bb.c

.loopexit.loopexit:                               ; preds = %.critedge4
  %i.v = trunc nsw i64 %indvars.iv.next91 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %.2.lcssa = phi i32 [ %.173, %bb.c ], [ %i.v, %.loopexit.loopexit ] ; 2 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %lftr.wideiv95 = trunc i64 %indvars.iv.next87 to i32
  %exitcond96.not = icmp eq i32 %.val59, %lftr.wideiv95
  br i1 %exitcond96.not, label %.loopexit61, label %bb.c, !llvm.loop !160

bb.c:                                             ; preds = %.lr.ph75, %.loopexit
  %indvars.iv86 = phi i64 [ %indvars.iv84, %.lr.ph75 ], [ %indvars.iv.next87, %.loopexit ] ; 2 uses
  %.04374 = phi i32 [ %i.s, %.lr.ph75 ], [ %i.w, %.loopexit ] ; 2 uses
  %.173 = phi i32 [ %.04577, %.lr.ph75 ], [ %.2.lcssa, %.loopexit ] ; 2 uses
  %i.w = add nuw nsw i32 %.04374, 1               ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.q
  br i1 %i.x, label %.lr.ph72, label %.loopexit

.lr.ph72:                                         ; preds = %bb.c
  %i.y = add nuw nsw i32 %.04374, 97
  %i.z = sext i32 %.173 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph72, %.critedge4
  %indvars.iv90 = phi i64 [ %i.z, %.lr.ph72 ], [ %indvars.iv.next91, %.critedge4 ] ; 2 uses
  %indvars.iv88 = phi i64 [ %indvars.iv86, %.lr.ph72 ], [ %indvars.iv.next89, %.critedge4 ] ; 3 uses
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %.val52 = load ptr, ptr %i.o, align 8, !tbaa !70
  %i.aa = getelementptr inbounds [16 x i8], ptr %.val52, i64 %indvars.iv90 ; 2 uses
  %i.ab = trunc i64 %indvars.iv88 to i32
  %i.ac = add i32 %i.ab, 97
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.u, i32 noundef %i.y, i32 noundef %i.ac) ; 0 uses
  %i.ae = getelementptr i8, ptr %i.aa, i64 4      ; 2 uses
  %.val5867 = load i32, ptr %i.ae, align 4, !tbaa !71
  %i.af = icmp sgt i32 %.val5867, 0
  br i1 %i.af, label %.lr.ph69, label %.critedge4

.lr.ph69:                                         ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.aa, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph69, %bb.h
  %indvars.iv81 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next82, %bb.h ] ; 3 uses
  %.not = icmp samesign ugt i64 %indvars.iv81, %indvars.iv88
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv81
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.aj) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %.val58 = load i32, ptr %i.ae, align 4, !tbaa !71
  %i.al = sext i32 %.val58 to i64
  %i.am = icmp slt i64 %indvars.iv.next82, %i.al
  br i1 %i.am, label %bb.e, label %.critedge4, !llvm.loop !161

.critedge4:                                       ; preds = %bb.h, %bb.d
  %putchar51 = tail call i32 @putchar(i32 10)     ; 0 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next89 to i32
  %exitcond.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.d, !llvm.loop !162
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkBddDecExploreOne(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = tail call ptr @Cudd_Init(i32 noundef %i.b, i32 noundef 0, i32 noundef 256, i32 noundef 262144, i64 noundef 0) #25 ; 14 uses
  tail call void @Cudd_AutodynEnable(ptr noundef %i.c, i32 noundef 6) #25
  %i.d = load i32, ptr %i.a, align 8, !tbaa !66   ; 12 uses
  %i.e = add i32 %i.d, -1
  %or.cond.i.i = icmp ult i32 %i.e, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.d ; 2 uses
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %spec.store.select.i.i to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #24
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 14 uses
  %i.j = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %i.j, label %.lr.ph.preheader.i, label %Vec_IntRandomizeOrder.exit

.lr.ph.preheader.i:                               ; preds = %Vec_IntAlloc.exit.i
  %wide.trip.count.i = zext nneg i32 %i.d to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %vec.ind, ptr %i.k, align 4, !tbaa !41
  store <4 x i32> %step.add, ptr %i.l, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntStartNatural.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntStartNatural.exit, label %.lr.ph.i, !llvm.loop !164

Vec_IntStartNatural.exit:                         ; preds = %.lr.ph.i, %middle.block
  %.not = icmp eq i32 %2, 0                       ; 4 uses
  br i1 %.not, label %Vec_IntRandomizeOrder.exit.thread163, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %Vec_IntStartNatural.exit, %.lr.ph.i62
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %.lr.ph.i62 ], [ 0, %Vec_IntStartNatural.exit ] ; 2 uses
  %i.p = tail call i32 @Abc_Random(i32 noundef 0) #25
  %i.q = urem i32 %i.p, %i.d
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !41
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i63 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !41
  store i32 %i.v, ptr %i.s, align 4, !tbaa !41
  store i32 %i.t, ptr %i.u, align 4, !tbaa !41
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i64, %wide.trip.count.i
  br i1 %exitcond.not, label %Vec_IntRandomizeOrder.exit.thread163, label %.lr.ph.i62, !llvm.loop !165

Vec_IntRandomizeOrder.exit:                       ; preds = %Vec_IntAlloc.exit.i
  %.not132 = icmp eq i32 %2, 0                    ; 2 uses
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 2 uses
  %i.w = getelementptr i8, ptr %calloc.i, i64 8   ; 2 uses
  %i.x = icmp eq i32 %i.d, 0
  br i1 %i.x, label %Vec_IntInvert.exit, label %.thread

.thread:                                          ; preds = %Vec_IntRandomizeOrder.exit
  %i.y = load i32, ptr %i.i, align 4, !tbaa !41
  br label %Vec_IntFindMax.exit.i

Vec_IntRandomizeOrder.exit.thread163:             ; preds = %.lr.ph.i62, %Vec_IntStartNatural.exit
  %calloc.i165 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 4 uses
  %i.z = getelementptr i8, ptr %calloc.i165, i64 8 ; 3 uses
  %i.aa = load i32, ptr %i.i, align 4, !tbaa !41  ; 3 uses
  %.not170 = icmp eq i32 %i.d, 1
  br i1 %.not170, label %Vec_IntFindMax.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %Vec_IntRandomizeOrder.exit.thread163
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64
  %i.ab = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %min.iters.check172 = icmp ult i32 %i.d, 9
  br i1 %min.iters.check172, label %.lr.ph.i.i.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec174 = and i64 %i.ab, -8                   ; 3 uses
  %i.ac = or disjoint i64 %n.vec174, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next179, %vector.body175 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph173 ], [ %i.ag, %vector.body175 ]
  %vec.phi177 = phi <4 x i32> [ %broadcast.splat, %vector.ph173 ], [ %i.ah, %vector.body175 ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index176 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !tbaa !41
  %wide.load178 = load <4 x i32>, ptr %i.af, align 4, !tbaa !41
  %i.ag = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.ah = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi177, <4 x i32> %wide.load178) ; 2 uses
  %index.next179 = add nuw i64 %index176, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.ai, label %middle.block180, label %vector.body175, !llvm.loop !166

middle.block180:                                  ; preds = %vector.body175
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ag, <4 x i32> %i.ah)
  %i.aj = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n181 = icmp eq i64 %i.ab, %n.vec174
  br i1 %cmp.n181, label %Vec_IntFindMax.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block180
  %indvars.iv.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.ac, %middle.block180 ]
  %.015.i.i.ph = phi i32 [ %i.aa, %.lr.ph.preheader.i.i ], [ %i.aj, %middle.block180 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.015.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !41
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %.015.i.i, i32 %i.al) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Vec_IntFindMax.exit.i, label %.lr.ph.i.i, !llvm.loop !167

Vec_IntFindMax.exit.i:                            ; preds = %.lr.ph.i.i, %middle.block180, %.thread, %Vec_IntRandomizeOrder.exit.thread163
  %.not134139169 = phi i1 [ %.not, %Vec_IntRandomizeOrder.exit.thread163 ], [ %.not132, %.thread ], [ %.not, %middle.block180 ], [ %.not, %.lr.ph.i.i ] ; 3 uses
  %calloc.i141168 = phi ptr [ %calloc.i165, %Vec_IntRandomizeOrder.exit.thread163 ], [ %calloc.i, %.thread ], [ %calloc.i165, %middle.block180 ], [ %calloc.i165, %.lr.ph.i.i ] ; 2 uses
  %i.am = phi ptr [ %i.z, %Vec_IntRandomizeOrder.exit.thread163 ], [ %i.w, %.thread ], [ %i.z, %middle.block180 ], [ %i.z, %.lr.ph.i.i ] ; 4 uses
  %.012.i.i = phi i32 [ %i.aa, %Vec_IntRandomizeOrder.exit.thread163 ], [ %i.y, %.thread ], [ %i.aj, %middle.block180 ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %calloc.i141168, i64 4
  %i.ao = add nsw i32 %.012.i.i, 1                ; 3 uses
  %.not.i.i.i = icmp sgt i32 %.012.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i21.i, label %Vec_IntFill.exit.i

.lr.ph.i21.i:                                     ; preds = %Vec_IntFindMax.exit.i
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.aq) #24 ; 3 uses
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !73
  store i32 %i.ao, ptr %calloc.i141168, align 8, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 -1, i64 %i.aq, i1 false), !tbaa !41
  br label %Vec_IntFill.exit.i

Vec_IntFill.exit.i:                               ; preds = %.lr.ph.i21.i, %Vec_IntFindMax.exit.i
  %.val20.i = phi ptr [ null, %Vec_IntFindMax.exit.i ], [ %i.ar, %.lr.ph.i21.i ] ; 9 uses
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !71
  br i1 %i.j, label %.lr.ph.i65, label %Vec_IntInvert.exit

.lr.ph.i65:                                       ; preds = %Vec_IntFill.exit.i
  %i.as = zext nneg i32 %i.d to i64               ; 3 uses
  %min.iters.check184 = icmp ult i32 %i.d, 8
  br i1 %min.iters.check184, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph.i65
  %n.vec186 = and i64 %i.as, 2147483640           ; 3 uses
  br label %vector.body187

vector.body187:                                   ; preds = %pred.store.continue202, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next203, %pred.store.continue202 ] ; 4 uses
  %i.at = trunc i64 %index188 to i32              ; 8 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index188
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index188
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load <4 x i32>, ptr %i.au, align 4, !tbaa !41 ; 5 uses
  %i.ay = load <4 x i32>, ptr %i.aw, align 4, !tbaa !41 ; 5 uses
  %i.az = icmp ne <4 x i32> %i.ax, splat (i32 -1) ; 4 uses
  %i.ba = icmp ne <4 x i32> %i.ay, splat (i32 -1) ; 4 uses
  %i.bb = extractelement <4 x i1> %i.az, i64 0
  br i1 %i.bb, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body187
end_hunk_0
