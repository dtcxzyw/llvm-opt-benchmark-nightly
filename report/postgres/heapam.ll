Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/heapam?download=true
inline.NumInlined: 561
inline.NumDeleted: 108
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@heap_tuple_needs_eventual_freeze:bb.a

bb.b:                                             ; preds = %HeapTupleHeaderGetXmin.exit.thread
  %.not12 = icmp eq i32 %.val, 0
  br i1 %.not12, label %bb.d, label %bb.f

bb.c:                                             ; preds = %HeapTupleHeaderGetXmin.exit.thread
  %i.g = icmp ugt i32 %.val, 2
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not13 = icmp ult i16 %.val.i, 16384
  br i1 %.not13, label %bb.e, label %HeapTupleHeaderGetXvac.exit

HeapTupleHeaderGetXvac.exit:                      ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp ugt i32 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %HeapTupleHeaderGetXvac.exit, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %HeapTupleHeaderGetXvac.exit, %bb.c, %HeapTupleHeaderGetXmin.exit, %bb.b, %bb.e
  %.1 = phi i1 [ true, %HeapTupleHeaderGetXmin.exit ], [ true, %bb.c ], [ false, %bb.e ], [ true, %bb.b ], [ true, %HeapTupleHeaderGetXvac.exit ]
  ret i1 %.1
}

