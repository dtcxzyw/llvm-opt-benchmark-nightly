inline.NumInlined: 22
inline.NumDeleted: 4
begin_hunk_0_@_ZN6icu_789UVector327setSizeEi:bb.a
  %.not.i = icmp slt i32 %i.f, %1
  br i1 %.not.i, label %bb.d, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  %i.j = icmp sgt i32 %1, %i.h
  %or.cond.i.i = and i1 %i.i, %i.j
  %i.k = icmp sgt i32 %i.f, 1073741823
  %or.cond = or i1 %i.k, %or.cond.i.i
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = shl nsw i32 %i.f, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %1) ; 2 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.h)
  %.1.i.i = select i1 %i.i, i32 %i.m, i32 %spec.select.i.i ; 3 uses
  %i.n = icmp sgt i32 %.1.i.i, 536870911
  br i1 %i.n, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = zext nneg i32 %.1.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call ptr @uprv_realloc_78(ptr noundef %i.p, i64 noundef %i.r) #19 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.s, ptr %i.o, align 8, !tbaa !17
  store i32 %.1.i.i, ptr %i.e, align 4, !tbaa !15
  %.pre = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.g, %bb.c
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.c, %bb.c ] ; 3 uses
  %i.v = icmp slt i32 %i.u, %1
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.y = sext i32 %i.u to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = xor i32 %i.u, -1
  %i.ab = add i32 %1, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ae, i1 false), !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit, %bb.b
  store i32 %1, ptr %i.b, align 8, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6icu_789UVector32eqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  %.not8 = icmp eq i32 %i.k, %i.m                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not8, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.07 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not8, %bb.b ]
  ret i1 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6icu_789UVector3212setElementAtEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %2, %i.c
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g
  store i32 %1, ptr %i.h, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector3215insertElementAtEiiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 5 uses
  %.not = icmp sgt i32 %2, %i.c
  br i1 %.not, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.not.i.not = icmp sgt i32 %i.f, %i.c
  br i1 %.not.i.not, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %3, align 4, !tbaa !18
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.l = icmp sge i32 %i.c, %i.j
  %or.cond.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.m = icmp sgt i32 %i.f, 1073741823
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.n = shl nsw i32 %i.f, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.d) ; 2 uses
  %i.o = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.j)
  %.1.i.i = select i1 %i.k, i32 %i.o, i32 %spec.select.i.i ; 3 uses
  %i.p = icmp sgt i32 %.1.i.i, 536870911
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = zext nneg i32 %.1.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call ptr @uprv_realloc_78(ptr noundef %i.r, i64 noundef %i.t) #19 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.q, align 8, !tbaa !17
  store i32 %.1.i.i, ptr %i.e, align 4, !tbaa !15
  %.pre = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.m, %bb.c
  %i.w = phi i32 [ %.pre, %bb.m ], [ %i.c, %bb.c ] ; 2 uses
  %i.x = icmp sgt i32 %i.w, %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 3 uses
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit
  %4 = zext i32 %i.w to i64                       ; 5 uses
  %5 = zext nneg i32 %2 to i64                    ; 2 uses
  %6 = add nsw i64 %4, -1
  %7 = tail call i64 @llvm.umin.i64(i64 %6, i64 %5)
  %8 = sub nsw i64 %4, %7                         ; 3 uses
  %min.iters.check = icmp ult i64 %8, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %8, -8                         ; 3 uses
  %9 = sub nsw i64 %4, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %10 = sub i64 %4, %index
  %11 = getelementptr [4 x i8], ptr %i.z, i64 %10 ; 4 uses
  %12 = getelementptr i8, ptr %11, i64 -16
  %13 = getelementptr i8, ptr %11, i64 -32
  %wide.load = load <4 x i32>, ptr %12, align 4, !tbaa !20
  %wide.load22 = load <4 x i32>, ptr %13, align 4, !tbaa !20
  %i.aa = getelementptr i8, ptr %11, i64 -12
  %14 = getelementptr i8, ptr %11, i64 -28
  store <4 x i32> %wide.load, ptr %i.aa, align 4, !tbaa !20
  store <4 x i32> %wide.load22, ptr %14, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %4, %.lr.ph ], [ %9, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit
  %i.ab = zext nneg i32 %2 to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  store i32 %1, ptr %i.ac, align 4, !tbaa !20
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !10
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %16 = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %17 = getelementptr i8, ptr %16, i64 -4
  %18 = load i32, ptr %17, align 4, !tbaa !20
  store i32 %18, ptr %16, align 4, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %19 = icmp samesign ugt i64 %indvars.iv.next, %5
  br i1 %19, label %scalar.ph, label %._crit_edge, !llvm.loop !27

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread: ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789UVector3211containsAllERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  br i1 %i.h, label %.lr.ph.i.preheader, label %.thread

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  %zext = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK6icu_789UVector327indexOfEii.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %_ZNK6icu_789UVector327indexOfEii.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNK6icu_789UVector327indexOfEii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.p, label %.thread, label %bb.b, !llvm.loop !28

_ZNK6icu_789UVector327indexOfEii.exit:            ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph.i, !llvm.loop !29

.thread:                                          ; preds = %_ZNK6icu_789UVector327indexOfEii.exit, %bb.c, %bb.a, %.lr.ph
  %i.q = phi i8 [ 0, %.lr.ph ], [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %_ZNK6icu_789UVector327indexOfEii.exit ]
  ret i8 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK6icu_789UVector327indexOfEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %i.i = icmp eq i32 %1, %i.h
  br i1 %i.i, label %._crit_edge.loopexit.split.loop.exit13, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !28

._crit_edge.loopexit.split.loop.exit13:           ; preds = %bb.b
  %i.j = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit13, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ %i.j, %._crit_edge.loopexit.split.loop.exit13 ], [ -1, %bb.c ]
  ret i32 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789UVector3212containsNoneERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZNK6icu_789UVector327indexOfEii.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  br i1 %i.h, label %.lr.ph.i.preheader, label %_ZNK6icu_789UVector327indexOfEii.exit

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  %zext = zext nneg i32 %i.g to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNK6icu_789UVector327indexOfEii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.p, label %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit, label %bb.b, !llvm.loop !28

