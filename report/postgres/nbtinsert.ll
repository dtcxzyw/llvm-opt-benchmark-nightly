Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtinsert?download=true
inline.NumInlined: 180
inline.NumDeleted: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_bt_getstackbuf:bb.a
  store i32 %.064.ph, ptr %2, align 8
  store i16 %.1.lcssa110.sink, ptr %i.b, align 4
  br label %.thread

.thread:                                          ; preds = %.loopexit, %.thread.sink.split
  %.369.ph = phi i32 [ %i.e, %.thread.sink.split ], [ 0, %.loopexit ]
  ret i32 %.369.ph
}

declare i32 @ReadBuffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @_bt_conditionallockbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_bt_checkpage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @PageGetFreeSpace(ptr noundef) local_unnamed_addr #2

declare i32 @_bt_compare(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare ptr @_bt_search(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @smgropen(i64, i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @smgrpin(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @_bt_binsrch_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ItemPointerCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @table_index_fetch_tuple_check(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @index_deform_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BuildIndexValueDescription(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errtableconstraint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @BufferBeginSetHintBits(i32 noundef) local_unnamed_addr #2

declare void @BufferFinishSetHintBits(i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @_bt_relandgetbuf(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare void @_bt_check_third_page(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_stepright(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.e = xor i32 %i.b, -1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @BufferBlocks, align 8
  %i.j = add nsw i32 %i.b, -1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.o = load i16, ptr %i.n, align 8
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  br label %.outer

.outer:                                           ; preds = %bb.h, %BufferGetPage.exit
  %.025.ph = phi i32 [ %.lcssa, %bb.h ], [ 0, %BufferGetPage.exit ]
  %.0.ph = phi i32 [ %i.bj, %bb.h ], [ %i.s, %BufferGetPage.exit ] ; 2 uses
  %i.t = tail call i32 @_bt_relandgetbuf(ptr noundef %0, i32 noundef %.025.ph, i32 noundef %.0.ph, i32 noundef 3) #8 ; 5 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.outer
  %i.v = load ptr, ptr @BufferBlocks, align 8
  %i.w = add nsw i32 %i.t, -1
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 13
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  br label %BufferGetPage.exit29.peel

bb.e:                                             ; preds = %.outer
  %i.aa = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ab = xor i32 %i.t, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %BufferGetPage.exit29.peel

BufferGetPage.exit29.peel:                        ; preds = %bb.e, %bb.d
  %.0.i.i28.peel = phi ptr [ %i.ae, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i28.peel, i64 16
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i28.peel, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = and i32 %i.al, 128
  %.not.peel = icmp eq i32 %i.am, 0
  br i1 %.not.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %BufferGetPage.exit29.peel, %BufferGetPage.exit29
  %.sink = phi i32 [ %i.an, %BufferGetPage.exit29 ], [ %i.t, %BufferGetPage.exit29.peel ]
  tail call void @_bt_finish_split(ptr noundef %0, ptr noundef %1, i32 noundef %.sink, ptr noundef %3)
  %i.an = tail call i32 @_bt_relandgetbuf(ptr noundef %0, i32 noundef 0, i32 noundef %.0.ph, i32 noundef 3) #8 ; 5 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.peel.next
  %i.ap = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.aq = xor i32 %i.an, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  br label %BufferGetPage.exit29

bb.g:                                             ; preds = %.peel.next
  %i.au = load ptr, ptr @BufferBlocks, align 8
  %i.av = add nsw i32 %i.an, -1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  br label %BufferGetPage.exit29

BufferGetPage.exit29:                             ; preds = %bb.f, %bb.g
  %.0.i.i28 = phi ptr [ %i.at, %bb.f ], [ %i.ay, %bb.g ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 16
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i28, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = zext i16 %i.be to i32                   ; 2 uses
  %i.bg = and i32 %i.bf, 128
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %.loopexit, label %.peel.next, !llvm.loop !16

.loopexit:                                        ; preds = %BufferGetPage.exit29, %BufferGetPage.exit29.peel
  %.lcssa35 = phi ptr [ %i.ai, %BufferGetPage.exit29.peel ], [ %i.bc, %BufferGetPage.exit29 ]
  %.lcssa34 = phi i32 [ %i.al, %BufferGetPage.exit29.peel ], [ %i.bf, %BufferGetPage.exit29 ]
  %.lcssa = phi i32 [ %i.t, %BufferGetPage.exit29.peel ], [ %i.an, %BufferGetPage.exit29 ] ; 2 uses
  %i.bh = and i32 %.lcssa34, 20
  %.not27 = icmp eq i32 %i.bh, 0
  br i1 %.not27, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa35, i64 4
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %.outer

bb.i:                                             ; preds = %bb.h
  %i.bl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.bo) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1078, ptr noundef nonnull @__func__._bt_stepright) #8
  unreachable

bb.j:                                             ; preds = %.loopexit
  %i.bq = load i32, ptr %i.a, align 8
  tail call void @_bt_relbuf(ptr noundef %0, i32 noundef %i.bq) #8
  store i32 %.lcssa, ptr %i.a, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.br, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_delete_or_dedup_one_page(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.TM_IndexDeleteOp, align 8   ; 10 uses
  %i.a = alloca [408 x i16], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8              ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp slt i32 %i.c, 0                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.h = xor i32 %i.c, -1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @BufferBlocks, align 8
  %i.m = add nsw i32 %i.c, -1
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 13
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.p, %bb.c ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.r = load i16, ptr %i.q, align 8
  %i.s = zext i16 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  %i.x = select i1 %i.w, i16 1, i16 2             ; 11 uses
  %i.y = getelementptr i8, ptr %.0.i.i, i64 12
  %.val = load i16, ptr %i.y, align 4             ; 2 uses
  %i.z = icmp ult i16 %.val, 25
  %i.aa = zext i16 %.val to i32
  %i.ab = add nuw nsw i32 %i.aa, 262120
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = trunc i32 %i.ac to i16
  %.0.i = select i1 %i.z, i16 0, i16 %i.ad        ; 5 uses
  %.not5361 = icmp ugt i16 %i.x, %.0.i
  br i1 %.not5361, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %BufferGetPage.exit
  %8 = getelementptr i8, ptr %.0.i.i, i64 20      ; 2 uses
  %9 = add i16 %.0.i, 1
  %10 = add nuw nsw i16 %i.x, 1
  %11 = tail call i16 @llvm.umax.i16(i16 %9, i16 %10)
  %12 = xor i16 %i.x, -1
  %13 = add i16 %11, %12                          ; 2 uses
  %14 = zext i16 %13 to i32
  %15 = add nuw nsw i32 %14, 1                    ; 2 uses
  %min.iters.check = icmp ult i16 %13, 15
  br i1 %min.iters.check, label %.lr.ph.a, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %16 = add i16 %.0.i, 1
  %17 = add nuw nsw i16 %i.x, 1
  %umax = tail call i16 @llvm.umax.i16(i16 %16, i16 %17)
  %18 = add i16 %umax, -1
  %19 = icmp ult i16 %18, %i.x
  br i1 %19, label %.lr.ph.a, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %15, 131068                    ; 3 uses
  %20 = trunc i32 %n.vec to i16
  %21 = or disjoint i16 %i.x, %20
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.x, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i16> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %conditional.iv = phi i32 [ 0, %vector.ph ], [ %conditional.step, %vector.body ] ; 2 uses
  %22 = trunc i32 %index to i16
  %23 = or disjoint i16 %i.x, %22
  %24 = zext i16 %23 to i64
  %25 = getelementptr [4 x i8], ptr %8, i64 %24
  %wide.load = load <4 x i32>, ptr %25, align 4
  %26 = and <4 x i32> %wide.load, splat (i32 98304)
  %27 = icmp eq <4 x i32> %26, splat (i32 98304)  ; 2 uses
  %28 = sext i32 %conditional.iv to i64
  %29 = getelementptr inbounds [2 x i8], ptr %i.a, i64 %28
  call void @llvm.masked.compressstore.v4i16.p0(<4 x i16> %vec.ind, ptr nonnull align 2 %29, <4 x i1> %27)
  %30 = bitcast <4 x i1> %27 to i4
  %31 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %30)
  %32 = zext nneg i4 %31 to i32
  %conditional.step = add i32 %conditional.iv, %32 ; 3 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i16> %vec.ind, splat (i16 4)
  %33 = icmp eq i32 %index.next, %n.vec
  br i1 %33, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %15, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.063.ph = phi i16 [ %i.x, %vector.scevcheck ], [ %i.x, %.lr.ph ], [ %21, %middle.block ]
  %.04962.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %conditional.step, %middle.block ]
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.a, %bb.f
  %.063 = phi i16 [ %i.am, %bb.f ], [ %.063.ph, %.lr.ph.a ] ; 3 uses
  %.04962 = phi i32 [ %.1, %bb.f ], [ %.04962.ph, %.lr.ph.a ] ; 3 uses
  %i.ae = zext i16 %.063 to i64
  %i.af = getelementptr [4 x i8], ptr %8, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 98304
  %i.ai = icmp eq i32 %i.ah, 98304
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = add i32 %.04962, 1
  %i.ak = sext i32 %.04962 to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.ak
  store i16 %.063, ptr %i.al, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.aj, %bb.e ], [ %.04962, %bb.d ] ; 2 uses
  %i.am = add i16 %.063, 1                        ; 2 uses
  %.not53 = icmp ugt i16 %i.am, %.0.i
  br i1 %.not53, label %._crit_edge, label %bb.d, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.f, %middle.block
  %.1.lcssa = phi i32 [ %conditional.step, %middle.block ], [ %.1, %bb.f ] ; 3 uses
  %i.an = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.an, label %bb.g, label %._crit_edge.thread

bb.g:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.aq = xor i32 %i.c, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8
  br label %BufferGetPage.exit.i

bb.i:                                             ; preds = %bb.g
  %i.au = load ptr, ptr @BufferBlocks, align 8
  %i.av = add nsw i32 %i.c, -1
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi ptr [ %i.at, %bb.h ], [ %i.ay, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.az = add nuw i32 %.1.lcssa, 1                ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.ba) #8 ; 2 uses
  %.val63.i.i = load i16, ptr %i.ao, align 2
  %i.bc = getelementptr i8, ptr %i.ao, i64 2
  %.val64.i.i = load i16, ptr %i.bc, align 2
  %i.bd = zext i16 %.val63.i.i to i32
  %i.be = shl nuw i32 %i.bd, 16
  %i.bf = zext i16 %.val64.i.i to i32
  %i.bg = or disjoint i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.bb, align 4
  %i.bh = getelementptr i8, ptr %.0.i.i.i, i64 20 ; 2 uses
  %wide.trip.count77.i.i = zext nneg i32 %.1.lcssa to i64
  br label %bb.o

bb.j:                                             ; preds = %.loopexit.i.i
  %i.bi = sext i32 %.255.i.i to i64               ; 2 uses
  tail call void @pg_qsort(ptr noundef %.352.i.i, i64 noundef %i.bi, i64 noundef 4, ptr noundef nonnull @_bt_blk_cmp) #8
  %i.bj = icmp ult i32 %.255.i.i, 2
  br i1 %i.bj, label %_bt_deadblocks.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.j, %bb.m
  %.02.i.i.i = phi i64 [ %.1.i.i.i, %bb.m ], [ 0, %bb.j ] ; 3 uses
  %.0231.i.i.i = phi i64 [ %i.bt, %bb.m ], [ 1, %bb.j ] ; 4 uses
  %i.bk = shl i64 %.0231.i.i.i, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.bk
  %i.bm = shl i64 %.02.i.i.i, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.bm
  %i.bo = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4
  %.not.i.i.i = icmp eq i32 %i.bo, %i.bp
  br i1 %.not.i.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i.i
  %i.bq = add i64 %.02.i.i.i, 1                   ; 3 uses
  %.not29.i.i.i = icmp eq i64 %i.bq, %.0231.i.i.i
  br i1 %.not29.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = shl i64 %i.bq, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.br
  store i32 %i.bo, ptr %i.bs, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.preheader.i.i.i
  %.1.i.i.i = phi i64 [ %i.bq, %bb.l ], [ %.0231.i.i.i, %bb.k ], [ %.02.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.bt = add nuw i64 %.0231.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bt, %i.bi
  br i1 %exitcond.not.i.i.i, label %bb.n, label %.preheader.i.i.i, !llvm.loop !19

bb.n:                                             ; preds = %bb.m
  %i.bu = trunc i64 %.1.i.i.i to i32
  %i.bv = add i32 %i.bu, 1
  br label %_bt_deadblocks.exit.i

bb.o:                                             ; preds = %.loopexit.i.i, %BufferGetPage.exit.i
  %indvars.iv74.i.i = phi i64 [ 0, %BufferGetPage.exit.i ], [ %indvars.iv.next75.i.i, %.loopexit.i.i ] ; 2 uses
  %.071.i.i = phi i32 [ %i.az, %BufferGetPage.exit.i ], [ %.3.i.i, %.loopexit.i.i ] ; 6 uses
  %.04969.i.i = phi ptr [ %i.bb, %BufferGetPage.exit.i ], [ %.352.i.i, %.loopexit.i.i ] ; 4 uses
  %.05368.i.i = phi i32 [ 1, %BufferGetPage.exit.i ], [ %.255.i.i, %.loopexit.i.i ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv74.i.i
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = zext i16 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %i.bh, i64 %i.by
  %.val.i.i = load i32, ptr %i.bz, align 4
  %i.ca = and i32 %.val.i.i, 32767
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.cb ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = and i16 %i.ce, 8192
  %i.cg = icmp eq i16 %i.cf, 0
  br i1 %i.cg, label %BTreeTupleIsPosting.exit.thread.i.i, label %BTreeTupleIsPosting.exit.i.i

BTreeTupleIsPosting.exit.i.i:                     ; preds = %bb.o
  %i.ch = getelementptr i8, ptr %i.cc, i64 4
  %.val.i.i.i = load i16, ptr %i.ch, align 2      ; 3 uses
  %i.ci = and i16 %.val.i.i.i, 8192
  %.not.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.i, label %BTreeTupleIsPosting.exit.thread.i.i, label %bb.r

BTreeTupleIsPosting.exit.thread.i.i:              ; preds = %BTreeTupleIsPosting.exit.i.i, %bb.o
  %i.cj = add i32 %.05368.i.i, 1                  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, %.071.i.i
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %BTreeTupleIsPosting.exit.thread.i.i
  %i.cl = shl i32 %.071.i.i, 1                    ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = shl nsw i64 %i.cm, 2
  %i.co = tail call ptr @repalloc(ptr noundef %.04969.i.i, i64 noundef %i.cn) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %BTreeTupleIsPosting.exit.thread.i.i
  %.150.i.i = phi ptr [ %i.co, %bb.p ], [ %.04969.i.i, %BTreeTupleIsPosting.exit.thread.i.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.cl, %bb.p ], [ %.071.i.i, %BTreeTupleIsPosting.exit.thread.i.i ]
  %.val61.i.i = load i16, ptr %i.cc, align 2
  %i.cp = getelementptr i8, ptr %i.cc, i64 2
  %.val62.i.i = load i16, ptr %i.cp, align 2
  %i.cq = zext i16 %.val61.i.i to i32
  %i.cr = shl nuw i32 %i.cq, 16
  %i.cs = zext i16 %.val62.i.i to i32
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = sext i32 %.05368.i.i to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.150.i.i, i64 %i.cu
  store i32 %i.ct, ptr %i.cv, align 4
  br label %.loopexit.i.i

bb.r:                                             ; preds = %BTreeTupleIsPosting.exit.i.i
  %i.cw = and i16 %.val.i.i.i, 4095               ; 4 uses
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = add i32 %.05368.i.i, %i.cx              ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, %.071.i.i
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.da = shl i32 %.071.i.i, 1
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.da, i32 %i.cy) ; 2 uses
  %i.db = sext i32 %..i.i to i64
  %i.dc = shl nsw i64 %i.db, 2
  %i.dd = tail call ptr @repalloc(ptr noundef %.04969.i.i, i64 noundef %i.dc) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.251.i.i = phi ptr [ %i.dd, %bb.s ], [ %.04969.i.i, %bb.r ] ; 6 uses
  %.2.i.i = phi i32 [ %..i.i, %bb.s ], [ %.071.i.i, %bb.r ] ; 3 uses
  %.not72.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not72.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.de = getelementptr i8, ptr %i.cc, i64 2      ; 3 uses
  %wide.trip.count.i.i = zext nneg i16 %i.cw to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.df = icmp eq i16 %i.cw, 1
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4094
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.u ] ; 3 uses
  %.15466.i.i = phi i32 [ %.05368.i.i, %.lr.ph.i.i.new ], [ %i.eg, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.u ]
  %.val.i.i.i.i = load i16, ptr %i.cc, align 2
  %.val2.i.i.i.i = load i16, ptr %i.de, align 2
  %i.dg = zext i16 %.val.i.i.i.i to i64
  %i.dh = shl nuw nsw i64 %i.dg, 16
  %i.di = zext i16 %.val2.i.i.i.i to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw [6 x i8], ptr %i.dk, i64 %indvars.iv.i.i ; 2 uses
  %.val59.i.i = load i16, ptr %i.dl, align 2
  %i.dm = getelementptr i8, ptr %i.dl, i64 2
  %.val60.i.i = load i16, ptr %i.dm, align 2
  %i.dn = zext i16 %.val59.i.i to i32
  %i.do = shl nuw i32 %i.dn, 16
  %i.dp = zext i16 %.val60.i.i to i32
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = add i32 %.15466.i.i, 1
  %i.ds = sext i32 %.15466.i.i to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %.251.i.i, i64 %i.ds
  store i32 %i.dq, ptr %i.dt, align 4
  %.val.i.i.i.i.1 = load i16, ptr %i.cc, align 2
  %.val2.i.i.i.i.1 = load i16, ptr %i.de, align 2
  %i.du = zext i16 %.val.i.i.i.i.1 to i64
  %i.dv = shl nuw nsw i64 %i.du, 16
  %i.dw = zext i16 %.val2.i.i.i.i.1 to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr inbounds nuw [6 x i8], ptr %i.dy, i64 %indvars.iv.i.i ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 6
  %.val59.i.i.1 = load i16, ptr %i.ea, align 2
  %i.eb = getelementptr i8, ptr %i.dz, i64 8
  %.val60.i.i.1 = load i16, ptr %i.eb, align 2
  %i.ec = zext i16 %.val59.i.i.1 to i32
  %i.ed = shl nuw i32 %i.ec, 16
  %i.ee = zext i16 %.val60.i.i.1 to i32
  %i.ef = or disjoint i32 %i.ed, %i.ee
  %i.eg = add i32 %.15466.i.i, 2                  ; 3 uses
  %i.eh = sext i32 %i.dr to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.251.i.i, i64 %i.eh
  store i32 %i.ef, ptr %i.ei, align 4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !20

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.15466.i.i.epil.init = phi i32 [ %.05368.i.i, %.lr.ph.i.i ], [ %i.eg, %.loopexit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i16 %.val.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %.val.i.i.i.i.epil = load i16, ptr %i.cc, align 2
  %.val2.i.i.i.i.epil = load i16, ptr %i.de, align 2
  %i.ej = zext i16 %.val.i.i.i.i.epil to i64
  %i.ek = shl nuw nsw i64 %i.ej, 16
  %i.el = zext i16 %.val2.i.i.i.i.epil to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ek
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  %i.eo = getelementptr inbounds nuw [6 x i8], ptr %i.en, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %.val59.i.i.epil = load i16, ptr %i.eo, align 2
  %i.ep = getelementptr i8, ptr %i.eo, i64 2
  %.val60.i.i.epil = load i16, ptr %i.ep, align 2
  %i.eq = zext i16 %.val59.i.i.epil to i32
  %i.er = shl nuw i32 %i.eq, 16
  %i.es = zext i16 %.val60.i.i.epil to i32
  %i.et = or disjoint i32 %i.er, %i.es
  %i.eu = add i32 %.15466.i.i.epil.init, 1
  %i.ev = sext i32 %.15466.i.i.epil.init to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.251.i.i, i64 %i.ev
  store i32 %i.et, ptr %i.ew, align 4
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.epil.preheader, %.loopexit.i.i.loopexit.unr-lcssa, %bb.t, %bb.q
  %.255.i.i = phi i32 [ %i.cj, %bb.q ], [ %.05368.i.i, %bb.t ], [ %i.eg, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.eu, %.epil.preheader ] ; 4 uses
  %.352.i.i = phi ptr [ %.150.i.i, %bb.q ], [ %.251.i.i, %bb.t ], [ %.251.i.i, %.loopexit.i.i.loopexit.unr-lcssa ], [ %.251.i.i, %.epil.preheader ] ; 8 uses
  %.3.i.i = phi i32 [ %.1.i.i, %bb.q ], [ %.2.i.i, %bb.t ], [ %.2.i.i, %.loopexit.i.i.loopexit.unr-lcssa ], [ %.2.i.i, %.epil.preheader ]
  %indvars.iv.next75.i.i = add nuw nsw i64 %indvars.iv74.i.i, 1 ; 2 uses
  %exitcond78.not.i.i = icmp eq i64 %indvars.iv.next75.i.i, %wide.trip.count77.i.i
  br i1 %exitcond78.not.i.i, label %bb.j, label %bb.o, !llvm.loop !21

_bt_deadblocks.exit.i:                            ; preds = %bb.n, %bb.j
  %.024.i.i.i = phi i32 [ %i.bv, %bb.n ], [ %.255.i.i, %bb.j ] ; 2 uses
  store ptr %0, ptr %7, align 8
  %i.ex = tail call i32 @BufferGetBlockNumber(i32 noundef %i.c) #8
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %i.ex, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i8 0, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 4 uses
  store i32 0, ptr %i.fb, align 4
  %i.fc = tail call ptr @palloc(i64 noundef 10864) #8
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.fc, ptr %i.fd, align 8
  %i.fe = tail call ptr @palloc(i64 noundef 8148) #8
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.fe, ptr %i.ff, align 8
  %i.fg = sext i32 %.024.i.i.i to i64             ; 2 uses
  %.not24.i68.i = icmp eq i32 %.024.i.i.i, 0      ; 2 uses
  %i.fh = zext nneg i16 %i.x to i64
  br label %bb.v

bb.v:                                             ; preds = %bsearch.exit.thread.i, %_bt_deadblocks.exit.i
  %i.fi = phi i32 [ 0, %_bt_deadblocks.exit.i ], [ %i.ih, %bsearch.exit.thread.i ] ; 8 uses
  %indvars.iv96.i = phi i64 [ %i.fh, %_bt_deadblocks.exit.i ], [ %indvars.iv.next97.i, %bsearch.exit.thread.i ] ; 4 uses
  %i.fj = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv96.i ; 3 uses
  %.val.i = load i32, ptr %i.fj, align 4
  %i.fk = and i32 %.val.i, 32767
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fl ; 8 uses
  %i.fn = load ptr, ptr %i.fd, align 8
  %i.fo = sext i32 %i.fi to i64                   ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %i.fo ; 3 uses
  %i.fq = load ptr, ptr %i.ff, align 8
  %i.fr = getelementptr inbounds [6 x i8], ptr %i.fq, i64 %i.fo ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 6
  %i.ft = load i16, ptr %i.fs, align 2
  %i.fu = and i16 %i.ft, 8192
  %i.fv = icmp eq i16 %i.fu, 0
  br i1 %i.fv, label %BTreeTupleIsPosting.exit.thread.i, label %BTreeTupleIsPosting.exit.i

BTreeTupleIsPosting.exit.i:                       ; preds = %bb.v
  %i.fw = getelementptr i8, ptr %i.fm, i64 4
  %.val.i63.i = load i16, ptr %i.fw, align 2      ; 2 uses
  %i.fx = and i16 %.val.i63.i, 8192
  %.not85.i = icmp eq i16 %i.fx, 0
  br i1 %.not85.i, label %BTreeTupleIsPosting.exit.thread.i, label %bb.z

BTreeTupleIsPosting.exit.thread.i:                ; preds = %BTreeTupleIsPosting.exit.i, %bb.v
  %.val61.i = load i16, ptr %i.fm, align 2
  %i.fy = getelementptr i8, ptr %i.fm, i64 2
  %.val62.i = load i16, ptr %i.fy, align 2
  %i.fz = zext i16 %.val61.i to i32
  %i.ga = shl nuw i32 %i.fz, 16
  %i.gb = zext i16 %.val62.i to i32
  %i.gc = or disjoint i32 %i.ga, %i.gb            ; 2 uses
  br i1 %.not24.i68.i, label %bsearch.exit.thread.i, label %.lr.ph.i64.i

.lr.ph.i64.i:                                     ; preds = %BTreeTupleIsPosting.exit.thread.i, %bb.y
  %.021.i.i = phi i64 [ %.1.i66.i, %bb.y ], [ %i.fg, %BTreeTupleIsPosting.exit.thread.i ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.y ], [ 0, %BTreeTupleIsPosting.exit.thread.i ] ; 2 uses
  %i.gd = add i64 %.01620.i.i, %.021.i.i
  %i.ge = lshr i64 %i.gd, 1                       ; 3 uses
  %i.gf = shl i64 %i.ge, 2
  %i.gg = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4            ; 2 uses
  %i.gi = icmp ult i32 %i.gc, %i.gh
  br i1 %i.gi, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i64.i
  %.not.i65.i = icmp eq i32 %i.gc, %i.gh
  br i1 %.not.i65.i, label %bsearch.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gj = add nuw i64 %i.ge, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i64.i
  %.117.i.i = phi i64 [ %i.gj, %bb.x ], [ %.01620.i.i, %.lr.ph.i64.i ] ; 2 uses
  %.1.i66.i = phi i64 [ %.021.i.i, %bb.x ], [ %i.ge, %.lr.ph.i64.i ] ; 2 uses
  %i.gk = icmp ult i64 %.117.i.i, %.1.i66.i
  br i1 %i.gk, label %.lr.ph.i64.i, label %bsearch.exit.thread.i, !llvm.loop !22

bsearch.exit.i:                                   ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.fp, ptr noundef nonnull align 2 dereferenceable(6) %i.fm, i64 6, i1 false)
  %i.gl = trunc i32 %i.fi to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fp, i64 6
  store i16 %i.gl, ptr %i.gm, align 2
  %i.gn = trunc nuw i64 %indvars.iv96.i to i16
  store i16 %i.gn, ptr %i.fr, align 2
  %i.go = load i32, ptr %i.fj, align 4
  %i.gp = and i32 %i.go, 98304
  %i.gq = icmp eq i32 %i.gp, 98304
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fr, i64 2
  %i.gs = zext i1 %i.gq to i8
  store i8 %i.gs, ptr %i.gr, align 2
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fr, i64 3
  store i8 0, ptr %i.gt, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i16 0, ptr %i.gu, align 2
  %i.gv = add i32 %i.fi, 1                        ; 2 uses
  store i32 %i.gv, ptr %i.fb, align 4
  br label %bsearch.exit.thread.i

bb.z:                                             ; preds = %BTreeTupleIsPosting.exit.i
  %i.gw = and i16 %.val.i63.i, 4095               ; 2 uses
  %.not93.i = icmp eq i16 %i.gw, 0
  br i1 %.not93.i, label %bsearch.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.gx = getelementptr i8, ptr %i.fm, i64 2
  br i1 %.not24.i68.i, label %bsearch.exit.thread.i, label %.lr.ph.i69.preheader.preheader.i

.lr.ph.i69.preheader.preheader.i:                 ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i16 %i.gw to i64
  %i.gy = trunc nuw i64 %indvars.iv96.i to i16
  br label %.lr.ph.i69.preheader.i

.lr.ph.i69.preheader.i:                           ; preds = %bsearch.exit76.thread.i, %.lr.ph.i69.preheader.preheader.i
  %i.gz = phi i32 [ %i.fi, %.lr.ph.i69.preheader.preheader.i ], [ %i.ig, %bsearch.exit76.thread.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i69.preheader.preheader.i ], [ %indvars.iv.next.i, %bsearch.exit76.thread.i ] ; 2 uses
  %.05188.i = phi ptr [ %i.fr, %.lr.ph.i69.preheader.preheader.i ], [ %.1.i, %bsearch.exit76.thread.i ] ; 6 uses
  %.05287.i = phi ptr [ %i.fp, %.lr.ph.i69.preheader.preheader.i ], [ %.153.i, %bsearch.exit76.thread.i ] ; 4 uses
  %.val.i.i67.i = load i16, ptr %i.fm, align 2
  %.val2.i.i.i = load i16, ptr %i.gx, align 2
  %i.ha = zext i16 %.val.i.i67.i to i64
  %i.hb = shl nuw nsw i64 %i.ha, 16
  %i.hc = zext i16 %.val2.i.i.i to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  %i.hf = getelementptr inbounds nuw [6 x i8], ptr %i.he, i64 %indvars.iv.i ; 3 uses
  %.val59.i = load i16, ptr %i.hf, align 2
  %i.hg = getelementptr i8, ptr %i.hf, i64 2
  %.val60.i = load i16, ptr %i.hg, align 2
  %i.hh = zext i16 %.val59.i to i32
  %i.hi = shl nuw i32 %i.hh, 16
  %i.hj = zext i16 %.val60.i to i32
  %i.hk = or disjoint i32 %i.hi, %i.hj            ; 2 uses
  br label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.ac, %.lr.ph.i69.preheader.i
  %.021.i70.i = phi i64 [ %.1.i74.i, %bb.ac ], [ %i.fg, %.lr.ph.i69.preheader.i ] ; 2 uses
  %.01620.i71.i = phi i64 [ %.117.i73.i, %bb.ac ], [ 0, %.lr.ph.i69.preheader.i ] ; 2 uses
  %i.hl = add i64 %.01620.i71.i, %.021.i70.i
  %i.hm = lshr i64 %i.hl, 1                       ; 3 uses
  %i.hn = shl i64 %i.hm, 2
  %i.ho = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4            ; 2 uses
  %i.hq = icmp ult i32 %i.hk, %i.hp
  br i1 %i.hq, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i69.i
  %.not.i72.i = icmp eq i32 %i.hk, %i.hp
  br i1 %.not.i72.i, label %bsearch.exit76.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hr = add nuw i64 %i.hm, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i69.i
  %.117.i73.i = phi i64 [ %i.hr, %bb.ab ], [ %.01620.i71.i, %.lr.ph.i69.i ] ; 2 uses
  %.1.i74.i = phi i64 [ %.021.i70.i, %bb.ab ], [ %i.hm, %.lr.ph.i69.i ] ; 2 uses
  %i.hs = icmp ult i64 %.117.i73.i, %.1.i74.i
  br i1 %i.hs, label %.lr.ph.i69.i, label %bsearch.exit76.thread.i, !llvm.loop !22

bsearch.exit76.i:                                 ; preds = %bb.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.05287.i, ptr noundef nonnull align 2 dereferenceable(6) %i.hf, i64 6, i1 false)
  %i.ht = trunc i32 %i.gz to i16
  %i.hu = getelementptr inbounds nuw i8, ptr %.05287.i, i64 6
  store i16 %i.ht, ptr %i.hu, align 2
  store i16 %i.gy, ptr %.05188.i, align 2
  %i.hv = load i32, ptr %i.fj, align 4
  %i.hw = and i32 %i.hv, 98304
  %i.hx = icmp eq i32 %i.hw, 98304
  %i.hy = getelementptr inbounds nuw i8, ptr %.05188.i, i64 2
  %i.hz = zext i1 %i.hx to i8
  store i8 %i.hz, ptr %i.hy, align 2
  %i.ia = getelementptr inbounds nuw i8, ptr %.05188.i, i64 3
  store i8 0, ptr %i.ia, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.05188.i, i64 4
  store i16 0, ptr %i.ib, align 2
  %i.ic = getelementptr inbounds nuw i8, ptr %.05287.i, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %.05188.i, i64 6
  %i.ie = load i32, ptr %i.fb, align 4
  %i.if = add i32 %i.ie, 1                        ; 2 uses
  store i32 %i.if, ptr %i.fb, align 4
  br label %bsearch.exit76.thread.i

bsearch.exit76.thread.i:                          ; preds = %bb.ac, %bsearch.exit76.i
  %i.ig = phi i32 [ %i.if, %bsearch.exit76.i ], [ %i.gz, %bb.ac ] ; 2 uses
  %.153.i = phi ptr [ %i.ic, %bsearch.exit76.i ], [ %.05287.i, %bb.ac ]
  %.1.i = phi ptr [ %i.id, %bsearch.exit76.i ], [ %.05188.i, %bb.ac ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bsearch.exit.thread.i, label %.lr.ph.i69.preheader.i, !llvm.loop !23

bsearch.exit.thread.i:                            ; preds = %bsearch.exit76.thread.i, %bb.y, %.lr.ph.i, %bb.z, %bsearch.exit.i, %BTreeTupleIsPosting.exit.thread.i
  %i.ih = phi i32 [ %i.fi, %bb.y ], [ %i.gv, %bsearch.exit.i ], [ %i.fi, %bb.z ], [ %i.fi, %.lr.ph.i ], [ %i.fi, %BTreeTupleIsPosting.exit.thread.i ], [ %i.ig, %bsearch.exit76.thread.i ]
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next97.i to i16
  %.not.i = icmp ult i16 %.0.i, %indvars.i
  br i1 %.not.i, label %_bt_simpledel_pass.exit, label %bb.v, !llvm.loop !24

_bt_simpledel_pass.exit:                          ; preds = %bsearch.exit.thread.i
  tail call void @pfree(ptr noundef %.352.i.i) #8
  call void @_bt_delitems_delete_check(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, ptr noundef nonnull %7) #8
  %i.ii = load ptr, ptr %i.fd, align 8
  call void @pfree(ptr noundef %i.ii) #8
  %i.ij = load ptr, ptr %i.ff, align 8
  call void @pfree(ptr noundef %i.ij) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.ik = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.ik, align 4
  %i.il = call i64 @PageGetFreeSpace(ptr noundef %.0.i.i) #8
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.in = load i64, ptr %i.im, align 8
  %.not54 = icmp ult i64 %i.il, %i.in
  br i1 %.not54, label %._crit_edge.thread, label %bb.ai

._crit_edge.thread:                               ; preds = %BufferGetPage.exit, %_bt_simpledel_pass.exit, %._crit_edge
  %.050 = phi i1 [ %5, %._crit_edge ], [ true, %_bt_simpledel_pass.exit ], [ %5, %BufferGetPage.exit ] ; 2 uses
  %.not57 = xor i1 %3, true
  %.not = xor i1 %4, true
  %or.cond = or i1 %.050, %.not
  %or.cond58 = and i1 %or.cond, %.not57
  br i1 %or.cond58, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %._crit_edge.thread
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.io, align 4
  %or.cond3 = or i1 %6, %.050                     ; 2 uses
  br i1 %or.cond3, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = call zeroext i1 @_bt_bottomupdel_pass(ptr noundef %0, i32 noundef %i.c, ptr noundef %1, i64 noundef %i.iq) #8
  br i1 %i.ir, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.it = load ptr, ptr %i.is, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.it, null
  br i1 %.not55, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load i8, ptr %i.iu, align 8, !range !4, !noundef !5
  %i.iw = icmp eq i8 %i.iv, 0
  br i1 %i.iw, label %bb.ai, label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ag
  %i.ix = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.iy = load i8, ptr %i.ix, align 1, !range !4, !noundef !5
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.critedge
  %i.ja = load ptr, ptr %2, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jc = load i64, ptr %i.jb, align 8
  call void @_bt_dedup_pass(ptr noundef nonnull %0, i32 noundef %i.c, ptr noundef %i.ja, i64 noundef %i.jc, i1 noundef zeroext %or.cond3) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %.critedge, %bb.ah, %bb.ae, %._crit_edge.thread, %_bt_simpledel_pass.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare i32 @pg_prng_uint32(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @_bt_bottomupdel_pass(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_bt_dedup_pass(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @_bt_blk_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %i.c
}

declare void @_bt_delitems_delete_check(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CopyIndexTuple(ptr noundef) local_unnamed_addr #2

declare ptr @_bt_swap_posting(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PredicateLockPageSplit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @PageAddItemExtended(ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @MarkBufferDirty(i32 noundef) local_unnamed_addr #2

declare void @_bt_upgrademetapage(ptr noundef) local_unnamed_addr #2

declare void @XLogBeginInsert() local_unnamed_addr #2

declare void @XLogRegisterData(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @XLogRegisterBuffer(i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @XLogRegisterBufData(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @XLogInsert(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i64 @XLogGetFakeLSN(ptr noundef) local_unnamed_addr #2

declare i32 @_bt_getrootheight(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @_bt_findsplitloc(ptr noundef, ptr noundef, i16 noundef zeroext, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bt_pageinit(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_bt_truncate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_bt_allocbuf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare zeroext i16 @_bt_vacuum_cycleid(ptr noundef) local_unnamed_addr #2

declare i32 @_bt_get_endpoint(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.compressstore.v4i16.p0(<4 x i16>, ptr captures(none), <4 x i1>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"llvm.loop.peeled.count", i32 1}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !8, !25, !26}
!18 = distinct !{!18, !8, !25}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
