Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilFile?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Extra_ReadHex:bb.a
  %or.cond33 = icmp ult i8 %i.i, 6
  br i1 %or.cond33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.f to i32
  %i.k = add nsw i32 %i.j, -55
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = add i8 %i.f, -97
  %or.cond34 = icmp ult i8 %i.l, 6
  br i1 %or.cond34, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i8 %i.f to i32
  %i.n = add nsw i32 %i.m, -87
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.027 = phi i32 [ %i.h, %bb.b ], [ %i.k, %bb.d ], [ %i.n, %bb.f ]
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = shl i32 %i.o, 2
  %i.q = and i32 %i.p, 28
  %i.r = shl nuw i32 %.027, %i.q
  %i.s = lshr i64 %indvars.iv, 3
  %i.t = and i64 %i.s, 536870911
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26
  %i.w = or i32 %i.v, %i.r
  store i32 %i.w, ptr %i.u, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.a
  %.028 = phi i32 [ 1, %bb.a ], [ 1, %bb.g ], [ 0, %bb.e ]
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @Extra_ReadHexadecimal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp slt i32 %2, 6
  %i.b = add nsw i32 %2, -5
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, i8 0, i64 %i.g, i1 false), !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.h = shl nuw i32 1, %2
  %i.i = sdiv i32 %i.h, 4
  %.inv = icmp ugt i32 %2, 1
  %spec.store.select = select i1 %.inv, i32 %i.i, i32 1 ; 2 uses
  %i.j = icmp sgt i32 %spec.store.select, 0
  br i1 %i.j, label %.lr.ph.preheader.i, label %Extra_ReadHex.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.k = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %i.k
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %i.m = xor i64 %indvars.iv.i, -1
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 5 uses
  %i.p = add i8 %i.o, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = zext nneg i8 %i.p to i32
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = add i8 %i.o, -65
  %or.cond33.i = icmp ult i8 %i.r, 6
  br i1 %or.cond33.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = zext nneg i8 %i.o to i32
  %i.t = add nsw i32 %i.s, -55
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.u = add i8 %i.o, -97
  %or.cond34.i = icmp ult i8 %i.u, 6
  br i1 %or.cond34.i, label %bb.f, label %Extra_ReadHex.exit

bb.f:                                             ; preds = %bb.e
  %i.v = zext nneg i8 %i.o to i32
  %i.w = add nsw i32 %i.v, -87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.027.i = phi i32 [ %i.q, %bb.b ], [ %i.t, %bb.d ], [ %i.w, %bb.f ]
  %i.x = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.y = shl i32 %i.x, 2
  %i.z = and i32 %i.y, 28
  %i.aa = shl nuw i32 %.027.i, %i.z
  %i.ab = lshr i64 %indvars.iv.i, 3
  %i.ac = and i64 %i.ab, 536870911
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = or i32 %i.ae, %i.aa
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.k
  br i1 %exitcond.not.i, label %Extra_ReadHex.exit, label %.lr.ph.i, !llvm.loop !29

