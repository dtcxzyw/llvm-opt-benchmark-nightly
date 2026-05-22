inline.NumInlined: 26
inline.NumDeleted: 17
begin_hunk_0_@uprv_stableBinarySearch_78:bb.a
  %i.l = add nsw i32 %i.f, 1
  %i.m = icmp sgt i32 %i.j, -1                    ; 2 uses
  %.030. = select i1 %i.m, i32 %i.f, i32 %.03043
  %.133 = select i1 %i.k, i8 1, i8 %.03242        ; 2 uses
  %.131 = select i1 %i.k, i32 %i.l, i32 %.030.    ; 3 uses
  %.1 = select i1 %i.m, i32 %.02944, i32 %i.f     ; 3 uses
  %i.n = sub nsw i32 %.1, %.131
  %i.o = icmp sgt i32 %i.n, 8
  br i1 %i.o, label %.lr.ph, label %.preheader, !llvm.loop !5

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.c, %.lr.ph49.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.23447 = phi i8 [ %.032.lcssa, %.lr.ph49.preheader ], [ %.335, %bb.c ] ; 2 uses
  %i.p = mul nsw i64 %indvars.iv, %i.d
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = tail call noundef i32 %4(ptr noundef %5, ptr noundef %2, ptr noundef %i.q) #6 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph49
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %.thread.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph49
  %.335 = phi i8 [ %.23447, %bb.b ], [ 1, %.lr.ph49 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %.029.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %.thread, label %.lr.ph49

.thread.loopexit.split.loop.exit:                 ; preds = %bb.b
  %i.u = trunc nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread.loopexit.split.loop.exit, %.preheader
  %.234.lcssa = phi i8 [ %.032.lcssa, %.preheader ], [ %.23447, %.thread.loopexit.split.loop.exit ], [ %.335, %bb.c ]
  %.2.lcssa = phi i32 [ %.030.lcssa, %.preheader ], [ %i.u, %.thread.loopexit.split.loop.exit ], [ %.029.lcssa, %bb.c ] ; 2 uses
  %.not = icmp eq i8 %.234.lcssa, 0
  %i.v = add nsw i32 %.2.lcssa, -1
  %i.w = xor i32 %.2.lcssa, -1
  %i.x = select i1 %.not, i32 %i.w, i32 %i.v
  ret i32 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uprv_sortArray_78(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef signext %5, ptr noundef captures(address_is_null) %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %"class.icu_78::MaybeStackArray.0", align 16 ; 9 uses
  %8 = alloca %"class.icu_78::MaybeStackArray", align 16 ; 9 uses
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %6, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.d = icmp sgt i32 %1, 0
  %i.e = icmp eq ptr %0, null
  %or.cond = and i1 %i.e, %i.d
  %i.f = icmp slt i32 %1, 0
  %or.cond3 = or i1 %i.f, %or.cond
  %i.g = icmp slt i32 %2, 1
  %or.cond5 = or i1 %i.g, %or.cond3
  %i.h = icmp eq ptr %3, null
  %or.cond7 = or i1 %i.h, %or.cond5
  br i1 %or.cond7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %6, align 4
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i32 %1, 2
  br i1 %i.i, label %bb.aa, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i32 %1, 9
  %i.k = icmp ne i8 %5, 0
  %or.cond9 = or i1 %i.j, %i.k
  %i.l = add nuw i32 %2, 31                       ; 2 uses
  %i.m = lshr i32 %i.l, 5                         ; 3 uses
  br i1 %or.cond9, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.n, ptr %8, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 7, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 4 uses
  store i8 0, ptr %i.p, align 4
  %i.q = icmp samesign ugt i32 %2, 224
  br i1 %i.q, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.r = and i32 %i.l, -32
  %i.s = zext i32 %i.r to i64
  %i.t = call noalias ptr @uprv_malloc_78(i64 noundef %i.s) #7 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.p, align 4
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayI11max_align_tLi7EE6resizeEii.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %8, align 16
  call void @uprv_free_78(ptr noundef %i.v) #6
  br label %_ZN6icu_7815MaybeStackArrayI11max_align_tLi7EE6resizeEii.exit.i

_ZN6icu_7815MaybeStackArrayI11max_align_tLi7EE6resizeEii.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.t, ptr %8, align 16
  store i32 %i.m, ptr %i.o, align 8
  store i8 1, ptr %i.p, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  store i32 7, ptr %6, align 4
  br label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i

bb.l:                                             ; preds = %_ZN6icu_7815MaybeStackArrayI11max_align_tLi7EE6resizeEii.exit.i, %bb.g
  %i.w = phi ptr [ %i.t, %_ZN6icu_7815MaybeStackArrayI11max_align_tLi7EE6resizeEii.exit.i ], [ %i.n, %bb.g ] ; 2 uses
  %i.x = zext nneg i32 %2 to i64                  ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %1 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l
  %indvars.iv.i.i = phi i64 [ 1, %bb.l ], [ %indvars.iv.next.i.i, %bb.q ] ; 5 uses
  %i.y = mul nuw nsw i64 %indvars.iv.i.i, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y ; 3 uses
  %i.aa = icmp samesign ugt i64 %indvars.iv.i.i, 8
  %i.ab = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 3 uses
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.lr.ph49.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %i.ac = icmp slt i32 %.131.i.i.i, %.1.i.i.i
  br i1 %i.ac, label %.lr.ph49.preheader.i.i.i, label %uprv_stableBinarySearch_78.exit.i.i

.lr.ph49.preheader.i.i.i:                         ; preds = %.preheader.i.i.i, %bb.m
  %.029.lcssa.i38.i.i = phi i32 [ %.1.i.i.i, %.preheader.i.i.i ], [ %i.ab, %bb.m ] ; 2 uses
  %.030.lcssa.i37.i.i = phi i32 [ %.131.i.i.i, %.preheader.i.i.i ], [ 0, %bb.m ]
  %.032.lcssa.i36.i.i = phi i8 [ %.133.i.i.i, %.preheader.i.i.i ], [ 0, %bb.m ]
  %i.ad = sext i32 %.030.lcssa.i37.i.i to i64
  br label %.lr.ph49.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.02944.i.i.i = phi i32 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ab, %bb.m ] ; 2 uses
  %.03043.i.i.i = phi i32 [ %.131.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.m ] ; 2 uses
  %.03242.i.i.i = phi i8 [ %.133.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.m ]
  %i.ae = add nsw i32 %.03043.i.i.i, %.02944.i.i.i
  %i.af = sdiv i32 %i.ae, 2                       ; 4 uses
  %i.ag = mul nsw i32 %i.af, %2
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.ah
  %i.aj = call noundef i32 %3(ptr noundef %4, ptr noundef nonnull %i.z, ptr noundef %i.ai) #6, !inline_history !7 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0                    ; 2 uses
  %i.al = add nsw i32 %i.af, 1
  %i.am = icmp sgt i32 %i.aj, -1                  ; 2 uses
  %.030..i.i.i = select i1 %i.am, i32 %i.af, i32 %.03043.i.i.i
  %.133.i.i.i = select i1 %i.ak, i8 1, i8 %.03242.i.i.i ; 3 uses
  %.131.i.i.i = select i1 %i.ak, i32 %i.al, i32 %.030..i.i.i ; 5 uses
  %.1.i.i.i = select i1 %i.am, i32 %.02944.i.i.i, i32 %i.af ; 4 uses
  %i.an = sub nsw i32 %.1.i.i.i, %.131.i.i.i
  %i.ao = icmp sgt i32 %i.an, 8
  br i1 %i.ao, label %.lr.ph.i.i.i, label %.preheader.i.i.i, !llvm.loop !5

.lr.ph49.i.i.i:                                   ; preds = %bb.o, %.lr.ph49.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.ad, %.lr.ph49.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.o ] ; 3 uses
  %.23447.i.i.i = phi i8 [ %.032.lcssa.i36.i.i, %.lr.ph49.preheader.i.i.i ], [ %.335.i.i.i, %bb.o ] ; 2 uses
  %i.ap = mul nsw i64 %indvars.iv.i.i.i, %i.x
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = call noundef i32 %3(ptr noundef %4, ptr noundef nonnull %i.z, ptr noundef %i.aq) #6, !inline_history !7 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph49.i.i.i
  %i.at = icmp slt i32 %i.ar, 0
  br i1 %i.at, label %.thread.loopexit.split.loop.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph49.i.i.i
  %.335.i.i.i = phi i8 [ %.23447.i.i.i, %bb.n ], [ 1, %.lr.ph49.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i = icmp eq i32 %.029.lcssa.i38.i.i, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i, label %uprv_stableBinarySearch_78.exit.i.i, label %.lr.ph49.i.i.i

.thread.loopexit.split.loop.exit.i.i.i:           ; preds = %bb.n
  %i.au = trunc nsw i64 %indvars.iv.i.i.i to i32
  br label %uprv_stableBinarySearch_78.exit.i.i

uprv_stableBinarySearch_78.exit.i.i:              ; preds = %bb.o, %.thread.loopexit.split.loop.exit.i.i.i, %.preheader.i.i.i
  %.234.lcssa.i.i.i = phi i8 [ %.133.i.i.i, %.preheader.i.i.i ], [ %.23447.i.i.i, %.thread.loopexit.split.loop.exit.i.i.i ], [ %.335.i.i.i, %bb.o ]
  %.2.lcssa.i.i.i = phi i32 [ %.131.i.i.i, %.preheader.i.i.i ], [ %i.au, %.thread.loopexit.split.loop.exit.i.i.i ], [ %.029.lcssa.i38.i.i, %bb.o ] ; 2 uses
  %.not.i.i7.i = icmp eq i8 %.234.lcssa.i.i.i, 0
  %i.av = add nsw i32 %.2.lcssa.i.i.i, -1
  %i.aw = xor i32 %.2.lcssa.i.i.i, -1
  %i.ax = select i1 %.not.i.i7.i, i32 %i.aw, i32 %i.av ; 3 uses
  %9 = xor i32 %i.ax, -1
  %10 = add i32 %i.ax, 1
  %.narrow.i.i = icmp slt i32 %i.ax, -1
  %.031.i.i = select i1 %.narrow.i.i, i32 %9, i32 %10 ; 3 uses
  %i.ay = sext i32 %.031.i.i to i64
  %i.az = icmp sgt i64 %indvars.iv.i.i, %i.ay
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %uprv_stableBinarySearch_78.exit.i.i
  %i.ba = mul nsw i32 %.031.i.i, %2
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bb ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.z, i64 %i.x, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.x
  %i.be = sub nsw i32 %i.ab, %.031.i.i
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, %i.x
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.bc, i64 %i.bg, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull align 1 dereferenceable(1) %i.w, i64 %i.x, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %uprv_stableBinarySearch_78.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i, label %bb.m, !llvm.loop !8

_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i: ; preds = %bb.q, %bb.k
  %i.bh = load i8, ptr %i.p, align 4
  %.not.i.i8.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i8.i, label %_ZL13insertionSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit, label %bb.r

bb.r:                                             ; preds = %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i
  %i.bi = load ptr, ptr %8, align 16
  call void @uprv_free_78(ptr noundef %i.bi) #6
  br label %_ZL13insertionSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit

_ZL13insertionSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit: ; preds = %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  br label %bb.aa

bb.s:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bj, ptr %7, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 14, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i8 0, ptr %i.bl, align 4
  %i.bm = shl nuw nsw i32 %i.m, 1                 ; 2 uses
  %i.bn = icmp samesign ugt i32 %2, 224
  br i1 %i.bn, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = shl nuw nsw i64 %i.bo, 5
  %i.bq = call noalias ptr @uprv_malloc_78(i64 noundef %i.bp) #7 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i35, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = load i8, ptr %i.bl, align 4
  %.not.i.i.i36 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i36, label %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr %7, align 16
  call void @uprv_free_78(ptr noundef %i.bs) #6
  br label %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i

_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i: ; preds = %bb.v, %bb.u
  store ptr %i.bq, ptr %7, align 16
  store i32 %i.bm, ptr %i.bk, align 8
  store i8 1, ptr %i.bl, align 4
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  store i32 7, ptr %6, align 4
  br label %bb.y

bb.x:                                             ; preds = %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i, %bb.s
  %i.bt = phi ptr [ %i.bq, %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i ], [ %i.bj, %bb.s ] ; 2 uses
  %i.bu = zext nneg i32 %i.m to i64
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bu
  call fastcc void @_ZL12subQuickSortPciiiPFiPKvS1_S1_ES1_PvS4_(ptr noundef %0, i32 noundef 0, i32 noundef range(i32 9, -2147483648) %1, i32 noundef range(i32 1, -2147483648) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bv)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bw = load i8, ptr %i.bl, align 4
  %.not.i.i8.i34 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i8.i34, label %_ZL9quickSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %7, align 16
  call void @uprv_free_78(ptr noundef %i.bx) #6
  br label %_ZL9quickSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit

_ZL9quickSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL13insertionSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit, %_ZL9quickSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit, %bb.e, %bb.a, %bb.b, %bb.d
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12subQuickSortPciiiPFiPKvS1_S1_ES1_PvS4_(ptr noundef %0, i32 noundef range(i32 -2147483648, 2147483646) %1, i32 noundef %2, i32 noundef range(i32 1, -2147483648) %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #2 {
bb.a:
  %i.a = zext nneg i32 %3 to i64                  ; 13 uses
  %i.b = zext nneg i32 %3 to i64                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.w, %bb.a
  %.090 = phi i32 [ %2, %bb.a ], [ %.191, %bb.w ] ; 9 uses
  %.088 = phi i32 [ %1, %bb.a ], [ %.189, %bb.w ] ; 10 uses
  %i.c = add nsw i32 %.088, 9
  %.not = icmp slt i32 %i.c, %.090
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = mul nsw i32 %.088, %3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 4 uses
  %i.g = sub nsw i32 %.090, %.088                 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %.lr.ph.i, label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit

.lr.ph.i:                                         ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %i.i = mul nuw nsw i64 %indvars.iv.i, %i.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  %i.k = icmp samesign ugt i64 %indvars.iv.i, 8
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  br i1 %i.k, label %.lr.ph.i.i, label %.lr.ph49.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.m = icmp slt i32 %.131.i.i, %.1.i.i
  br i1 %i.m, label %.lr.ph49.preheader.i.i, label %uprv_stableBinarySearch_78.exit.i

.lr.ph49.preheader.i.i:                           ; preds = %.preheader.i.i, %bb.d
  %.029.lcssa.i38.i = phi i32 [ %.1.i.i, %.preheader.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %.030.lcssa.i37.i = phi i32 [ %.131.i.i, %.preheader.i.i ], [ 0, %bb.d ]
  %.032.lcssa.i36.i = phi i8 [ %.133.i.i, %.preheader.i.i ], [ 0, %bb.d ]
  %i.n = sext i32 %.030.lcssa.i37.i to i64
  br label %.lr.ph49.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.02944.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %.03043.i.i = phi i32 [ %.131.i.i, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.03242.i.i = phi i8 [ %.133.i.i, %.lr.ph.i.i ], [ 0, %bb.d ]
  %i.o = add nsw i32 %.03043.i.i, %.02944.i.i
  %i.p = sdiv i32 %i.o, 2                         ; 4 uses
  %i.q = mul nsw i32 %i.p, %3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.r
  %i.t = tail call noundef i32 %4(ptr noundef %5, ptr noundef nonnull %i.j, ptr noundef %i.s) #6, !inline_history !9 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  %i.v = add nsw i32 %i.p, 1
  %i.w = icmp sgt i32 %i.t, -1                    ; 2 uses
  %.030..i.i = select i1 %i.w, i32 %i.p, i32 %.03043.i.i
  %.133.i.i = select i1 %i.u, i8 1, i8 %.03242.i.i ; 3 uses
  %.131.i.i = select i1 %i.u, i32 %i.v, i32 %.030..i.i ; 5 uses
  %.1.i.i = select i1 %i.w, i32 %.02944.i.i, i32 %i.p ; 4 uses
  %i.x = sub nsw i32 %.1.i.i, %.131.i.i
  %i.y = icmp sgt i32 %i.x, 8
  br i1 %i.y, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !5

.lr.ph49.i.i:                                     ; preds = %bb.f, %.lr.ph49.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.n, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 3 uses
  %.23447.i.i = phi i8 [ %.032.lcssa.i36.i, %.lr.ph49.preheader.i.i ], [ %.335.i.i, %bb.f ] ; 2 uses
  %i.z = mul nsw i64 %indvars.iv.i.i, %i.a
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 %i.z
  %i.ab = tail call noundef i32 %4(ptr noundef %5, ptr noundef nonnull %i.j, ptr noundef %i.aa) #6, !inline_history !9 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph49.i.i
  %i.ad = icmp slt i32 %i.ab, 0
  br i1 %i.ad, label %.thread.loopexit.split.loop.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph49.i.i
  %.335.i.i = phi i8 [ %.23447.i.i, %bb.e ], [ 1, %.lr.ph49.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %.029.lcssa.i38.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %uprv_stableBinarySearch_78.exit.i, label %.lr.ph49.i.i

.thread.loopexit.split.loop.exit.i.i:             ; preds = %bb.e
  %i.ae = trunc nsw i64 %indvars.iv.i.i to i32
  br label %uprv_stableBinarySearch_78.exit.i

uprv_stableBinarySearch_78.exit.i:                ; preds = %bb.f, %.thread.loopexit.split.loop.exit.i.i, %.preheader.i.i
  %.234.lcssa.i.i = phi i8 [ %.133.i.i, %.preheader.i.i ], [ %.23447.i.i, %.thread.loopexit.split.loop.exit.i.i ], [ %.335.i.i, %bb.f ]
  %.2.lcssa.i.i = phi i32 [ %.131.i.i, %.preheader.i.i ], [ %i.ae, %.thread.loopexit.split.loop.exit.i.i ], [ %.029.lcssa.i38.i, %bb.f ] ; 2 uses
  %.not.i.i = icmp eq i8 %.234.lcssa.i.i, 0
  %i.af = add nsw i32 %.2.lcssa.i.i, -1
  %i.ag = xor i32 %.2.lcssa.i.i, -1
  %i.ah = select i1 %.not.i.i, i32 %i.ag, i32 %i.af ; 3 uses
  %8 = xor i32 %i.ah, -1
  %9 = add i32 %i.ah, 1
  %.narrow.i = icmp slt i32 %i.ah, -1
  %.031.i = select i1 %.narrow.i, i32 %8, i32 %9  ; 3 uses
  %i.ai = sext i32 %.031.i to i64
  %i.aj = icmp sgt i64 %indvars.iv.i, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %uprv_stableBinarySearch_78.exit.i
  %i.ak = mul nsw i32 %.031.i, %3
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.al ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %i.a, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.a
  %i.ao = sub nsw i32 %i.l, %.031.i
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.am, i64 %i.aq, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %6, i64 %i.a, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uprv_stableBinarySearch_78.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit, label %bb.d, !llvm.loop !8

bb.i:                                             ; preds = %bb.b
  %i.ar = add nsw i32 %.088, %.090
  %i.as = sdiv i32 %i.ar, 2
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, %i.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.av, i64 %i.a, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %bb.i
  %.085 = phi i32 [ %.088, %bb.i ], [ %.287, %bb.q ]
  %.0 = phi i32 [ %.090, %bb.i ], [ %.2, %bb.q ]
  %i.aw = sext i32 %.085 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %i.aw, %bb.j ] ; 6 uses
  %i.ax = mul nsw i64 %indvars.iv, %i.b
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax
  %i.az = tail call noundef i32 %4(ptr noundef %5, ptr noundef %i.ay, ptr noundef nonnull %6) #6
  %i.ba = icmp slt i32 %i.az, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.ba, label %bb.k, label %.preheader, !llvm.loop !10

.preheader:                                       ; preds = %bb.k
  %i.bb = sext i32 %.0 to i64
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.l
  %indvars.iv104 = phi i64 [ %i.bb, %.preheader ], [ %indvars.iv.next105, %bb.l ] ; 3 uses
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, -1 ; 5 uses
  %i.bc = mul nsw i64 %indvars.iv.next105, %i.b
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc
  %i.be = tail call noundef i32 %4(ptr noundef %5, ptr noundef nonnull %6, ptr noundef %i.bd) #6
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.l, label %bb.m, !llvm.loop !11

bb.m:                                             ; preds = %bb.l
  %i.bg = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv, %indvars.iv104
  br i1 %i.bh, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bi = icmp slt i64 %indvars.iv, %indvars.iv.next105
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %sext = shl i64 %indvars.iv, 32
  %i.bj = ashr exact i64 %sext, 32
  %i.bk = mul nsw i64 %i.bj, %i.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i64 %i.a, i1 false)
  %sext112 = shl i64 %indvars.iv.next105, 32
  %i.bm = ashr exact i64 %sext112, 32
  %i.bn = mul nsw i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %i.bo, i64 %i.a, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %7, i64 %i.a, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = add nsw i32 %i.bg, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.287 = phi i32 [ %i.bp, %bb.p ], [ %i.bg, %bb.m ] ; 7 uses
  %.2.in = phi i64 [ %indvars.iv.next105, %bb.p ], [ %indvars.iv104, %bb.m ]
  %.2 = trunc i64 %.2.in to i32                   ; 7 uses
  %i.bq = icmp slt i32 %.287, %.2
  br i1 %i.bq, label %bb.j, label %bb.r, !llvm.loop !12

bb.r:                                             ; preds = %bb.q
  %i.br = sub nsw i32 %.2, %.088
  %i.bs = sub nsw i32 %.090, %.287
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bu = add nsw i32 %.2, -1
  %i.bv = icmp slt i32 %.088, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZL12subQuickSortPciiiPFiPKvS1_S1_ES1_PvS4_(ptr noundef %0, i32 noundef %.088, i32 noundef %.2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.bw = add nsw i32 %.090, -1
  %i.bx = icmp slt i32 %.287, %i.bw
  br i1 %i.bx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_ZL12subQuickSortPciiiPFiPKvS1_S1_ES1_PvS4_(ptr noundef %0, i32 noundef %.287, i32 noundef %.090, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s, %bb.t
  %.191 = phi i32 [ %.090, %bb.s ], [ %.090, %bb.t ], [ %.2, %bb.v ], [ %.2, %bb.u ] ; 2 uses
  %.189 = phi i32 [ %.287, %bb.s ], [ %.287, %bb.t ], [ %.088, %bb.v ], [ %.088, %bb.u ] ; 2 uses
  %i.by = add nsw i32 %.191, -1
  %i.bz = icmp slt i32 %.189, %i.by
  br i1 %i.bz, label %bb.b, label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit, !llvm.loop !13

_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit:  ; preds = %bb.w, %bb.h, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{null, null, ptr @uprv_stableBinarySearch_78}
!8 = distinct !{!8, !6}
!9 = distinct !{null, ptr @uprv_stableBinarySearch_78}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
end_hunk_0