declare zeroext i1 @MultiXactIdPrecedes(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @HeapTupleHeaderAdvanceConflictHorizon(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %.val.i = load i16, ptr %i.b, align 4           ; 3 uses
  %i.c = and i16 %.val.i, 768
  %i.d = icmp eq i16 %i.c, 768
  br i1 %i.d, label %HeapTupleHeaderGetXmin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val2.i = load i32, ptr %0, align 4
  br label %HeapTupleHeaderGetXmin.exit

HeapTupleHeaderGetXmin.exit:                      ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %.val2.i, %bb.b ], [ 2, %bb.a ] ; 3 uses
  %i.f = and i16 %.val.i, 6272
  %or.cond7.i = icmp eq i16 %i.f, 4096
  %i.g = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.g, align 4         ; 2 uses
  br i1 %or.cond7.i, label %bb.c, label %HeapTupleHeaderGetUpdateXid.exit

bb.c:                                             ; preds = %HeapTupleHeaderGetXmin.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.h = call i32 @GetMultiXactIdMembers(i32 noundef %.val.i.i, ptr noundef nonnull %i.a, i1 noundef zeroext false, i1 noundef zeroext false) #12 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader.i.i.i, label %HeapTupleGetUpdateXid.exit.i

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.h to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %bb.e, !llvm.loop !2

bb.e:                                             ; preds = %bb.d, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp ugt i32 %i.m, 3
  br i1 %i.n, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.o = load i32, ptr %i.k, align 4
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.f
  %.08.i.i.i = phi i32 [ %i.o, %bb.f ], [ 0, %bb.d ]
  call void @pfree(ptr noundef nonnull %i.j) #12
  br label %HeapTupleGetUpdateXid.exit.i

HeapTupleGetUpdateXid.exit.i:                     ; preds = %.loopexit.i.i.i, %bb.c
  %.1.i.i.i = phi i32 [ %.08.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.pre = load i16, ptr %i.b, align 4
  br label %HeapTupleHeaderGetUpdateXid.exit

HeapTupleHeaderGetUpdateXid.exit:                 ; preds = %HeapTupleHeaderGetXmin.exit, %HeapTupleGetUpdateXid.exit.i
  %i.p = phi i16 [ %.pre, %HeapTupleGetUpdateXid.exit.i ], [ %.val.i, %HeapTupleHeaderGetXmin.exit ] ; 3 uses
  %.0.i = phi i32 [ %.1.i.i.i, %HeapTupleGetUpdateXid.exit.i ], [ %.val.i.i, %HeapTupleHeaderGetXmin.exit ] ; 6 uses
  %.not.i = icmp ult i16 %i.p, 16384
  br i1 %.not.i, label %HeapTupleHeaderGetXvac.exit.thread, label %bb.g

bb.g:                                             ; preds = %HeapTupleHeaderGetUpdateXid.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 4              ; 4 uses
  %i.s = load i32, ptr %1, align 4                ; 3 uses
  %i.t = icmp ugt i32 %i.s, 2
  %i.u = icmp ugt i32 %i.r, 2
  %or.cond.i = and i1 %i.u, %i.t
  %i.v = sub i32 %i.s, %i.r
  %i.w = icmp slt i32 %i.v, 0
  %i.x = icmp ult i32 %i.s, %i.r
  %.0.i20 = select i1 %or.cond.i, i1 %i.w, i1 %i.x
  br i1 %.0.i20, label %bb.h, label %HeapTupleHeaderGetXvac.exit.thread

bb.h:                                             ; preds = %bb.g
  store i32 %i.r, ptr %1, align 4
  %.val.pre = load i16, ptr %i.b, align 4
  br label %HeapTupleHeaderGetXvac.exit.thread

HeapTupleHeaderGetXvac.exit.thread:               ; preds = %HeapTupleHeaderGetUpdateXid.exit, %bb.g, %bb.h
  %.val = phi i16 [ %i.p, %HeapTupleHeaderGetUpdateXid.exit ], [ %i.p, %bb.g ], [ %.val.pre, %bb.h ] ; 2 uses
  %i.y = and i16 %.val, 256
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %HeapTupleHeaderGetXvac.exit.thread
  %i.z = and i16 %.val, 512
  %.not24 = icmp eq i16 %i.z, 0
  br i1 %.not24, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.aa = call zeroext i1 @TransactionIdDidCommit(i32 noundef %i.e) #12
  %.not16 = icmp ne i32 %.0.i, %i.e
  %or.cond.not = select i1 %i.aa, i1 %.not16, i1 false
  br i1 %or.cond.not, label %bb.l, label %bb.n

bb.k:                                             ; preds = %HeapTupleHeaderGetXvac.exit.thread
  %.not16.old = icmp eq i32 %.0.i, %i.e
  br i1 %.not16.old, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ab = load i32, ptr %1, align 4               ; 3 uses
  %i.ac = icmp ugt i32 %.0.i, 2
  %i.ad = icmp ugt i32 %i.ab, 2
  %or.cond.i21 = and i1 %i.ac, %i.ad
  %i.ae = sub i32 %.0.i, %i.ab
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = icmp ugt i32 %.0.i, %i.ab
  %.0.i22 = select i1 %or.cond.i21, i1 %i.af, i1 %i.ag
  br i1 %.0.i22, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.0.i, ptr %1, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @heap_index_delete_tuples(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %2 = alloca %struct.SnapshotData, align 8       ; 5 uses
  %3 = alloca %struct.ItemPointerData, align 2    ; 5 uses
  %4 = alloca %struct.HeapTupleData, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  store i32 6, ptr %2, align 8
  %i.e = tail call ptr @GlobalVisTestFor(ptr noundef %0) #12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %1, i64 20         ; 10 uses
  %.val146 = load i32, ptr %i.g, align 4          ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 24         ; 9 uses
  %.val147 = load ptr, ptr %i.h, align 8          ; 4 uses
  %wide.trip.count.i = sext i32 %.val146 to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %bb.a
  %indvars.iv8.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next9.i, %._crit_edge.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @__const.index_delete_sort.gaps, i64 %indvars.iv8.i
  %i.j = load i32, ptr %i.i, align 4              ; 4 uses
  %i.k = icmp slt i32 %i.j, %.val146
  br i1 %i.k, label %.lr.ph5.preheader.i, label %._crit_edge.i

.lr.ph5.preheader.i:                              ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  br label %.lr.ph.i.a

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.b
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1 ; 2 uses
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 9
  br i1 %exitcond11.not.i, label %index_delete_sort.exit, label %bb.b, !llvm.loop !38

.lr.ph.i.a:                                       ; preds = %.critedge.i, %.lr.ph5.preheader.i
  %indvars.iv.i = phi i64 [ %i.l, %.lr.ph5.preheader.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.val147, i64 %indvars.iv.i
  %i.n = load i64, ptr %i.m, align 2              ; 3 uses
  %.sroa.6.0.extract.shift.i = lshr i64 %i.n, 32
  %.sroa.6.0.extract.trunc.i = trunc i64 %.sroa.6.0.extract.shift.i to i16
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %5 = tail call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 16) ; 2 uses
  %6 = trunc nsw i64 %indvars.iv.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.a
  %.02.i = phi i32 [ %6, %.lr.ph.i.a ], [ %i.p, %bb.e ] ; 2 uses
  %i.p = sub i32 %.02.i, %i.j                     ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %.val147, i64 %i.q ; 4 uses
  %.val25.i.i = load i16, ptr %i.r, align 2
  %i.s = getelementptr i8, ptr %i.r, i64 2
  %.val26.i.i = load i16, ptr %i.s, align 2
  %i.t = zext i16 %.val25.i.i to i32
  %i.u = shl nuw i32 %i.t, 16
  %i.v = zext i16 %.val26.i.i to i32
  %i.w = or disjoint i32 %i.u, %i.v               ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, %5
  %i.x = icmp ult i32 %i.w, %5
  %i.y = select i1 %i.x, i32 -1, i32 1
  br i1 %.not.i.i, label %bb.d, label %index_delete_sort_cmp.exit.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.r, i64 4
  %.val28.i.i = load i16, ptr %i.z, align 2
  %spec.select.i.i = tail call i32 @llvm.ucmp.i32.i16(i16 %.val28.i.i, i16 %.sroa.6.0.extract.trunc.i)
  br label %index_delete_sort_cmp.exit.i

index_delete_sort_cmp.exit.i:                     ; preds = %bb.d, %bb.c
  %.2.i.i = phi i32 [ %i.y, %bb.c ], [ %spec.select.i.i, %bb.d ]
  %i.aa = icmp sgt i32 %.2.i.i, -1
  %i.ab = sext i32 %.02.i to i64                  ; 2 uses
  br i1 %i.aa, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %index_delete_sort_cmp.exit.i
  %i.ac = getelementptr inbounds [8 x i8], ptr %.val147, i64 %i.ab
  %i.ad = load i64, ptr %i.r, align 2
  store i64 %i.ad, ptr %i.ac, align 2
  %.not.i = icmp slt i32 %i.p, %i.j
  br i1 %.not.i, label %.critedge.i, label %bb.c, !llvm.loop !39

.critedge.i:                                      ; preds = %bb.e, %index_delete_sort_cmp.exit.i
  %.pre-phi = phi i64 [ %i.ab, %index_delete_sort_cmp.exit.i ], [ %i.q, %bb.e ]
  %i.ae = getelementptr inbounds [8 x i8], ptr %.val147, i64 %.pre-phi
  store i64 %i.n, ptr %i.ae, align 2
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i.a, !llvm.loop !40

index_delete_sort.exit:                           ; preds = %._crit_edge.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ag = load i8, ptr %i.af, align 4, !range !9, !noundef !10
  %i.ah = trunc nuw i8 %i.ag to i1
  %.pre283 = load i32, ptr %i.g, align 4          ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.p

bb.f:                                             ; preds = %index_delete_sort.exit
  %i.ai = sext i32 %.pre283 to i64
  %i.aj = tail call ptr @palloc_mul(i64 noundef 6, i64 noundef %i.ai) #12 ; 10 uses
  %i.ak = load i32, ptr %i.g, align 4
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i150, label %._crit_edge.i148

.lr.ph.i150:                                      ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.g

.preheader.i:                                     ; preds = %bb.l
  %i.an = icmp sgt i32 %.1.i, 0
  br i1 %i.an, label %.lr.ph78.preheader.i, label %._crit_edge.i148

.lr.ph78.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count.i154 = zext nneg i32 %.1.i to i64
  br label %.lr.ph78.i

bb.g:                                             ; preds = %bb.l, %.lr.ph.i150
  %indvars.iv.i151 = phi i64 [ 0, %.lr.ph.i150 ], [ %indvars.iv.next.i153, %bb.l ] ; 3 uses
  %.06675.i = phi i32 [ 0, %.lr.ph.i150 ], [ %.1.i, %bb.l ] ; 4 uses
  %.06774.i = phi i32 [ -1, %.lr.ph.i150 ], [ %.168.i, %bb.l ] ; 2 uses
  %i.ao = load ptr, ptr %i.h, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i151 ; 3 uses
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr inbounds [6 x i8], ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !range !9, !noundef !10
  %i.ax = trunc nuw i8 %i.aw to i1
  %.val71.i = load i16, ptr %i.ap, align 2
  %i.ay = getelementptr i8, ptr %i.ap, i64 2
  %.val72.i = load i16, ptr %i.ay, align 2
  %i.az = zext i16 %.val71.i to i32
  %i.ba = shl nuw i32 %i.az, 16
  %i.bb = zext i16 %.val72.i to i32
  %i.bc = or disjoint i32 %i.ba, %i.bb            ; 2 uses
  %.not.i152 = icmp eq i32 %.06774.i, %i.bc
  br i1 %.not.i152, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %.06675.i, 1
  %i.be = trunc i64 %indvars.iv.i151 to i16
  %i.bf = sext i32 %.06675.i to i64
  %i.bg = getelementptr inbounds [6 x i8], ptr %i.aj, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i16 %i.be, ptr %i.bh, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 1, ptr %i.bi, align 2
  store i16 0, ptr %i.bg, align 2
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bj = add i32 %.06675.i, -1
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [6 x i8], ptr %i.aj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = add i16 %i.bn, 1
  store i16 %i.bo, ptr %i.bm, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.168.i = phi i32 [ %i.bc, %bb.h ], [ %.06774.i, %bb.i ]
  %.1.i = phi i32 [ %i.bd, %bb.h ], [ %.06675.i, %bb.i ] ; 6 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = add i32 %.1.i, -1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [6 x i8], ptr %i.aj, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = add i16 %i.bs, 1
  store i16 %i.bt, ptr %i.br, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next.i153 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %i.bu = load i32, ptr %i.g, align 4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next.i153, %i.bv
  br i1 %i.bw, label %bb.g, label %.preheader.i, !llvm.loop !41

._crit_edge.i148:                                 ; preds = %bb.o, %.preheader.i, %bb.f
  %i.bx = phi i1 [ false, %bb.f ], [ false, %.preheader.i ], [ true, %bb.o ]
  %.066.lcssa96.i = phi i32 [ 0, %bb.f ], [ %.1.i, %.preheader.i ], [ %.1.i, %bb.o ] ; 3 uses
  %i.by = sext i32 %.066.lcssa96.i to i64
  tail call void @pg_qsort(ptr noundef %i.aj, i64 noundef %i.by, i64 noundef 6, ptr noundef nonnull @bottomup_sort_and_shrink_cmp) #12
  %i.bz = load i32, ptr %i.g, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 3
  %i.cc = tail call ptr @palloc(i64 noundef %i.cb) #12 ; 5 uses
  %i.cd = tail call i32 @llvm.smin.i32(i32 %.066.lcssa96.i, i32 6) ; 3 uses
  %i.ce = load ptr, ptr %i.h, align 8             ; 2 uses
  br i1 %i.bx, label %.lr.ph.preheader.i.i, label %bottomup_sort_and_shrink.exit

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i148
  %wide.trip.count.i.i = zext i32 %i.cd to i64    ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph._crit_edge.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph._crit_edge.i.i ] ; 3 uses
  %.01828.i.i = phi i64 [ -1, %.lr.ph.preheader.i.i ], [ %.pre.i.i, %.lr.ph._crit_edge.i.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [6 x i8], ptr %i.aj, i64 %indvars.iv.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = sext i16 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.ci ; 2 uses
  %.val.i.i = load i16, ptr %i.cj, align 2
  %i.ck = getelementptr i8, ptr %i.cj, i64 2
  %.val22.i.i = load i16, ptr %i.ck, align 2
  %i.cl = zext i16 %.val.i.i to i64
  %i.cm = shl nuw nsw i64 %i.cl, 16
  %i.cn = zext i16 %.val22.i.i to i64
  %.pre.i.i = or disjoint i64 %i.cm, %i.cn        ; 3 uses
  %.not.i.i149 = icmp eq i64 %.01828.i.i, -1
  br i1 %.not.i.i149, label %.lr.ph._crit_edge.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.co = add nsw i64 %.01828.i.i, -3
  %i.cp = icmp sgt i64 %i.co, %.pre.i.i
  %i.cq = add nuw nsw i64 %.01828.i.i, 3
  %i.cr = icmp slt i64 %i.cq, %.pre.i.i
  %or.cond.i.i = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond.i.i, label %._crit_edge.loopexit.split.loop.exit.i.i, label %.lr.ph._crit_edge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bottomup_nblocksfavorable.exit.i, label %.lr.ph.i.i, !llvm.loop !42

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.m
  %indvars35.le.i.i = trunc i64 %indvars.iv.i.i to i32
  br label %bottomup_nblocksfavorable.exit.i

bottomup_nblocksfavorable.exit.i:                 ; preds = %.lr.ph._crit_edge.i.i, %._crit_edge.loopexit.split.loop.exit.i.i
  %.017.lcssa.i.i = phi i32 [ %indvars35.le.i.i, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.cd, %.lr.ph._crit_edge.i.i ]
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.cs = icmp eq i32 %.066.lcssa96.i, 1
  br i1 %i.cs, label %.lr.ph81.i.epil.preheader, label %bottomup_nblocksfavorable.exit.i.new

bottomup_nblocksfavorable.exit.i.new:             ; preds = %bottomup_nblocksfavorable.exit.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %.lr.ph81.i

.lr.ph78.i:                                       ; preds = %bb.o, %.lr.ph78.preheader.i
  %indvars.iv86.i = phi i64 [ 0, %.lr.ph78.preheader.i ], [ %indvars.iv.next87.i, %bb.o ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [6 x i8], ptr %i.aj, i64 %indvars.iv86.i ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2            ; 3 uses
  %i.cv = icmp slt i16 %i.cu, 5
  br i1 %i.cv, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph78.i
  %i.cw = zext nneg i16 %i.cu to i32              ; 2 uses
  %i.cx = tail call range(i32 1, 16) i32 @llvm.ctpop.i32(i32 range(i32 -32768, 32768) %i.cw)
  %i.cy = icmp samesign ult i32 %i.cx, 2
  %i.cz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 -32768, 32768) %i.cw, i1 true)
  %i.da = xor i32 %i.cz, 31
  %i.db = shl nuw nsw i32 2, %i.da
  %i.dc = trunc nuw i32 %i.db to i16
end_hunk_0
