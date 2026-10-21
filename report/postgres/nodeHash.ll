Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeHash?download=true
inline.NumInlined: 122
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ExecScanHashTableForUnmatched:bb.a
bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = sext i32 %i.l to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = add nsw i32 %i.l, 1
  store i32 %i.s, ptr %i.e, align 4
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.f, align 8              ; 3 uses
  %i.u = load i32, ptr %i.g, align 4
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.h, align 8
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.i, align 8
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.t, 1
  store i32 %i.ag, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.c
  %.1 = phi ptr [ %i.k, %bb.c ], [ %i.r, %bb.e ], [ %i.af, %bb.g ] ; 2 uses
  %.not2932 = icmp eq ptr %.1, null
  br i1 %.not2932, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.j
  %.233 = phi ptr [ %i.aq, %bb.j ], [ %.1, %bb.h ] ; 4 uses
  %i.ah = getelementptr i8, ptr %.233, i64 26
  %.val = load i16, ptr %i.ah, align 2
  %i.ai = icmp slt i16 %.val, 0
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.233, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call ptr @ExecStoreMinimalTuple(ptr noundef nonnull %i.aj, ptr noundef %i.al, i1 noundef zeroext false) #15
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @MemoryContextReset(ptr noundef %i.ap) #15
  store ptr %.233, ptr %i.c, align 8
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %.233, align 8            ; 2 uses
  %.not29 = icmp eq ptr %i.aq, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %i.ar = load volatile i32, ptr @InterruptPending, align 4
  %.not30 = icmp eq i32 %i.ar, 0
  br i1 %.not30, label %.backedge, label %bb.k, !prof !12

bb.k:                                             ; preds = %._crit_edge
  tail call void @ProcessInterrupts() #15
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %._crit_edge
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.i
  %.0 = phi i1 [ true, %bb.i ], [ false, %bb.f ]
  ret i1 %.0
}

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #1

