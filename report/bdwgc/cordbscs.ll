Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bdwgc/original/cordbscs?download=true
inline.NumInlined: 27
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@CORD__extend_path:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %.070 = phi i64 [ %.1, %bb.k ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.04869 = phi i64 [ %.sink, %bb.k ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.05068 = phi ptr [ %.sink75, %bb.k ], [ %i.f, %.lr.ph.preheader ] ; 6 uses
  %.05267 = phi ptr [ %i.aj, %bb.k ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05068, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.05068, i64 3
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not55 = icmp eq i8 %i.r, 0
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = zext i8 %i.r to i64
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.05068, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %.not56 = icmp eq i8 %i.v, 0
  br i1 %.not56, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.05068, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.05068, i64 24
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1
  %.not57 = icmp eq i8 %i.aa, 0
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #16
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i64 [ %i.ab, %bb.g ], [ %i.ad, %bb.h ]
  %i.af = sub i64 %i.x, %i.ae
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.d
  %i.ai = phi i64 [ %i.s, %bb.d ], [ %i.af, %bb.i ], [ %i.ah, %bb.j ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05267, i64 16 ; 2 uses
  %i.ak = add i64 %i.ai, %.04869                  ; 2 uses
  %.not58 = icmp ult i64 %i.g, %i.ak              ; 3 uses
  %i.al = sub i64 %.070, %i.ai
  %.sink75.in.v = select i1 %.not58, i64 16, i64 24
  %.sink75.in = getelementptr inbounds nuw i8, ptr %.05068, i64 %.sink75.in.v
  %.sink = select i1 %.not58, i64 %.04869, i64 %i.ak ; 3 uses
  %.1 = select i1 %.not58, i64 %i.ai, i64 %i.al   ; 2 uses
  %.sink75 = load ptr, ptr %.sink75.in, align 8   ; 4 uses
  store ptr %.sink75, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.05267, i64 24
  store i64 %.sink, ptr %i.am, align 8
  %i.an = load i32, ptr %i.b, align 8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.b, align 8
  %i.ap = load i8, ptr %.sink75, align 1
  %.not54 = icmp eq i8 %i.ap, 0
  br i1 %.not54, label %.lr.ph, label %.critedge, !llvm.loop !23

.critedge:                                        ; preds = %bb.k, %bb.b
  %.050.lcssa = phi ptr [ %i.f, %bb.b ], [ %.sink75, %bb.k ]
  %.048.lcssa = phi i64 [ %i.i, %bb.b ], [ %.sink, %bb.k ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.k, %bb.b ], [ %.1, %bb.k ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.050.lcssa, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.048.lcssa, ptr %i.ar, align 8
  %i.as = add i64 %.0.lcssa, %.048.lcssa          ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.as, ptr %i.at, align 8
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.au, align 8
  %.pre = add i64 %.070, %.04869
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.pre-phi = phi i64 [ %.pre, %bb.l ], [ %i.as, %.critedge ]
  %.not60 = icmp ult i64 %i.g, %.pre-phi
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 1431655765, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @CORD__pos_fetch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i32 %i.b, 1431655765
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = sext i32 %i.b to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 4
  %.not10 = icmp eq i8 %i.k, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @stderr, align 8
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call signext i8 %i.o(i64 noundef %i.s, ptr noundef %i.u) #15
  ret i8 %i.v
}

; Function Attrs: nounwind uwtable
define void @CORD__next(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 1                          ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 6 uses
  %.not = icmp eq i32 %i.d, 1431655765
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  store i64 %i.b, ptr %0, align 8
  %i.k = load i8, ptr %i.j, align 1
  %.not55 = icmp eq i8 %i.k, 0
  br i1 %.not55, label %bb.d, label %.critedge59

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %.not56 = icmp ult i64 %i.b, %i.p
  br i1 %.not56, label %.lr.ph63, label %.critedge59

.lr.ph63:                                         ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = sub nuw i64 %i.p, %i.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.u, i64 8) ; 2 uses
  %i.v = sub i64 %i.b, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 824
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph63, %bb.e
  %.04762 = phi i64 [ 0, %.lr.ph63 ], [ %i.aa, %bb.e ] ; 3 uses
  %i.x = add i64 %i.v, %.04762
  %i.y = tail call signext i8 %i.r(i64 noundef %i.x, ptr noundef %i.t) #15
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.04762
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = add nuw nsw i64 %.04762, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %spec.select
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = add i64 %spec.select, %i.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ae, ptr %i.af, align 8
  br label %bb.g

.critedge59:                                      ; preds = %bb.d, %bb.c
  %i.ag = icmp sgt i32 %i.d, 0
  br i1 %i.ag, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.critedge59, %bb.f
  %.04861 = phi ptr [ %i.am, %bb.f ], [ %i.i, %.critedge59 ] ; 3 uses
  %i.ah = phi i32 [ %i.an, %bb.f ], [ %i.d, %.critedge59 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.04861, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %.04861, i64 -8
  %i.al = load i64, ptr %i.ak, align 8
  %.not57 = icmp eq i64 %i.aj, %i.al
  br i1 %.not57, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds i8, ptr %.04861, i64 -16
  %i.an = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.an, ptr %i.c, align 8
  %i.ao = icmp sgt i32 %i.ah, 1
  br i1 %i.ao, label %.lr.ph, label %.critedge.thread70, !llvm.loop !25

.critedge:                                        ; preds = %.critedge59
  %i.ap = icmp eq i32 %i.d, 0
  br i1 %i.ap, label %.critedge.thread70, label %.critedge.thread

.critedge.thread70:                               ; preds = %bb.f, %.critedge
  store i32 1431655765, ptr %i.c, align 8
  br label %bb.g

.critedge.thread:                                 ; preds = %.lr.ph, %.critedge
  %i.aq = phi i32 [ %i.d, %.critedge ], [ %i.ah, %.lr.ph ]
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.c, align 8
  tail call void @CORD__extend_path(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.critedge.thread, %.critedge.thread70
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @CORD__prev(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %0, align 8                ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1431655765, ptr %i.a, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.a, align 8              ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.not = icmp ult i64 %i.h, %i.j
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp sgt i32 %i.e, 0
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.018 = phi ptr [ %i.r, %bb.e ], [ %i.g, %bb.d ] ; 3 uses
  %i.l = phi i32 [ %i.s, %bb.e ], [ %i.e, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %.018, i64 -8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds i8, ptr %.018, i64 -16
  %i.s = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.s, ptr %i.a, align 8
  %i.t = icmp sgt i32 %i.l, 1
  br i1 %i.t, label %.lr.ph, label %.critedge, !llvm.loop !26

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.d
  %.lcssa = phi i32 [ %i.e, %bb.d ], [ 0, %bb.e ], [ %i.l, %.lr.ph ]
  %i.u = add nsw i32 %.lcssa, -1
  store i32 %i.u, ptr %i.a, align 8
  tail call void @CORD__extend_path(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.critedge, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @CORD_pos_fetch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = sub i64 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.l, 1431655765
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @stderr, align 8
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = sext i32 %i.l to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 4
  %.not10.i = icmp eq i8 %i.u, 0
  br i1 %.not10.i, label %bb.f, label %CORD__pos_fetch.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @stderr, align 8
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #18 ; 0 uses
  tail call void @abort() #19
  unreachable

CORD__pos_fetch.exit:                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i64, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call signext i8 %i.y(i64 noundef %i.ac, ptr noundef %i.ae) #15, !inline_history !27
  br label %bb.g

bb.g:                                             ; preds = %CORD__pos_fetch.exit, %bb.b
  %.0 = phi i8 [ %i.j, %bb.b ], [ %i.af, %CORD__pos_fetch.exit ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define void @CORD_next(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @CORD__next(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @CORD_prev(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  %.pr = load i64, ptr %0, align 8                ; 4 uses
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %.pr, %i.d
  br i1 %i.e, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %.pr, -1
  store i64 %i.f, ptr %0, align 8
  br label %CORD__prev.exit

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = icmp eq i64 %.pr, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %thread-pre-split
  store i32 1431655765, ptr %i.g, align 8
  br label %CORD__prev.exit

bb.e:                                             ; preds = %thread-pre-split
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.g, align 8              ; 4 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = add i64 %.pr, -1                         ; 2 uses
  store i64 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.f, label %CORD__prev.exit

bb.f:                                             ; preds = %bb.e
  %i.p = icmp sgt i32 %i.j, 0
  br i1 %i.p, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.018.i = phi ptr [ %i.w, %bb.g ], [ %i.l, %bb.f ] ; 3 uses
  %i.q = phi i32 [ %i.x, %bb.g ], [ %i.j, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %.018.i, i64 -8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds i8, ptr %.018.i, i64 -16
  %i.x = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.x, ptr %i.g, align 8
  %i.y = icmp sgt i32 %i.q, 1
  br i1 %i.y, label %.lr.ph.i, label %.critedge.i, !llvm.loop !26

.critedge.i:                                      ; preds = %bb.g, %.lr.ph.i, %bb.f
  %.lcssa.i = phi i32 [ %i.j, %bb.f ], [ %i.q, %.lr.ph.i ], [ 0, %bb.g ]
  %i.z = add nsw i32 %.lcssa.i, -1
  store i32 %i.z, ptr %i.g, align 8
  tail call void @CORD__extend_path(ptr noundef nonnull %0)
  br label %CORD__prev.exit

CORD__prev.exit:                                  ; preds = %.critedge.i, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @CORD_pos_to_index(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @CORD_pos_to_cord(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @CORD_pos_valid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ne i32 %i.b, 1431655765
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @CORD_set_pos(ptr nofree noundef captures(none) initializes((8, 12)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1431655765, ptr %i.b, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.e, align 8
  store i64 %2, ptr %0, align 8
  tail call void @CORD__extend_path(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{null}
!6 = !{i64 2148281550}
!7 = distinct !{!7, !4}
!8 = !{ptr @CORD_balance}
!9 = !{ptr @CORD_concat_forest, ptr @CORD_balance}
!10 = distinct !{!10, !4}
!11 = !{ptr @CORD_concat_forest}
!12 = !{i64 2148282177}
!13 = distinct !{!13, !4}
!14 = !{ptr @CORD_substr_closure}
!15 = !{ptr @CORD_from_fn_inner}
!16 = !{ptr @CORD_apply_access_fn, ptr @CORD_from_fn_inner}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = !{ptr @CORD_add_forest}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = !{ptr @CORD__pos_fetch}
end_hunk_0
