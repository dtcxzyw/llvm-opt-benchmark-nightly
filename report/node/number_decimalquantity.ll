inline.NumInlined: 255
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6icu_786number4impl15DecimalQuantity13switchStorageEv:bb.a
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !14

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit: ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = tail call noalias dereferenceable_or_null(40) ptr @uprv_malloc_78(i64 noundef 40) #22 ; 2 uses
  store ptr %i.aq, ptr %i.an, align 8
  store i32 40, ptr %i.ap, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.aq, i8 0, i64 40, i1 false)
  store i8 1, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit ] ; 2 uses
  %.01114 = phi i64 [ %i.ay, %.lr.ph ], [ %i.ao, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit ] ; 2 uses
  %i.au = trunc i64 %.01114 to i8
  %i.av = and i8 %i.au, 15
  %i.aw = load ptr, ptr %i.an, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  store i8 %i.av, ptr %i.ax, align 1
  %i.ay = lshr i64 %.01114, 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.ar, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph, %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv.exit, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias dereferenceable_or_null(40) ptr @uprv_malloc_78(i64 noundef 40) #22 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.g, align 8
  store i32 40, ptr %i.d, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

bb.c:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.e, 40
  br i1 %i.h, label %bb.d, label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #22 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = sext i32 %i.e to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.k, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = sub nsw i32 40, %i.e
  %i.o = zext nneg i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 0, i64 %i.o, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.k) #21
  store ptr %i.i, ptr %i.j, align 8
  store i32 80, ptr %i.d, align 8
  br label %_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit

_ZN6icu_786number4impl15DecimalQuantity14ensureCapacityEi.exit: ; preds = %bb.b, %bb.c, %bb.d
  store i8 1, ptr %i.a, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK6icu_786number4impl15DecimalQuantity11checkHealthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8              ; 16 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread91, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp sgt i32 %i.e, %i.h
  br i1 %i.i, label %.thread91, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.e, 0
  br i1 %i.j, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = zext nneg i32 %i.e to i64                ; 3 uses
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %i.r = load i8, ptr %i.l, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50

bb.e:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %i.m
  br i1 %exitcond138.not, label %.preheader, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50, !llvm.loop !47

.preheader:                                       ; preds = %bb.e
  %.not40121 = icmp slt i32 %i.e, %i.h
  br i1 %.not40121, label %.lr.ph123, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45, %bb.e
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.e ], [ 0, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv134
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = icmp sgt i8 %i.u, 9
  br i1 %i.v, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50
  %i.w = icmp slt i8 %i.u, 0
  br i1 %i.w, label %.thread91, label %bb.e

.lr.ph123:                                        ; preds = %.preheader, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread ], [ %i.m, %.preheader ] ; 3 uses
  %i.x = trunc nuw i64 %indvars.iv139 to i32
  %.not.i58 = icmp sgt i32 %i.e, %i.x
  br i1 %.not.i58, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60: ; preds = %.lr.ph123
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv139
  %i.z = load i8, ptr %i.y, align 1
  %.not39 = icmp eq i8 %i.z, 0
  br i1 %.not39, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread: ; preds = %.lr.ph123, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.aa = trunc nuw i64 %indvars.iv.next140 to i32
  %.not40 = icmp sgt i32 %i.h, %i.aa
  br i1 %.not40, label %.lr.ph123, label %.thread91, !llvm.loop !48

bb.f:                                             ; preds = %bb.a
  %i.ab = icmp ne i32 %i.e, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8            ; 6 uses
  %.not = icmp eq i64 %i.ad, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %.not
  br i1 %or.cond, label %bb.g, label %.thread91

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp sgt i32 %i.e, 16
  br i1 %i.ae, label %.thread91, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not35 = icmp eq i32 %i.e, 0
  br i1 %.not35, label %.lr.ph117.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.e, -1                    ; 2 uses
  %or.cond.i61 = icmp ugt i32 %i.af, 15
  br i1 %or.cond.i61, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65: ; preds = %bb.i
  %i.ag = shl nuw nsw i32 %i.af, 2
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw i64 15, %i.ah
  %i.aj = and i64 %i.ai, %i.ad
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.thread91, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65
  %i.al = and i64 %i.ad, 15
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %.thread91, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74

1:                                                ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader111, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74, !llvm.loop !49

