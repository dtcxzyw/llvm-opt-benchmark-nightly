Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uvectr32?download=true
inline.NumInlined: 22
inline.NumDeleted: 4
begin_hunk_0_@_ZNK6icu_789UVector327indexOfEii:bb.a

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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZNK6icu_789UVector327indexOfEii.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNK6icu_789UVector327indexOfEii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.p, label %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit, label %bb.b, !llvm.loop !0

_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit: ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK6icu_789UVector327indexOfEii.exit, label %.lr.ph.i, !llvm.loop !31

_ZNK6icu_789UVector327indexOfEii.exit:            ; preds = %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit, %bb.b, %bb.a, %.lr.ph
  %i.q = phi i8 [ 1, %bb.a ], [ 1, %.lr.ph ], [ 0, %bb.b ], [ 1, %_ZNK6icu_789UVector327indexOfEii.exit.thread.loopexit ]
  ret i8 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector329removeAllERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = load i32, ptr %i.f, align 8, !tbaa !16   ; 2 uses
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
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph.i.preheader, label %_ZNK6icu_789UVector327indexOfEii.exit.thread

.lr.ph.i.preheader:                               ; preds = %.lr.ph.split
  %zext = zext nneg i32 %i.l to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.s, label %_ZNK6icu_789UVector327indexOfEii.exit.thread, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
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
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i11
  store i32 %i.y, ptr %i.z, align 4, !tbaa !22
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !16
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv.next.i12 to i32
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZN6icu_789UVector3215removeElementAtEi.exit, !llvm.loop !1

_ZN6icu_789UVector3215removeElementAtEi.exit:     ; preds = %bb.c, %.preheader.i
  %.lcssa.i = phi i32 [ %i.u, %.preheader.i ], [ %i.ab, %bb.c ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.f, align 8, !tbaa !16
  %.pre = load i32, ptr %i.a, align 8, !tbaa !16
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  %i.e = icmp slt i32 %1, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.m, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 8, !tbaa !16
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.j, ptr %i.k, align 4, !tbaa !22
  %i.l = load i32, ptr %i.b, align 8, !tbaa !16
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  %i.n = trunc nuw i64 %indvars.iv.next to i32
  %i.o = icmp sgt i32 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !1

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector329retainAllERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = zext nneg i32 %i.b to i64
  %.pre16 = load i32, ptr %i.f, align 8, !tbaa !16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6icu_789UVector3215removeElementAtEi.exit, %bb.a
  %.07.lcssa = phi i8 [ 0, %bb.a ], [ %.1, %_ZN6icu_789UVector3215removeElementAtEi.exit ]
  ret i8 %.07.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector3215removeElementAtEi.exit
  %2 = phi i32 [ %.pre16, %.lr.ph ], [ %3, %_ZN6icu_789UVector3215removeElementAtEi.exit ] ; 3 uses
  %i.j = phi i32 [ %i.b, %.lr.ph ], [ %i.ab, %_ZN6icu_789UVector3215removeElementAtEi.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_789UVector3215removeElementAtEi.exit ] ; 3 uses
  %.0713 = phi i8 [ 0, %.lr.ph ], [ %.1, %_ZN6icu_789UVector3215removeElementAtEi.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  %zext = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = icmp eq i32 %i.l, %i.o
  br i1 %i.p, label %_ZN6icu_789UVector3215removeElementAtEi.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.q = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.q, label %.preheader.i, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %bb.c, %bb.b
  %i.r = add nsw i32 %i.j, -1
  %i.s = sext i32 %i.j to i64
  %i.t = icmp slt i64 %indvars.iv, %i.s
  br i1 %i.t, label %.lr.ph.i8, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i8, %.preheader.i
  %.lcssa.i = phi i32 [ %i.r, %.preheader.i ], [ %i.y, %.lr.ph.i8 ] ; 2 uses
  store i32 %.lcssa.i, ptr %i.a, align 8, !tbaa !16
  %.pre = load i32, ptr %i.f, align 8, !tbaa !16
  br label %_ZN6icu_789UVector3215removeElementAtEi.exit

.lr.ph.i8:                                        ; preds = %.preheader.i, %.lr.ph.i8
  %indvars.iv.i9 = phi i64 [ %indvars.iv.next.i10, %.lr.ph.i8 ], [ %indvars.iv.next, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i10
  %i.v = load i32, ptr %i.u, align 4, !tbaa !22
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i9
  store i32 %i.v, ptr %i.w, align 4, !tbaa !22
  %i.x = load i32, ptr %i.a, align 8, !tbaa !16
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  %i.z = trunc nuw i64 %indvars.iv.next.i10 to i32
  %i.aa = icmp sgt i32 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i8, label %._crit_edge.i, !llvm.loop !1

_ZN6icu_789UVector3215removeElementAtEi.exit:     ; preds = %.lr.ph.i, %._crit_edge.i
  %3 = phi i32 [ %.pre, %._crit_edge.i ], [ %2, %.lr.ph.i ]
  %i.ab = phi i32 [ %.lcssa.i, %._crit_edge.i ], [ %i.j, %.lr.ph.i ]
  %.1 = phi i8 [ 1, %._crit_edge.i ], [ %.0713, %.lr.ph.i ] ; 2 uses
  %i.ac = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_789UVector3217removeAllElementsEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((8, 12)) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789UVector326equalsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !35

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !22
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22
  %.not8 = icmp eq i32 %i.k, %i.m
  br i1 %.not8, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.07 = phi i8 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.07
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !21
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !21
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !17   ; 3 uses
  %.not27 = icmp slt i32 %i.e, %1
  br i1 %.not27, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0                     ; 2 uses
  %i.i = icmp sgt i32 %1, %i.g
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 15, ptr %2, align 4, !tbaa !21
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %i.e, 1073741823
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %2, align 4, !tbaa !21
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.k = shl nsw i32 %i.e, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %1) ; 2 uses
  %i.l = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.g)
  %.1 = select i1 %i.h, i32 %i.l, i32 %spec.select ; 3 uses
  %i.m = icmp sgt i32 %.1, 536870911
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %2, align 4, !tbaa !21
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = zext nneg i32 %.1 to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call ptr @uprv_realloc_78(ptr noundef %i.o, i64 noundef %i.q) #19 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %2, align 4, !tbaa !21
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.r, ptr %i.n, align 8, !tbaa !19
  store i32 %.1, ptr %i.d, align 4, !tbaa !17
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
  store i32 %spec.store.select, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %.not = icmp sle i32 %i.d, %spec.store.select
  %i.e = icmp slt i32 %1, 1
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = zext nneg i32 %spec.store.select to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = tail call ptr @uprv_realloc_78(ptr noundef %i.g, i64 noundef %i.i) #19 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.f, align 8, !tbaa !19
  %i.l = load i32, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  store i32 %i.l, ptr %i.c, align 4, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16
  %i.o = icmp sgt i32 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.m, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789UVector3212sortedInsertEiR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not22 = icmp eq i32 %i.b, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01624 = phi i32 [ %i.b, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %.01723 = phi i32 [ 0, %.lr.ph ], [ %.118, %bb.b ] ; 2 uses
  %i.e = add nsw i32 %.01624, %.01723
  %i.f = sdiv i32 %i.e, 2                         ; 3 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
  %i.j = icmp sgt i32 %i.i, %1                    ; 2 uses
  %i.k = add nsw i32 %i.f, 1
end_hunk_0
