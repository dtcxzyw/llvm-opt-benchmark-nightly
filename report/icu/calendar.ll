inline.NumInlined: 469
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6icu_788Calendar3setEiiiiii:bb.a
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit20

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit20: ; preds = %bb.m, %bb.n
  %i.av = phi i8 [ %i.au, %bb.n ], [ %i.ar, %bb.m ]
  %i.aw = phi i8 [ %.pre.i19, %bb.n ], [ %i.ap, %bb.m ] ; 2 uses
  %i.ax = add i8 %i.aw, 1
  store i8 %i.ax, ptr %i.i, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !42
  store i8 %i.av, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_788Calendar14getRelatedYearER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load i32, ptr %1, align 4, !tbaa !19
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1), !inline_history !76
  %i.j = load i32, ptr %1, align 4, !tbaa !19
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i: ; preds = %bb.c
  %i.l = load i8, ptr %i.d, align 8               ; 2 uses
  %i.m = and i8 %i.l, 20
  %or.cond.not.i.i.i = icmp eq i8 %i.m, 4
  %.v.i.i.i = select i1 %or.cond.not.i.i.i, i8 -10, i8 -12
  %i.n = and i8 %.v.i.i.i, %i.l
  %i.o = or disjoint i8 %i.n, 1                   ; 2 uses
  store i8 %i.o, ptr %i.d, align 8
  %.pre.i.i = load i32, ptr %1, align 4, !tbaa !19
  %i.p = icmp slt i32 %.pre.i.i, 1
  br i1 %i.p, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, %bb.b
  %i.q = phi i8 [ %i.e, %bb.b ], [ %i.o, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i ]
  %i.r = and i8 %i.q, 2
  %.not7.i.i = icmp eq i8 %i.r, 0
  br i1 %.not7.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1), !inline_history !77
  %i.v = load i32, ptr %1, align 4, !tbaa !19
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZN6icu_788Calendar8completeER10UErrorCode.exit.i: ; preds = %bb.d
  %i.x = load i8, ptr %i.d, align 8
  %i.y = or i8 %i.x, 6
  store i8 %i.y, ptr %i.d, align 8
  %.pre.i = load i32, ptr %1, align 4, !tbaa !19
  %i.z = icmp sgt i32 %.pre.i, 0
  br i1 %i.z, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !46 ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !46
  %i.ac = load ptr, ptr %0, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.ag = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.ab, i32 noundef %i.af, ptr noundef nonnull %i.a)
  %.not4 = icmp eq i8 %i.ag, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %1, align 4, !tbaa !19
  br label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !46
  br label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, %bb.d, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %bb.c, %bb.a, %bb.g, %bb.f
  %.0 = phi i32 [ %i.ah, %bb.g ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i ], [ 0, %bb.d ], [ 0, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare signext i8 @uprv_add32_overflow_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788Calendar14setRelatedYearEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.b, align 4, !tbaa !46
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %i.g = sub nsw i32 0, %i.f
  %i.h = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef %i.g, ptr noundef nonnull %i.b)
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 4, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 8
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.i, ptr %i.p, align 4, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !35    ; 2 uses
  %i.s = icmp eq i8 %i.r, 127
  br i1 %i.s, label %bb.e, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i = load i8, ptr %i.q, align 8, !tbaa !35
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i8 [ %.pre.i, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = add i8 %i.t, 1
  store i8 %i.u, ptr %i.q, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 %i.t, ptr %i.v, align 1, !tbaa !42
  %i.w = load i8, ptr %i.j, align 8
  %i.x = and i8 %i.w, -12
  store i8 %i.x, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZNK6icu_788Calendar24getRelatedYearDifferenceEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788Calendar5clearE19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %or.cond = icmp ugt i32 %1, 23
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !19
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  store i32 0, ptr %i.j, align 4, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !42
  switch i32 %1, label %bb.g [
    i32 2, label %bb.f
    i32 23, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink8 = phi i64 [ 16, %bb.e ], [ 100, %bb.d ]
  %.sink7 = phi i64 [ 106, %bb.e ], [ 127, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8
  store i32 0, ptr %i.m, align 4, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7
  store i8 0, ptr %i.n, align 1, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.o = load i8, ptr %i.b, align 8
  %i.p = and i8 %i.o, -16
  store i8 %i.p, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_788Calendar5isSetE19UCalendarDateFields(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 23
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !42
  %i.h = icmp ne i8 %i.g, 0
  %i.i = zext i1 %i.h to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.i, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 align 2 {
bb.a:
  %.not11 = icmp sgt i32 %1, %2
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 3 uses
  %i.c = add i32 %2, 1
  %i.d = sub i32 %2, %1                           ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.f, 8589934584               ; 3 uses
  %i.g = add nsw i64 %n.vec, %i.b
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.l, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !42
  %wide.load17 = load <4 x i8>, ptr %i.h, align 1, !tbaa !42
  %i.i = sext <4 x i8> %wide.load to <4 x i32>
  %i.j = sext <4 x i8> %wide.load17 to <4 x i32>
  %i.k = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.i) ; 2 uses
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi16, <4 x i32> %i.j) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.k, <4 x i32> %i.l)
  %i.n = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %.lr.ph ], [ %i.g, %middle.block ]
  %.0912.ph = phi i32 [ %3, %.lr.ph ], [ %i.n, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.09.lcssa = phi i32 [ %3, %bb.a ], [ %i.n, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i32 %.09.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0912 = phi i32 [ %spec.select, %scalar.ph ], [ %.0912.ph, %scalar.ph.preheader ]
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42
  %i.q = sext i8 %i.p to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0912, i32 %i.q) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !81
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_788Calendar8pinFieldE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !19
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 23
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !19
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = zext nneg i32 %1 to i64                  ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !46   ; 2 uses
  %i.q = icmp sgt i32 %i.p, %i.h
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 8
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !19
  %i.u = load ptr, ptr %0, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 256
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.h, ptr %i.o, align 4, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !35    ; 2 uses
  %i.z = icmp eq i8 %i.y, 127
  br i1 %i.z, label %bb.h, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i = load i8, ptr %i.x, align 8, !tbaa !35
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit: ; preds = %bb.g, %bb.h
  %i.aa = phi i8 [ %.pre.i, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %i.ab = add i8 %i.aa, 1
  store i8 %i.ab, ptr %i.x, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.n
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !42
  %i.ae = load i8, ptr %i.r, align 8
  %i.af = and i8 %i.ae, -12
  store i8 %i.af, ptr %i.r, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ag = icmp slt i32 %i.p, %i.l
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = and i8 %i.ai, 8
  %.not.i21 = icmp eq i8 %i.aj, 0
  br i1 %.not.i21, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !19
  %i.ak = load ptr, ptr %0, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
end_hunk_0