Extra_ReadHex.exit:                               ; preds = %bb.e, %bb.g, %._crit_edge
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define void @Extra_PrintHexadecimal(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nuw i32 1, %2                        ; 2 uses
  %i.b = icmp sgt i32 %i.a, 3
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = lshr i32 %i.a, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.013.in = phi i32 [ %.013, %bb.d ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.013 = add nsw i32 %.013.in, -1                ; 3 uses
  %i.d = lshr i32 %.013, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %i.h = shl i32 %.013, 2
  %i.i = and i32 %i.h, 28
  %i.j = lshr i32 %i.g, %i.i
  %i.k = and i32 %i.j, 15                         ; 3 uses
  %i.l = icmp samesign ult i32 %i.k, 10
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.k) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i32 %i.k, 87
  %fputc = tail call i32 @fputc(i32 %i.n, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = icmp samesign ugt i32 %.013.in, 1
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_PrintHexadecimalString(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  switch i32 %2, label %.critedge31 [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !26
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 48, ptr %0, align 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  store i16 49, ptr %0, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !26
  %i.d = and i32 %i.c, 1
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 49, ptr %0, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i16 50, ptr %0, align 1
  br label %bb.h

.critedge31:                                      ; preds = %bb.a
  %i.e = shl nuw i32 1, %2                        ; 2 uses
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %.lr.ph.preheader.a, label %._crit_edge

.lr.ph.preheader.a:                               ; preds = %.critedge31
  %i.g = lshr i32 %i.e, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %.lr.ph
  %.0.in33 = phi i32 [ %.0.a, %.lr.ph ], [ %i.g, %.lr.ph.preheader.a ] ; 2 uses
  %.02432 = phi ptr [ %.1.a, %.lr.ph ], [ %0, %.lr.ph.preheader.a ] ; 2 uses
  %.0.a = add nsw i32 %.0.in33, -1                ; 3 uses
  %i.h = lshr i32 %.0.a, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26
  %i.l = shl i32 %.0.a, 2
  %i.m = and i32 %i.l, 28
  %i.n = lshr i32 %i.k, %i.m
  %i.o = and i32 %i.n, 15                         ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 10
  %i.q = trunc nuw nsw i32 %i.o to i8             ; 2 uses
  %i.r = add nuw nsw i8 %i.q, 87
  %i.s = or disjoint i8 %i.q, 48
  %storemerge.a = select i1 %i.p, i8 %i.s, i8 %i.r
  %.1.a = getelementptr inbounds nuw i8, ptr %.02432, i64 1 ; 2 uses
  store i8 %storemerge.a, ptr %.02432, align 1, !tbaa !8
  %3 = icmp samesign ugt i32 %.0.in33, 1
  br i1 %3, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %.critedge31
  %.024.lcssa = phi ptr [ %0, %.critedge31 ], [ %.1.a, %.lr.ph ]
  store i8 0, ptr %.024.lcssa, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Extra_PrintHex(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %0) ; 0 uses
  %i.b = shl nuw i32 1, %2                        ; 2 uses
  %i.c = sdiv i32 %i.b, 4
  %i.d = and i32 %i.b, -2147483645
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = add nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016.in = phi i32 [ %.016, %bb.d ], [ %i.g, %bb.a ] ; 2 uses
  %.016 = add nsw i32 %.016.in, -1                ; 3 uses
  %i.i = lshr i32 %.016, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %i.m = shl nuw nsw i32 %.016, 2
  %i.n = lshr i32 %i.l, %i.m
  %i.o = and i32 %i.n, 15                         ; 3 uses
  %i.p = icmp samesign ult i32 %i.o, 10
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.o) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i32 %i.o, 55
  %fputc = tail call i32 @fputc(i32 %i.r, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = icmp samesign ugt i32 %.016.in, 1
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Extra_PrintHex2(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl nuw i32 1, %2                        ; 2 uses
  %i.b = sdiv i32 %i.a, 4
  %i.c = and i32 %i.a, -2147483645
  %i.d = icmp sgt i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e                   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015.in = phi i32 [ %.015, %bb.d ], [ %i.f, %bb.a ] ; 2 uses
  %.015 = add nsw i32 %.015.in, -1                ; 3 uses
  %i.h = lshr i32 %.015, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26
  %i.l = shl nuw nsw i32 %.015, 2
  %i.m = lshr i32 %i.k, %i.l
  %i.n = and i32 %i.m, 15                         ; 3 uses
  %i.o = icmp samesign ult i32 %i.n, 10
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.n) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw nsw i32 %i.n, 55
  %fputc = tail call i32 @fputc(i32 %i.q, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = icmp samesign ugt i32 %.015.in, 1
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Extra_PrintHexReverse(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %0) ; 0 uses
  %i.b = shl nuw i32 1, %2                        ; 2 uses
  %i.c = sdiv i32 %i.b, 4
  %i.d = and i32 %i.b, -2147483645
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = add nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.015 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.a ]   ; 3 uses
  %i.i = lshr i32 %.015, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %i.m = shl nuw nsw i32 %.015, 2
  %i.n = lshr i32 %i.l, %i.m
  %i.o = and i32 %i.n, 15                         ; 3 uses
  %i.p = icmp samesign ult i32 %i.o, 10
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.o) #21 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i32 %i.o, 55
  %fputc = tail call i32 @fputc(i32 %i.r, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.s = add nuw nsw i32 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Extra_PrintSymbols(ptr nofree noundef readnone captures(none) %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i8 %1 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.06 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.b ]
  %putchar5 = tail call i32 @putchar(i32 %i.b)    ; 0 uses
  %i.c = add nuw nsw i32 %.06, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.c, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Extra_StringAppend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.c = add i64 %i.a, 2
  %i.d = add i64 %i.c, %i.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #23 ; 2 uses
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1) #21 ; 0 uses
  tail call void @free(ptr noundef nonnull %0) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @Extra_UtilStrsav(ptr noundef %1) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Extra_StringClean(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %.not19 = icmp eq i8 %i.a, 0
  br i1 %.not19, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.preheader
end_hunk_0
