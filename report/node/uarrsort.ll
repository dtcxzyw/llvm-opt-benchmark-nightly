inline.NumInlined: 26
inline.NumDeleted: 17
begin_hunk_0_@uprv_sortArray_78:bb.a
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
  %i.ay = icmp slt i32 %i.ax, 0
  %i.az = xor i32 %i.ax, -1
  %i.ba = add nuw nsw i32 %i.ax, 1
  %.031.i.i = select i1 %i.ay, i32 %i.az, i32 %i.ba ; 3 uses
  %i.bb = sext i32 %.031.i.i to i64
  %i.bc = icmp sgt i64 %indvars.iv.i.i, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %uprv_stableBinarySearch_78.exit.i.i
  %i.bd = mul nsw i32 %.031.i.i, %2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 1 dereferenceable(1) %i.z, i64 %i.x, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.x
  %i.bh = sub nsw i32 %i.ab, %.031.i.i
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul nuw nsw i64 %i.bi, %i.x
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %i.bf, i64 %i.bj, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bf, ptr noundef nonnull align 1 dereferenceable(1) %i.w, i64 %i.x, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %uprv_stableBinarySearch_78.exit.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i, label %bb.m, !llvm.loop !8

_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i: ; preds = %bb.q, %bb.k
  %i.bk = load i8, ptr %i.p, align 4
  %.not.i.i8.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i8.i, label %_ZL13insertionSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit, label %bb.r

bb.r:                                             ; preds = %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i
  %i.bl = load ptr, ptr %8, align 16
  call void @uprv_free_78(ptr noundef %i.bl) #6
  br label %_ZL13insertionSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit

_ZL13insertionSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit: ; preds = %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  br label %bb.aa

bb.s:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.bm, ptr %7, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 14, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 4 uses
  store i8 0, ptr %i.bo, align 4
  %i.bp = shl nuw nsw i32 %i.m, 1                 ; 2 uses
  %i.bq = icmp samesign ugt i32 %2, 224
  br i1 %i.bq, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = shl nuw nsw i64 %i.br, 5
  %i.bt = call noalias ptr @uprv_malloc_78(i64 noundef %i.bs) #7 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i35, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load i8, ptr %i.bo, align 4
  %.not.i.i.i36 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i36, label %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %7, align 16
  call void @uprv_free_78(ptr noundef %i.bv) #6
  br label %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i

_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i: ; preds = %bb.v, %bb.u
  store ptr %i.bt, ptr %7, align 16
  store i32 %i.bp, ptr %i.bn, align 8
  store i8 1, ptr %i.bo, align 4
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  store i32 7, ptr %6, align 4
  br label %bb.y

bb.x:                                             ; preds = %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i, %bb.s
  %i.bw = phi ptr [ %i.bt, %_ZN6icu_7815MaybeStackArrayI11max_align_tLi14EE6resizeEii.exit.i ], [ %i.bm, %bb.s ] ; 2 uses
  %i.bx = zext nneg i32 %i.m to i64
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bx
  call fastcc void @_ZL12subQuickSortPciiiPFiPKvS1_S1_ES1_PvS4_(ptr noundef %0, i32 noundef 0, i32 noundef range(i32 9, -2147483648) %1, i32 noundef range(i32 1, -2147483648) %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.by)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bz = load i8, ptr %i.bo, align 4
  %.not.i.i8.i34 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i8.i34, label %_ZL9quickSortPciiPFiPKvS1_S1_ES1_P10UErrorCode.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = load ptr, ptr %7, align 16
  call void @uprv_free_78(ptr noundef %i.ca) #6
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
  %8 = icmp samesign ugt i64 %indvars.iv.i, 8
  %i.k = trunc nuw nsw i64 %indvars.iv.i to i32   ; 3 uses
  br i1 %8, label %.lr.ph.i.i, label %.lr.ph49.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %9 = icmp slt i32 %.131.i.i, %.1.i.i
  br i1 %9, label %.lr.ph49.preheader.i.i, label %uprv_stableBinarySearch_78.exit.i