declare void @ProcessInterrupts() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @ExecParallelScanHashTableForUnmatched(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 208      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.021 = phi ptr [ %i.d, %bb.a ], [ null, %.backedge ] ; 2 uses
  %.not = icmp eq ptr %.021, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val25 = load ptr, ptr %i.e, align 8
  %.021.val = load i64, ptr %.021, align 8
  %i.h = tail call ptr @dsa_get_address(ptr noundef %.val25, i64 noundef %.021.val) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 4              ; 3 uses
  %i.j = load i32, ptr %i.b, align 8
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.i, 1
  store i32 %i.l, ptr %i.f, align 4
  %i.m = load ptr, ptr %i.g, align 8
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load volatile i64, ptr %i.o, align 8
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = tail call ptr @dsa_get_address(ptr noundef %i.q, i64 noundef %i.p) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1 = phi ptr [ %i.h, %bb.c ], [ %i.r, %bb.e ]  ; 2 uses
  %.not2328 = icmp eq ptr %.1, null
  br i1 %.not2328, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.229 = phi ptr [ %i.ab, %bb.h ], [ %.1, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %.229, i64 26
  %.val26 = load i16, ptr %i.s, align 2
  %i.t = icmp slt i16 %.val26, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.229, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr @ExecStoreMinimalTuple(ptr noundef nonnull %i.u, ptr noundef %i.w, i1 noundef zeroext false) #15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @MemoryContextReset(ptr noundef %i.aa) #15
  store ptr %.229, ptr %i.c, align 8
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %i.e, align 8
  %.2.val = load i64, ptr %.229, align 8
  %i.ab = tail call ptr @dsa_get_address(ptr noundef %.val, i64 noundef %.2.val) #15 ; 2 uses
  %.not23 = icmp eq ptr %i.ab, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %i.ac = load volatile i32, ptr @InterruptPending, align 4
  %.not24 = icmp eq i32 %i.ac, 0
  br i1 %.not24, label %.backedge, label %bb.i, !prof !12

bb.i:                                             ; preds = %._crit_edge
  tail call void @ProcessInterrupts() #15
  br label %.backedge

.backedge:                                        ; preds = %bb.i, %._crit_edge
  br label %bb.b

.loopexit:                                        ; preds = %bb.d, %bb.g
  %.0 = phi i1 [ true, %bb.g ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecHashTableReset(ptr nofree noundef captures(none) initializes((24, 32), (128, 136), (192, 200)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @MemoryContextReset(ptr noundef %i.c) #15
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.d, ptr @CurrentMemoryContext, align 8
  %i.f = sext i32 %i.a to i64
  %i.g = tail call ptr @palloc0_mul(i64 noundef 8, i64 noundef %i.f) #15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.i, align 8
  store ptr %i.e, ptr @CurrentMemoryContext, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr null, ptr %i.j, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ExecHashTableResetMatchFlags(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph26, label %.preheader

.lr.ph26:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %i.i = phi i32 [ %i.a, %.lr.ph26 ], [ %i.n, %._crit_edge ]
  %indvars.iv = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %1 = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %.01821 = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not2022 = icmp eq ptr %.01821, null
  br i1 %.not2022, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01823 = phi ptr [ %.018, %.lr.ph ], [ %.01821, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01823, i64 26 ; 2 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = and i16 %i.l, 32767
  store i16 %i.m, ptr %i.k, align 2
  %.018 = load ptr, ptr %.01823, align 8          ; 2 uses
  %.not20 = icmp eq ptr %.018, null
  br i1 %.not20, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.n = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %.preheader, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph34, %._crit_edge32
  %i.q = phi i32 [ %i.e, %.lr.ph34 ], [ %i.y, %._crit_edge32 ]
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38, %._crit_edge32 ] ; 2 uses
  %2 = load ptr, ptr %i.g, align 8
  %3 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv37
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr %i.h, align 8
  %i.r = sext i32 %4 to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %5, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.11927 = load ptr, ptr %i.u, align 8           ; 2 uses
  %.not28 = icmp eq ptr %.11927, null
  br i1 %.not28, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.c, %.lr.ph31
  %.11929 = phi ptr [ %.119, %.lr.ph31 ], [ %.11927, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.11929, i64 26 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, 32767
  store i16 %i.x, ptr %i.v, align 2
  %.119 = load ptr, ptr %.11929, align 8          ; 2 uses
  %.not = icmp eq ptr %.119, null
  br i1 %.not, label %._crit_edge32.loopexit, label %.lr.ph31, !llvm.loop !43

._crit_edge32.loopexit:                           ; preds = %.lr.ph31
  %.pre40.a = load i32, ptr %i.d, align 4
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %bb.c
  %i.y = phi i32 [ %.pre40.a, %._crit_edge32.loopexit ], [ %i.q, %bb.c ] ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next38, %i.z
  br i1 %i.aa, label %bb.c, label %._crit_edge35, !llvm.loop !44

._crit_edge35:                                    ; preds = %._crit_edge32, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ExecReScanHash(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ExecReScan(ptr noundef nonnull %i.b) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @ExecReScan(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ExecHashGetSkewBucket(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.017 = and i32 %1, %i.f                        ; 2 uses
  %i.i = sext i32 %.017 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.q, %bb.c ], [ %i.k, %bb.b ]
  %.019 = phi i32 [ %.0, %bb.c ], [ %.017, %bb.b ] ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %.not15 = icmp eq i32 %i.m, %1
  br i1 %.not15, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = add i32 %.019, 1
  %.0 = and i32 %i.n, %i.f                        ; 2 uses
  %i.o = sext i32 %.0 to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !1

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %bb.a
  %.013 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ %.019, %.lr.ph ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ExecHashBuildNullTupleStore(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.b, ptr @CurrentMemoryContext, align 8
  %i.d = load i32, ptr @work_mem, align 4
  %i.e = sdiv i32 %i.d, 16
  %i.f = tail call ptr @tuplestore_begin_heap(i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %i.e) #15
  store ptr %i.c, ptr @CurrentMemoryContext, align 8
  ret ptr %i.f
}

declare ptr @tuplestore_begin_heap(i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ExecHashEstimate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %i.d to i64
  %i.g = tail call i64 @mul_size(i64 noundef %i.f, i64 noundef 24) #15
  %i.h = tail call i64 @add_size(i64 noundef %i.g, i64 noundef 8) #15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.h, 31
  %i.l = and i64 %i.k, -32
  %i.m = tail call i64 @add_size(i64 noundef %i.j, i64 noundef %i.l) #15
  store i64 %i.m, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call i64 @add_size(i64 noundef %i.o, i64 noundef 1) #15
  store i64 %i.p, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare i64 @mul_size(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @add_size(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ExecHashInitializeDSM(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %i.d to i64
  %i.g = mul nsw i64 %i.f, 24
  %i.h = add nsw i64 %i.g, 8                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @shm_toc_allocate(ptr noundef %i.j, i64 noundef %i.h) #15 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.k, i8 0, i64 %i.h, i1 false)
  %i.m = load i32, ptr %i.c, align 4
  %i.n = load ptr, ptr %i.l, align 8
  store i32 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %i.l, align 8
  tail call void @shm_toc_insert(ptr noundef %i.o, i64 noundef %i.t, ptr noundef %i.u) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

declare ptr @shm_toc_allocate(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare void @shm_toc_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ExecHashInitializeWorker(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = tail call ptr @shm_toc_lookup(ptr noundef %i.d, i64 noundef %i.i, i1 noundef zeroext false) #15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr @ParallelWorkerNumber, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.n, ptr %i.o, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
end_hunk_0