.preheader111:                                    ; preds = %1
  %.not126 = icmp eq i32 %i.e, 16
  br i1 %.not126, label %.thread91, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %bb.h, %.preheader111
  %i.an = sub i32 16, %i.e                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.an, 16
  br i1 %min.iters.check, label %.lr.ph117.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph117.preheader
  %n.vec = and i32 %i.an, -16                     ; 3 uses
  %i.ao = add i32 %i.e, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat159 = shufflevector <16 x i32> %broadcast.splatinsert158, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat159, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.ap = icmp ult <16 x i32> %vec.ind, splat (i32 16)
  %i.aq = shl nuw nsw <16 x i32> %vec.ind, splat (i32 2)
  %i.ar = zext nneg <16 x i32> %i.aq to <16 x i64>
  %i.as = shl nuw <16 x i64> splat (i64 15), %i.ar
  %i.at = and <16 x i64> %i.as, %broadcast.splat
  %i.au = icmp ne <16 x i64> %i.at, zeroinitializer
  %i.av = select <16 x i1> %i.ap, <16 x i1> %i.au, <16 x i1> zeroinitializer
  %i.aw = freeze <16 x i1> %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %.not160 = icmp eq i16 %i.ax, 0
  br i1 %.not160, label %vector.body.interim, label %.thread91

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ay = icmp eq i32 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.an, %n.vec
  br i1 %cmp.n, label %.thread91, label %.lr.ph117.preheader163

.lr.ph117.preheader163:                           ; preds = %.lr.ph117.preheader, %middle.block
  %.0116.ph = phi i32 [ %i.e, %.lr.ph117.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph117

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74: ; preds = %.lr.ph.preheader.a, %1
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.a ], [ %indvars.iv.next, %1 ] ; 2 uses
  %i.az = shl nuw nsw i64 %indvars.iv, 2
  %i.ba = lshr i64 %i.ad, %i.az
  %i.bb = and i64 %i.ba, 14
  %i.bc = icmp samesign ugt i64 %i.bb, 9
  br i1 %i.bc, label %.thread91, label %1

.lr.ph117:                                        ; preds = %.lr.ph117.preheader163, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread
  %.0116 = phi i32 [ %i.bh, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread ], [ %.0116.ph, %.lr.ph117.preheader163 ] ; 3 uses
  %or.cond.i80 = icmp ugt i32 %.0116, 15
  br i1 %or.cond.i80, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84: ; preds = %.lr.ph117
  %i.bd = shl nuw nsw i32 %.0116, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 15, %i.be
  %i.bg = and i64 %i.bf, %i.ad
  %.not37 = icmp eq i64 %i.bg, 0
  br i1 %.not37, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread, label %.thread91

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread: ; preds = %.lr.ph117, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84
  %i.bh = add nsw i32 %.0116, 1                   ; 2 uses
  %exitcond133.not = icmp eq i32 %i.bh, 16
  br i1 %exitcond133.not, label %.thread91, label %.lr.ph117, !llvm.loop !53

.thread91:                                        ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74, %vector.body, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60, %middle.block, %.preheader111, %.preheader, %bb.i, %bb.d, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, %bb.c, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65, %bb.g, %bb.f, %bb.b
  %.5 = phi ptr [ @.str.7, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ], [ @.str.8, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit45 ], [ @.str.6, %bb.c ], [ @.str.5, %bb.b ], [ @.str.12, %bb.f ], [ @.str.13, %bb.g ], [ @.str.14, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit65 ], [ null, %middle.block ], [ @.str.8, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit69 ], [ @.str.14, %bb.i ], [ @.str.7, %bb.d ], [ null, %.preheader111 ], [ @.str.9, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit50 ], [ @.str.11, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60 ], [ null, %.preheader ], [ @.str.17, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84 ], [ @.str.17, %vector.body ], [ null, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit60.thread ], [ @.str.10, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit55 ], [ null, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit84.thread ], [ @.str.15, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit74 ]
  ret ptr %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_786number4impl15DecimalQuantityeqERKS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i8, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i8, ptr %i.m, align 4
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.g, 0
  br i1 %i.ae, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.aa, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = fcmp oeq double %i.ag, %i.ai
  br i1 %i.aj, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp eq i32 %i.al, %i.an
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.g, %i.b
  %..i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.ap) ; 2 uses
  %..i20 = tail call noundef i32 @llvm.smin.i32(i32 %i.v, i32 %i.b) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not18.not.not33 = icmp sgt i32 %..i, %..i20
  br i1 %.not18.not.not33, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.au = load i8, ptr %i.aq, align 8, !range !5, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i64, ptr %i.ar, align 8
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = load i8, ptr %i.as, align 8, !range !5, !noundef !6
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = load ptr, ptr %i.at, align 8
  br label %.lr.ph