.lr.ph49.preheader.i.i:                           ; preds = %.preheader.i.i, %bb.d
  %.029.lcssa.i38.i = phi i32 [ %.1.i.i, %.preheader.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %.030.lcssa.i37.i = phi i32 [ %.131.i.i, %.preheader.i.i ], [ 0, %bb.d ]
  %.032.lcssa.i36.i = phi i8 [ %.133.i.i, %.preheader.i.i ], [ 0, %bb.d ]
  %10 = sext i32 %.030.lcssa.i37.i to i64
  br label %.lr.ph49.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.02944.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %.03043.i.i = phi i32 [ %.131.i.i, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.03242.i.i = phi i8 [ %.133.i.i, %.lr.ph.i.i ], [ 0, %bb.d ]
  %11 = add nsw i32 %.03043.i.i, %.02944.i.i
  %12 = sdiv i32 %11, 2                           ; 4 uses
  %13 = mul nsw i32 %12, %3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %i.f, i64 %14
  %16 = tail call noundef i32 %4(ptr noundef %5, ptr noundef nonnull %i.j, ptr noundef %15) #6, !inline_history !9 ; 2 uses
  %17 = icmp eq i32 %16, 0                        ; 2 uses
  %18 = add nsw i32 %12, 1
  %19 = icmp sgt i32 %16, -1                      ; 2 uses
  %.030..i.i = select i1 %19, i32 %12, i32 %.03043.i.i
  %.133.i.i = select i1 %17, i8 1, i8 %.03242.i.i ; 3 uses
  %.131.i.i = select i1 %17, i32 %18, i32 %.030..i.i ; 5 uses
  %.1.i.i = select i1 %19, i32 %.02944.i.i, i32 %12 ; 4 uses
  %20 = sub nsw i32 %.1.i.i, %.131.i.i
  %21 = icmp sgt i32 %20, 8
  br i1 %21, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !5

.lr.ph49.i.i:                                     ; preds = %bb.f, %.lr.ph49.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %10, %.lr.ph49.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 3 uses
  %.23447.i.i = phi i8 [ %.032.lcssa.i36.i, %.lr.ph49.preheader.i.i ], [ %.335.i.i, %bb.f ] ; 2 uses
  %i.l = mul nsw i64 %indvars.iv.i.i, %i.a
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l
  %i.n = tail call noundef i32 %4(ptr noundef %5, ptr noundef nonnull %i.j, ptr noundef %i.m) #6, !inline_history !9 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph49.i.i
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %.thread.loopexit.split.loop.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph49.i.i
  %.335.i.i = phi i8 [ %.23447.i.i, %bb.e ], [ 1, %.lr.ph49.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %.029.lcssa.i38.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %uprv_stableBinarySearch_78.exit.i, label %.lr.ph49.i.i

.thread.loopexit.split.loop.exit.i.i:             ; preds = %bb.e
  %i.q = trunc nsw i64 %indvars.iv.i.i to i32
  br label %uprv_stableBinarySearch_78.exit.i

uprv_stableBinarySearch_78.exit.i:                ; preds = %bb.f, %.thread.loopexit.split.loop.exit.i.i, %.preheader.i.i
  %.234.lcssa.i.i = phi i8 [ %.133.i.i, %.preheader.i.i ], [ %.23447.i.i, %.thread.loopexit.split.loop.exit.i.i ], [ %.335.i.i, %bb.f ]
  %.2.lcssa.i.i = phi i32 [ %.131.i.i, %.preheader.i.i ], [ %i.q, %.thread.loopexit.split.loop.exit.i.i ], [ %.029.lcssa.i38.i, %bb.f ] ; 2 uses
  %.not.i.i = icmp eq i8 %.234.lcssa.i.i, 0
  %i.r = add nsw i32 %.2.lcssa.i.i, -1
  %i.s = xor i32 %.2.lcssa.i.i, -1
  %i.t = select i1 %.not.i.i, i32 %i.s, i32 %i.r  ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  %i.v = xor i32 %i.t, -1
  %i.w = add nuw nsw i32 %i.t, 1
  %.031.i = select i1 %i.u, i32 %i.v, i32 %i.w    ; 3 uses
  %i.x = sext i32 %.031.i to i64
  %i.y = icmp sgt i64 %indvars.iv.i, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %uprv_stableBinarySearch_78.exit.i
  %i.z = mul nsw i32 %.031.i, %3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aa ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %i.a, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.a
  %i.ad = sub nsw i32 %i.k, %.031.i
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = mul nuw nsw i64 %i.ae, %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.ab, i64 %i.af, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %6, i64 %i.a, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %uprv_stableBinarySearch_78.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit, label %bb.d, !llvm.loop !8

bb.i:                                             ; preds = %bb.b
  %i.ag = add nsw i32 %.088, %.090
  %i.ah = sdiv i32 %i.ag, 2
  %i.ai = sext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, %i.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, i64 %i.a, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %bb.i
  %.085 = phi i32 [ %.088, %bb.i ], [ %.287, %bb.q ]
  %.0 = phi i32 [ %.090, %bb.i ], [ %.2, %bb.q ]
  %i.al = sext i32 %.085 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ %i.al, %bb.j ] ; 6 uses
  %i.am = mul nsw i64 %indvars.iv, %i.b
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  %i.ao = tail call noundef i32 %4(ptr noundef %5, ptr noundef %i.an, ptr noundef nonnull %6) #6
  %i.ap = icmp slt i32 %i.ao, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.ap, label %bb.k, label %.preheader, !llvm.loop !10

.preheader:                                       ; preds = %bb.k
  %i.aq = sext i32 %.0 to i64
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.l
  %indvars.iv104 = phi i64 [ %i.aq, %.preheader ], [ %indvars.iv.next105, %bb.l ] ; 3 uses
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, -1 ; 5 uses
  %i.ar = mul nsw i64 %indvars.iv.next105, %i.b
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = tail call noundef i32 %4(ptr noundef %5, ptr noundef nonnull %6, ptr noundef %i.as) #6
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.m, !llvm.loop !11

bb.m:                                             ; preds = %bb.l
  %i.av = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv, %indvars.iv104
  br i1 %i.aw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ax = icmp slt i64 %indvars.iv, %indvars.iv.next105
  br i1 %i.ax, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = mul nsw i64 %indvars.iv, %i.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %i.az, i64 %i.a, i1 false)
  %i.ba = mul nsw i64 %indvars.iv.next105, %i.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ba ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull align 1 dereferenceable(1) %i.bb, i64 %i.a, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %7, i64 %i.a, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bc = add nsw i32 %i.av, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %.287 = phi i32 [ %i.bc, %bb.p ], [ %i.av, %bb.m ] ; 7 uses
  %.2.in = phi i64 [ %indvars.iv.next105, %bb.p ], [ %indvars.iv104, %bb.m ]
  %.2 = trunc i64 %.2.in to i32                   ; 7 uses
  %i.bd = icmp slt i32 %.287, %.2
  br i1 %i.bd, label %bb.j, label %bb.r, !llvm.loop !12

bb.r:                                             ; preds = %bb.q
  %i.be = sub nsw i32 %.2, %.088
  %i.bf = sub nsw i32 %.090, %.287
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bh = add nsw i32 %.2, -1
  %i.bi = icmp slt i32 %.088, %i.bh
  br i1 %i.bi, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZL12subQuickSortPciiiPFiPKvS1_S1_ES1_PvS4_(ptr noundef %0, i32 noundef %.088, i32 noundef %.2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.bj = add nsw i32 %.090, -1
  %i.bk = icmp slt i32 %.287, %i.bj
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @_ZL12subQuickSortPciiiPFiPKvS1_S1_ES1_PvS4_(ptr noundef %0, i32 noundef %.287, i32 noundef %.090, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.s, %bb.t
  %.191 = phi i32 [ %.090, %bb.s ], [ %.090, %bb.t ], [ %.2, %bb.v ], [ %.2, %bb.u ] ; 2 uses
  %.189 = phi i32 [ %.287, %bb.s ], [ %.287, %bb.t ], [ %.088, %bb.v ], [ %.088, %bb.u ] ; 2 uses
  %i.bl = add nsw i32 %.191, -1
  %i.bm = icmp slt i32 %.189, %i.bl
  br i1 %i.bm, label %bb.b, label %_ZL15doInsertionSortPciiPFiPKvS1_S1_ES1_Pv.exit, !llvm.loop !13

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
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
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
