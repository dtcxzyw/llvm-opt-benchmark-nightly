inline.NumInlined: 11
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_789UVector647setSizeEi:bb.a
  %.not.i = icmp slt i32 %i.f, %1
  br i1 %.not.i, label %bb.d, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

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
  %.120.i.i = select i1 %i.i, i32 %i.m, i32 %spec.select.i.i ; 3 uses
  %i.n = icmp sgt i32 %.120.i.i, 268435455
  br i1 %i.n, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = zext nneg i32 %.120.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call ptr @uprv_realloc_78(ptr noundef %i.p, i64 noundef %i.r) #17 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.s, ptr %i.o, align 8, !tbaa !17
  store i32 %.120.i.i, ptr %i.e, align 4, !tbaa !15
  %.pre = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.g, %bb.c
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.c, %bb.c ] ; 3 uses
  %i.v = icmp slt i32 %i.u, %1
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.y = sext i32 %i.u to i64
  %i.z = shl nsw i64 %i.y, 3
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = xor i32 %i.u, -1
  %i.ab = add i32 %1, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ae, i1 false), !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit, %bb.b
  store i32 %1, ptr %i.b, align 8, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6icu_789UVector64eqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
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
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %.not8 = icmp eq i64 %i.k, %i.m                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not8, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.07 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not8, %bb.b ]
  ret i1 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6icu_789UVector6412setElementAtEli(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
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
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  store i64 %1, ptr %i.h, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector6415insertElementAtEliR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 5 uses
  %.not = icmp sgt i32 %2, %i.c
  br i1 %.not, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.not.i.not = icmp sgt i32 %i.f, %i.c
  br i1 %.not.i.not, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %3, align 4, !tbaa !18
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.l = icmp sge i32 %i.c, %i.j
  %or.cond.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.m = icmp sgt i32 %i.f, 1073741823
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.n = shl nsw i32 %i.f, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.d) ; 2 uses
  %i.o = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.j)
  %.120.i.i = select i1 %i.k, i32 %i.o, i32 %spec.select.i.i ; 3 uses
  %i.p = icmp sgt i32 %.120.i.i, 268435455
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = zext nneg i32 %.120.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call ptr @uprv_realloc_78(ptr noundef %i.r, i64 noundef %i.t) #17 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %3, align 4, !tbaa !18
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.q, align 8, !tbaa !17
  store i32 %.120.i.i, ptr %i.e, align 4, !tbaa !15
  %.pre = load i32, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.m, %bb.c
  %i.w = phi i32 [ %.pre, %bb.m ], [ %i.c, %bb.c ] ; 10 uses
  %i.x = icmp sgt i32 %i.w, %2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 3 uses
  br i1 %i.x, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %4 = add i32 %i.w, -1
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %6 = sub i32 %i.w, %5                           ; 3 uses
  %min.iters.check = icmp ult i32 %6, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.a
  %7 = add i32 %i.w, -1
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %2)
  %9 = icmp ugt i32 %8, %i.w
  br i1 %9, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %6, -4                         ; 3 uses
  %10 = sub i32 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %11 = sub i32 %i.w, %index
  %12 = zext nneg i32 %11 to i64
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %12 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = getelementptr i8, ptr %i.aa, i64 -32
  %wide.load = load <2 x i64>, ptr %i.ab, align 8, !tbaa !20
  %wide.load22 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr i8, ptr %i.aa, i64 -8
  %i.ae = getelementptr i8, ptr %i.aa, i64 -24
  store <2 x i64> %wide.load, ptr %i.ad, align 8, !tbaa !20
  store <2 x i64> %wide.load22, ptr %i.ae, align 8, !tbaa !20
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.af = icmp eq i32 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.a, %middle.block
  %.015.ph = phi i32 [ %i.w, %vector.scevcheck ], [ %i.w, %.lr.ph.a ], [ %10, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.ag = zext nneg i32 %2 to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ag
  store i64 %1, ptr %i.ah, align 8, !tbaa !20
  %i.ai = add nsw i32 %i.w, 1
  store i32 %i.ai, ptr %i.b, align 8, !tbaa !10
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.015 = phi i32 [ %14, %scalar.ph ], [ %.015.ph, %scalar.ph.preheader ] ; 2 uses
  %13 = zext nneg i32 %.015 to i64
  %i.aj = getelementptr [8 x i8], ptr %i.z, i64 %13 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !20
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !20
  %14 = add nsw i32 %.015, -1                     ; 2 uses
  %i.am = icmp samesign ugt i32 %14, %2
  br i1 %i.am, label %scalar.ph, label %._crit_edge, !llvm.loop !31

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread: ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_789UVector6417removeAllElementsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((8, 12)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
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
  %.120 = select i1 %i.h, i32 %i.l, i32 %spec.select ; 3 uses
  %i.m = icmp sgt i32 %.120, 268435455
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.p = zext nneg i32 %.120 to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr @uprv_realloc_78(ptr noundef %i.o, i64 noundef %i.q) #17 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %2, align 4, !tbaa !18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.r, ptr %i.n, align 8, !tbaa !17
  store i32 %.120, ptr %i.d, align 4, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.d, %bb.a, %bb.h, %bb.f, %bb.c
  %.2 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bb.m ]
  ret i8 %.2
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector6414setMaxCapacityEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 3 uses
  %i.a = icmp sgt i32 %1, 268435455
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
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call ptr @uprv_realloc_78(ptr noundef %i.g, i64 noundef %i.i) #17 ; 2 uses
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

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
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { allocsize(1) }

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
!11 = !{!"_ZTSN6icu_789UVector64E", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24}
!12 = !{!"_ZTSN6icu_787UObjectE"}
!13 = !{!"p1 long", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!11, !5, i64 12}
!16 = !{!11, !5, i64 16}
!17 = !{!11, !13, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ZTS10UErrorCode", !6, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = distinct !{!22, !23, !24, !25}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = distinct !{!28, !23, !24}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23, !24, !25}
!31 = distinct !{!31, !23, !24}
end_hunk_0