bb.l:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  %.not18.not.not = icmp sgt i32 %.034, %..i20
  br i1 %.not18.not.not, label %.lr.ph, label %.critedge, !llvm.loop !54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.034.in = phi i32 [ %.034, %bb.l ], [ %..i, %.lr.ph.preheader ]
  %.034 = add nsw i32 %.034.in, -1                ; 3 uses
  %i.bc = sub nsw i32 %.034, %i.b                 ; 10 uses
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph
  %i.bd = icmp sgt i32 %i.bc, -1
  %.not.i.i = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i = and i1 %i.bd, %.not.i.i
  br i1 %or.cond10.i.i, label %bb.n, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.n:                                             ; preds = %bb.m
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.o:                                             ; preds = %.lr.ph
  %or.cond.i.i = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = shl nuw nsw i32 %i.bc, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.aw, %i.bi
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = and i8 %i.bk, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i.i = phi i8 [ %i.bl, %bb.p ], [ %i.bg, %bb.n ], [ 0, %bb.m ], [ 0, %bb.o ]
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %i.bm = icmp sgt i32 %i.bc, -1
  %.not.i.i23 = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i24 = and i1 %i.bm, %.not.i.i23
  br i1 %or.cond10.i.i24, label %bb.r, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.r:                                             ; preds = %bb.q
  %i.bn = zext nneg i32 %i.bc to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.s:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %or.cond.i.i21 = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i21, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = shl nuw nsw i32 %i.bc, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.ba, %i.br
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = and i8 %i.bt, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i22 = phi i8 [ %i.bu, %bb.t ], [ %i.bp, %bb.r ], [ 0, %bb.q ], [ 0, %bb.s ]
  %.not19 = icmp eq i8 %.0.i.i, %.0.i.i22
  br i1 %.not19, label %bb.l, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, !llvm.loop !54

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  br label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %bb.l, %bb.k, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i, %bb.j, %bb.g, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ %i.ao, %bb.j ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge ], [ true, %bb.k ], [ true, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_786number4impl15DecimalQuantity8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::MaybeStackArray.4", align 8 ; 12 uses
  %i.a = alloca [100 x i8], align 16              ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_786number4impl15DecimalQuantity8toStringEv:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i8, ptr %i.w, align 8, !range !5, !noundef !6
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = select i1 %i.y, ptr @.str.19, ptr @.str.20
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = trunc i8 %i.ab to i1
  %i.ad = select i1 %i.ac, ptr @.str.21, ptr @.str.1
  %i.ae = load i32, ptr %i.b, align 8
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = load ptr, ptr %2, align 8
  %spec.select = select i1 %i.af, ptr @.str.2, ptr %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.18, i32 noundef %i.t, i32 noundef %i.v, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ad, ptr noundef %spec.select, ptr noundef nonnull @.str.22, i32 noundef %i.ai) #21 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef 0) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ak = load i8, ptr %i.g, align 4
  %.not.i.i7 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i7, label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit, label %bb.j

bb.e:                                             ; preds = %.lr.ph, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 3 uses
  %i.al = phi i32 [ %i.m, %.lr.ph ], [ %i.bf, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %i.al, %i.an                    ; 5 uses
  %i.ap = load i8, ptr %i.o, align 8, !range !5, !noundef !6
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ar = icmp sgt i32 %i.ao, -1
  %.not.i = icmp slt i32 %i.ao, %i.al
  %or.cond10.i = and i1 %i.ar, %.not.i
  br i1 %or.cond10.i, label %bb.g, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.p, align 8
  %i.at = zext nneg i32 %i.ao to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.h:                                             ; preds = %bb.e
  %or.cond.i = icmp ugt i32 %i.ao, 15
  br i1 %or.cond.i, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.p, align 8
  %i.ax = shl nuw nsw i32 %i.ao, 2
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %i.aw, %i.ay
  %i.ba = trunc i64 %i.az to i8
  %i.bb = and i8 %i.ba, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i8 [ %i.bb, %bb.i ], [ %i.av, %bb.g ], [ 0, %bb.f ], [ 0, %bb.h ]
  %i.bc = add i8 %.0.i, 48
  %i.bd = load ptr, ptr %2, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv
  store i8 %i.bc, ptr %i.be, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr %i.b, align 8             ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.e, label %._crit_edge, !llvm.loop !55

bb.j:                                             ; preds = %._crit_edge
  %i.bi = load ptr, ptr %2, align 8
  call void @uprv_free_78(ptr noundef %i.bi) #21
  br label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit

_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit:     ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString13doLastIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{ptr @_ZN6icu_786number4impl15DecimalQuantityD2Ev}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = !{i64 2150517133}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9, !51, !52}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = distinct !{!53, !9, !52, !51}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
end_hunk_1
