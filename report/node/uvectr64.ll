inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6icu_789UVector647setSizeEi:bb.a
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.x = sext i32 %i.u to i64                     ; 4 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.y = sub nsw i64 %wide.trip.count, %i.x
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv.prol
  store i64 0, ptr %i.aa, align 8
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !11

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %i.ab = sub nsw i64 %i.x, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.ad = load ptr, ptr %i.w, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv
  store i64 0, ptr %i.ae, align 8
  %i.af = load ptr, ptr %i.w, align 8
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i64 0, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.w, align 8
  %i.aj = getelementptr [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  store i64 0, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.w, align 8
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 24
  store i64 0, ptr %i.an, align 8
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph.new, !llvm.loop !8

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit, %bb.b
  store i32 %1, ptr %i.b, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.e, %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN6icu_789UVector64eqERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8
  %.not8 = icmp eq i64 %i.k, %i.m                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not8, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.07 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not8, %bb.b ]
  ret i1 %.07
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6icu_789UVector6412setElementAtEli(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %2, %i.c
  %or.cond = select i1 %i.a, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext nneg i32 %2 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  store i64 %1, ptr %i.h, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_789UVector6415insertElementAtEliR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, -1
  br i1 %i.a, label %bb.b, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8              ; 5 uses
  %.not = icmp sgt i32 %2, %i.c
  br i1 %.not, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw nsw i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.not.i.not = icmp sgt i32 %i.f, %i.c
  br i1 %.not.i.not, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %3, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0                     ; 2 uses
  %i.l = icmp sge i32 %i.c, %i.j
  %or.cond.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %3, align 4
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.m = icmp sgt i32 %i.f, 1073741823
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %3, align 4
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.n = shl nsw i32 %i.f, 1
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.d) ; 2 uses
  %i.o = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 %i.j)
  %.1.i.i = select i1 %i.k, i32 %i.o, i32 %spec.select.i.i ; 3 uses
  %i.p = icmp sgt i32 %.1.i.i, 268435455
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %3, align 4
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext nneg i32 %.1.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call ptr @uprv_realloc_78(ptr noundef %i.r, i64 noundef %i.t) #12 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.k
  store ptr %i.u, ptr %i.q, align 8
  store i32 %.1.i.i, ptr %i.e, align 4
  %.pre = load i32, ptr %i.b, align 8
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit: ; preds = %bb.m, %bb.c
  %i.w = phi i32 [ %.pre, %bb.m ], [ %i.c, %bb.c ] ; 2 uses
  %i.x = icmp sgt i32 %i.w, %2
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = zext nneg i32 %i.w to i64
  %5 = zext nneg i32 %2 to i64
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = zext nneg i32 %2 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ab
  store i64 %1, ptr %i.ac, align 8
  %i.ad = load i32, ptr %i.b, align 8
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.b, align 8
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load i64, ptr %i.ah, align 8
  store i64 %i.ai, ptr %i.ag, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.aj = icmp samesign ugt i64 %indvars.iv.next, %5
  br i1 %i.aj, label %bb.n, label %._crit_edge, !llvm.loop !13

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread: ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_789UVector6417removeAllElementsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((8, 12)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %.not27 = icmp slt i32 %i.e, %1
  br i1 %.not27, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  %i.i = icmp sgt i32 %1, %i.g
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %2, align 4
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %i.e, 1073741823
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %2, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.k = shl nsw i32 %i.e, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %1) ; 2 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.g)
  %.1 = select i1 %i.h, i32 %i.l, i32 %spec.select ; 3 uses
  %i.m = icmp sgt i32 %.1, 268435455
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %2, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = zext nneg i32 %.1 to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call ptr @uprv_realloc_78(ptr noundef %i.o, i64 noundef %i.q) #12 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %2, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.r, ptr %i.n, align 8
  store i32 %.1, ptr %i.d, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l, %bb.d, %bb.a, %bb.h, %bb.f, %bb.c
  %.2 = phi i8 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.l ], [ 1, %bb.m ]
  ret i8 %.2
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_789UVector6414setMaxCapacityEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 3 uses
  %i.a = icmp sgt i32 %1, 268435455
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %spec.store.select, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp sle i32 %i.d, %spec.store.select
  %i.e = icmp slt i32 %1, 1
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext nneg i32 %spec.store.select to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call ptr @uprv_realloc_78(ptr noundef %i.g, i64 noundef %i.i) #12 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.f, align 8
  %i.l = load i32, ptr %i.b, align 8              ; 3 uses
  store i32 %i.l, ptr %i.c, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp sgt i32 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{ptr @_ZN6icu_789UVector64D2Ev}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
end_hunk_0