_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit: ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK6icu_789UVector327indexOfEii.exit, label %.lr.ph.i, !llvm.loop !30

_ZNK6icu_789UVector327indexOfEii.exit:            ; preds = %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit, %bb.b, %bb.a, %.lr.ph
  %i.q = phi i8 [ 1, %bb.a ], [ 1, %.lr.ph ], [ 0, %bb.b ], [ 1, %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit ]
  ret i8 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector329removeAllERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6icu_789UVector327indexOfEii.exit.thread, %.lr.ph, %bb.a
  %.08.lcssa = phi i8 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %.1, %_ZNK6icu_789UVector327indexOfEii.exit.thread ]
  ret i8 %.08.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK6icu_789UVector327indexOfEii.exit.thread
  %i.k = phi i32 [ %i.ae, %_ZNK6icu_789UVector327indexOfEii.exit.thread ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.l = phi i32 [ %i.af, %_ZNK6icu_789UVector327indexOfEii.exit.thread ], [ %i.i, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK6icu_789UVector327indexOfEii.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %.0815 = phi i8 [ %.1, %_ZNK6icu_789UVector327indexOfEii.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph.i.preheader, label %_ZNK6icu_789UVector327indexOfEii.exit.thread

.lr.ph.i.preheader:                               ; preds = %.lr.ph.split
  %zext = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !20
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.s, label %_ZNK6icu_789UVector327indexOfEii.exit.thread, label %.lr.ph.i, !llvm.loop !28

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.t = trunc nsw i64 %indvars.iv.i to i32
  %i.u = add nsw i32 %i.l, -1                     ; 2 uses
  %i.v = icmp sgt i32 %i.u, %i.t
  br i1 %i.v, label %.lr.ph.i10, label %_ZN6icu_789UVector3215removeElementAtEi.exit

.lr.ph.i10:                                       ; preds = %.preheader.i
  %i.w = and i64 %indvars.iv.i, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ %i.w, %.lr.ph.i10 ], [ %indvars.iv.next.i12, %bb.c ] ; 2 uses
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1 ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i11
  store i32 %i.y, ptr %i.z, align 4, !tbaa !20
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !10
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv.next.i12 to i32
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZN6icu_789UVector3215removeElementAtEi.exit, !llvm.loop !31

_ZN6icu_789UVector3215removeElementAtEi.exit:     ; preds = %bb.c, %.preheader.i
  %.lcssa.i = phi i32 [ %i.u, %.preheader.i ], [ %i.ab, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.f, align 8, !tbaa !10
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZNK6icu_789UVector327indexOfEii.exit.thread

_ZNK6icu_789UVector327indexOfEii.exit.thread:     ; preds = %bb.b, %.lr.ph.split, %_ZN6icu_789UVector3215removeElementAtEi.exit
  %i.ae = phi i32 [ %.pre, %_ZN6icu_789UVector3215removeElementAtEi.exit ], [ %i.k, %.lr.ph.split ], [ %i.k, %bb.b ] ; 2 uses
  %i.af = phi i32 [ %.lcssa.i, %_ZN6icu_789UVector3215removeElementAtEi.exit ], [ %i.l, %.lr.ph.split ], [ %i.l, %bb.b ]
  %.1 = phi i8 [ 1, %_ZN6icu_789UVector3215removeElementAtEi.exit ], [ %.0815, %.lr.ph.split ], [ %.0815, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph.split, label %._crit_edge, !llvm.loop !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6icu_789UVector3215removeElementAtEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = icmp slt i32 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.m, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 8, !tbaa !10
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.j, ptr %i.k, align 4, !tbaa !20
  %i.l = load i32, ptr %i.b, align 8, !tbaa !10
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  %i.n = trunc nuw i64 %indvars.iv.next to i32
  %i.o = icmp sgt i32 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !31

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector329retainAllERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_789UVector3215removeElementAtEi.exit, %bb.a
  %.07.lcssa = phi i8 [ 0, %bb.a ], [ %.1, %_ZN6icu_789UVector3215removeElementAtEi.exit ]
  ret i8 %.07.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector3215removeElementAtEi.exit
  %i.j = phi i32 [ %i.b, %.lr.ph ], [ %i.ac, %_ZN6icu_789UVector3215removeElementAtEi.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_789UVector3215removeElementAtEi.exit ] ; 3 uses
  %.0713 = phi i8 [ 0, %.lr.ph ], [ %.1, %_ZN6icu_789UVector3215removeElementAtEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %i.m = load i32, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %zext = zext nneg i32 %i.m to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20
  %i.q = icmp eq i32 %i.l, %i.p
  br i1 %i.q, label %_ZN6icu_789UVector3215removeElementAtEi.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.r, label %.preheader.i, label %.lr.ph.i, !llvm.loop !28

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %i.s = add nsw i32 %i.j, -1
  %i.t = sext i32 %i.j to i64
  %i.u = icmp slt i64 %indvars.iv, %i.t
  br i1 %i.u, label %.lr.ph.i8, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i8, %.preheader.i
  %.lcssa.i = phi i32 [ %i.s, %.preheader.i ], [ %i.z, %.lr.ph.i8 ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.a, align 8, !tbaa !10
  br label %_ZN6icu_789UVector3215removeElementAtEi.exit

.lr.ph.i8:                                        ; preds = %.preheader.i, %.lr.ph.i8
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10, %.lr.ph.i8 ], [ %indvars.iv.next, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i10
  %i.w = load i32, ptr %i.v, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i9
  store i32 %i.w, ptr %i.x, align 4, !tbaa !20
  %i.y = load i32, ptr %i.a, align 8, !tbaa !10
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  %i.aa = trunc nuw i64 %indvars.iv.next.i10 to i32
  %i.ab = icmp sgt i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i8, label %._crit_edge.i, !llvm.loop !31

_ZN6icu_789UVector3215removeElementAtEi.exit:     ; preds = %.lr.ph.i, %._crit_edge.i
  %i.ac = phi i32 [ %.lcssa.i, %._crit_edge.i ], [ %i.j, %.lr.ph.i ]
  %.1 = phi i8 [ 1, %._crit_edge.i ], [ %.0713, %.lr.ph.i ] ; 2 uses
  %i.ad = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_789UVector3217removeAllElementsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((8, 12)) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789UVector326equalsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !35

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  %.not8 = icmp eq i32 %i.k, %i.m
  br i1 %.not8, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.07 = phi i8 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.07
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !18
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15   ; 3 uses
  %.not27 = icmp slt i32 %i.e, %1
  br i1 %.not27, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  %i.i = icmp sgt i32 %1, %i.g
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %i.e, 1073741823
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.k = shl nsw i32 %i.e, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %1) ; 2 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.g)
  %.1 = select i1 %i.h, i32 %i.l, i32 %spec.select ; 3 uses
  %i.m = icmp sgt i32 %.1, 536870911
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = zext nneg i32 %.1 to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call ptr @uprv_realloc_78(ptr noundef %i.o, i64 noundef %i.q) #19 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.r, ptr %i.n, align 8, !tbaa !17
  store i32 %.1, ptr %i.d, align 4, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.d, %bb.a, %bb.h, %bb.f, %bb.c
  %.2 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bb.m ]
  ret i8 %.2
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector3214setMaxCapacityEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 3 uses
  %i.a = icmp sgt i32 %1, 536870911
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %spec.store.select, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.not = icmp sle i32 %i.d, %spec.store.select
  %i.e = icmp slt i32 %1, 1
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = zext nneg i32 %spec.store.select to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = tail call ptr @uprv_realloc_78(ptr noundef %i.g, i64 noundef %i.i) #19 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.f, align 8, !tbaa !17
  %i.l = load i32, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !10
  %i.o = icmp sgt i32 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.m, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector3212sortedInsertEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10   ; 8 uses
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01624 = phi i32 [ %i.b, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %.01723 = phi i32 [ 0, %.lr.ph ], [ %.118, %bb.b ] ; 2 uses
  %i.e = add nsw i32 %.01624, %.01723
  %i.f = sdiv i32 %i.e, 2                         ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !20
  %i.j = icmp sgt i32 %i.i, %1                    ; 2 uses
  %i.k = add nsw i32 %i.f, 1
  %.118 = select i1 %i.j, i32 %.01723, i32 %i.k   ; 3 uses
  %.1 = select i1 %i.j, i32 %i.f, i32 %.01624     ; 2 uses
  %.not = icmp eq i32 %.118, %.1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.017.lcssa = phi i32 [ 0, %bb.a ], [ %.118, %bb.b ] ; 3 uses
  %i.l = add nsw i32 %i.b, 1
  %i.m = icmp slt i32 %i.b, -1                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %.not.i = icmp sle i32 %i.o, %i.b               ; 2 uses
  %or.cond.i = select i1 %i.m, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %bb.c, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit

bb.c:                                             ; preds = %._crit_edge
  %i.p = load i32, ptr %2, align 4, !tbaa !18
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.f:                                             ; preds = %bb.d
  br i1 %.not.i, label %bb.g, label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !16   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0                     ; 2 uses
  %i.u = icmp sge i32 %i.b, %i.s
  %or.cond.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 15, ptr %2, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.v = icmp sgt i32 %i.o, 1073741823
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.w = shl nsw i32 %i.o, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.l) ; 2 uses
  %i.x = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.s)
  %.1.i.i = select i1 %i.t, i32 %i.x, i32 %spec.select.i.i ; 3 uses
  %i.y = icmp sgt i32 %.1.i.i, 536870911
  br i1 %i.y, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = zext nneg i32 %.1.i.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = tail call ptr @uprv_realloc_78(ptr noundef %i.aa, i64 noundef %i.ac) #19 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 7, ptr %2, align 4, !tbaa !18
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

bb.o:                                             ; preds = %bb.m
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !17
  store i32 %.1.i.i, ptr %i.n, align 4, !tbaa !15
  %.pre = load i32, ptr %i.a, align 8, !tbaa !10
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.o, %bb.f, %._crit_edge
  %i.af = phi i32 [ %.pre, %bb.o ], [ %i.b, %bb.f ], [ %i.b, %._crit_edge ] ; 3 uses
  %i.ag = icmp sgt i32 %i.af, %.017.lcssa
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  br i1 %i.ag, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit
  %i.aj = sext i32 %i.af to i64
  %i.ak = shl nsw i64 %i.aj, 2                    ; 2 uses
  %i.al = xor i32 %.017.lcssa, -1
  %i.am = add i32 %i.af, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 3 uses
  %i.ap = sub nsw i64 %i.ak, %i.ao
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ap
  %i.aq = add nsw i64 %i.ak, -4
  %i.ar = sub nsw i64 %i.aq, %i.ao
  %scevgep28 = getelementptr i8, ptr %i.ai, i64 %i.ar
  %i.as = add nuw nsw i64 %i.ao, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep28, i64 %i.as, i1 false), !tbaa !20
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit, %.lr.ph26
  %i.at = sext i32 %.017.lcssa to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.at
  store i32 %1, ptr %i.au, align 4, !tbaa !20
  %i.av = load i32, ptr %i.a, align 8, !tbaa !10
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.a, align 8, !tbaa !10
  br label %_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread

_ZN6icu_789UVector3214ensureCapacityEiR10UErrorCode.exit.thread: ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.c, %bb.e, %._crit_edge27
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { allocsize(0) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"_ZTSN6icu_789UVector32E", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"p1 int", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!11, !5, i64 12}
!16 = !{!11, !5, i64 16}
!17 = !{!11, !13, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ZTS10UErrorCode", !6, i64 0}
!20 = !{!5, !5, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !22, !26, !25}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22, !33}
!33 = !{!"llvm.loop.unswitch.partial.disable"}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
end_hunk_0
