inline.NumInlined: 421
inline.NumDeleted: 68
begin_hunk_0_@_ZNK6icu_788Calendar14getRelatedYearER10UErrorCode:bb.a

_ZN6icu_788Calendar8completeER10UErrorCode.exit.i: ; preds = %bb.d
  %i.x = load i8, ptr %i.d, align 8
  %i.y = or i8 %i.x, 6
  store i8 %i.y, ptr %i.d, align 8
  %.pre.i = load i32, ptr %1, align 4
  %i.z = icmp sgt i32 %.pre.i, 0
  br i1 %i.z, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(256) %0) #17
  %i.ag = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.ab, i32 noundef %i.af, ptr noundef nonnull %i.a) #17
  %.not4 = icmp eq i8 %i.ag, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %1, align 4
  br label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.a, align 4
  br label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, %bb.d, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %bb.c, %bb.a, %bb.g, %bb.f
  %.0 = phi i32 [ %i.ah, %bb.g ], [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i ], [ 0, %bb.d ], [ 0, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare signext i8 @uprv_add32_overflow_78(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar14setRelatedYearEi(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  store i32 %1, ptr %i.b, align 4
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(256) %0) #17
  %i.g = sub nsw i32 0, %i.f
  %i.h = call signext i8 @uprv_add32_overflow_78(i32 noundef %1, i32 noundef %i.g, ptr noundef nonnull %i.b) #17
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.b, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 8
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.i, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.r = load i8, ptr %i.q, align 8               ; 2 uses
  %i.s = icmp eq i8 %i.r, 127
  br i1 %i.s, label %bb.e, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i = load i8, ptr %i.q, align 8
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i8 [ %.pre.i, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.u = add i8 %i.t, 1
  store i8 %i.u, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 123
  store i8 %i.t, ptr %i.v, align 1
  %i.w = load i8, ptr %i.j, align 8
  %i.x = and i8 %i.w, -12
  store i8 %i.x, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar24getRelatedYearDifferenceEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar5clearE19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1
  switch i32 %1, label %bb.g [
    i32 2, label %bb.e
    i32 23, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 0, ptr %i.n, align 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 106
  store i8 0, ptr %i.p, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %i.q = load i8, ptr %i.b, align 8
  %i.r = and i8 %i.q, -16
  store i8 %i.r, ptr %i.b, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_788Calendar5isSetE19UCalendarDateFields(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
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
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp ne i8 %i.g, 0
  %i.i = zext i1 %i.h to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ %i.i, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar11newestStampE19UCalendarDateFieldsS1_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %.not11 = icmp sgt i32 %1, %2
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %4 = sext i32 %2 to i64                         ; 2 uses
  %5 = sub nsw i64 %4, %i.b
  %i.c = add nsw i64 %5, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, -8                       ; 3 uses
  %i.d = add nsw i64 %n.vec, %i.b
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.i, %vector.body ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1
  %wide.load17 = load <4 x i8>, ptr %i.e, align 1
  %i.f = sext <4 x i8> %wide.load to <4 x i32>
  %i.g = sext <4 x i8> %wide.load17 to <4 x i32>
  %i.h = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.f) ; 2 uses
  %i.i = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi16, <4 x i32> %i.g) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.h, <4 x i32> %i.i)
  %i.k = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.b, %.lr.ph ], [ %i.d, %middle.block ]
  %.0912.ph = phi i32 [ %3, %.lr.ph ], [ %i.k, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.09.lcssa = phi i32 [ %3, %bb.a ], [ %i.k, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i32 %.09.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0912 = phi i32 [ %spec.select, %scalar.ph ], [ %.0912.ph, %scalar.ph.preheader ]
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1
  %i.n = sext i8 %i.m to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0912, i32 %i.n) ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %4
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !26
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar8pinFieldE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 23
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #17 ; 2 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #17 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = zext nneg i32 %1 to i64                  ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = icmp sgt i32 %i.p, %i.h
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 8
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 256
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #17, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.h, ptr %i.o, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.y = load i8, ptr %i.x, align 8               ; 2 uses
  %i.z = icmp eq i8 %i.y, 127
  br i1 %i.z, label %bb.h, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i = load i8, ptr %i.x, align 8
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit: ; preds = %bb.g, %bb.h
  %i.aa = phi i8 [ %.pre.i, %bb.h ], [ %i.y, %bb.g ] ; 2 uses
  %i.ab = add i8 %i.aa, 1
  store i8 %i.ab, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.n
  store i8 %i.aa, ptr %i.ad, align 1
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 256
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 %i.l, ptr %i.o, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 8             ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 127
  br i1 %i.ap, label %bb.m, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23

bb.m:                                             ; preds = %bb.l
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %0)
  %.pre.i22 = load i8, ptr %i.an, align 8
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23: ; preds = %bb.l, %bb.m
  %i.aq = phi i8 [ %.pre.i22, %bb.m ], [ %i.ao, %bb.l ] ; 2 uses
  %i.ar = add i8 %i.aq, 1
  store i8 %i.ar, ptr %i.an, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.n
  store i8 %i.aq, ptr %i.at, align 1
  %i.au = load i8, ptr %i.ah, align 8
  %i.av = and i8 %i.au, -12
  store i8 %i.av, ptr %i.ah, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit23, %bb.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar13computeFieldsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load i32, ptr %1, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load double, ptr %i.h, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(72) %i.k, double noundef %i.i, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %i.o = load i32, ptr %1, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 4
  %i.r = load i32, ptr %i.d, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 109
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i8 0, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 111
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.w, i8 1, i64 12, i1 false)
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 127
  store i8 0, ptr %i.y, align 1
  %i.z = add nsw i32 %i.r, %i.q
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fadd double %i.i, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ac = call noundef double @_ZN6icu_789ClockMath11floorDivideEdiPi(double noundef %i.ab, i32 noundef 86400000, ptr noundef nonnull %i.e) #17
  %i.ad = fadd double %i.ac, f0x41429EC600000000  ; 3 uses
  %i.ae = fcmp ogt double %i.ad, f0x41DFFFFFFFC00000
  %i.af = fcmp olt double %i.ad, f0xC1E0000000000000
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.ag = fptosi double %i.ad to i32              ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 1, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ag, ptr %i.a, align 4
  %i.aj = load i32, ptr %1, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.f, label %_ZN6icu_788Calendar22computeGregorianFieldsEiR10UErrorCode.exit

bb.f:                                             ; preds = %bb.e
  %i.al = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.ag, i32 noundef -2440588, ptr noundef nonnull %i.a) #17
  %.not5.i = icmp eq i8 %i.al, 0
  br i1 %.not5.i, label %bb.h, label %bb.g
end_hunk_0
begin_hunk_1_@_ZNK6icu_788Calendar10getMinimumE19UCalendarDateFields:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 0) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar10getMaximumENS0_11EDateFieldsE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 3) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar10getMaximumE19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 3) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar18getGreatestMinimumENS0_11EDateFieldsE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 1) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar18getGreatestMinimumE19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 1) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar15getLeastMaximumENS0_11EDateFieldsE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 2) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar15getLeastMaximumE19UCalendarDateFields(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef 2) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar16getActualMinimumENS0_11EDateFieldsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #17
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar8getLimitE19UCalendarDateFieldsNS0_10ELimitTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 7, label %bb.b
    i32 9, label %bb.b
    i32 10, label %bb.b
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 13, label %bb.b
    i32 14, label %bb.b
    i32 15, label %bb.b
    i32 16, label %bb.b
    i32 18, label %bb.b
    i32 20, label %bb.b
    i32 21, label %bb.b
    i32 22, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = zext nneg i32 %1 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L15kCalendarLimitsE, i64 %i.a
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  switch i32 %2, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.g = load i8, ptr %i.f, align 1
  %i.h = icmp eq i8 %i.g, 1
  %i.i = zext i1 %i.h to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 155
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 5, i32 noundef %2) #17
  %i.q = icmp eq i32 %2, 2
  %.015.in.v = select i1 %i.q, i32 7, i32 13
  %reass.sub = sub nsw i32 %.015.in.v, %i.l
  %.015.in = add i32 %reass.sub, %i.p
  %.015 = sdiv i32 %.015.in, 7
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 304
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, i32 noundef %2) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.f, %bb.b
  %.0 = phi i32 [ %i.u, %bb.f ], [ %i.e, %bb.b ], [ %i.i, %bb.d ], [ %.015, %bb.e ], [ %2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_788Calendar16getActualMinimumE19UCalendarDateFieldsR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 23
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) #17 ; 4 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %1) #17 ; 2 uses
  %i.l = icmp eq i32 %i.g, %i.k
  br i1 %i.l, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(256) %0) #17 ; 14 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %2, align 4
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 152 ; 9 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = or i8 %i.s, 16
  store i8 %i.t, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = zext nneg i32 %1 to i64                  ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.n
  %.031 = phi i32 [ %i.g, %bb.g ], [ %i.bh, %bb.n ] ; 5 uses
  %.0 = phi i32 [ %i.g, %bb.g ], [ %.031, %bb.n ]
  %i.aa = load i8, ptr %i.r, align 8
  %i.ab = and i8 %i.aa, 8
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4
  %i.ac = load ptr, ptr %i.p, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(256) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #17, !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %.031, ptr %i.w, align 4
  %i.af = load i8, ptr %i.x, align 8              ; 2 uses
  %i.ag = icmp eq i8 %i.af, 127
  br i1 %i.ag, label %bb.k, label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_788Calendar16recalculateStampEv(ptr noundef nonnull align 8 dereferenceable(256) %i.p)
  %.pre.i = load i8, ptr %i.x, align 8
  br label %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit

_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit: ; preds = %bb.j, %bb.k
  %i.ah = phi i8 [ %.pre.i, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  %i.ai = add i8 %i.ah, 1
  store i8 %i.ai, ptr %i.x, align 8
  store i8 %i.ah, ptr %i.z, align 1
  %i.aj = load i8, ptr %i.r, align 8
  %i.ak = and i8 %i.aj, -12
  store i8 %i.ak, ptr %i.r, align 8
  %i.al = load i32, ptr %2, align 4
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.l, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit

bb.l:                                             ; preds = %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit
  %i.an = load ptr, ptr %i.p, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(256) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %2) #17, !inline_history !21
  %i.aq = load i32, ptr %2, align 4
  %i.ar = icmp slt i32 %i.aq, 1
  br i1 %i.ar, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i: ; preds = %bb.l
  %i.as = load i8, ptr %i.r, align 8              ; 2 uses
  %i.at = and i8 %i.as, 20
  %or.cond.not.i.i.i = icmp eq i8 %i.at, 4
  %.v.i.i.i = select i1 %or.cond.not.i.i.i, i8 -10, i8 -12
  %i.au = and i8 %.v.i.i.i, %i.as                 ; 2 uses
  %i.av = or disjoint i8 %i.au, 1
  store i8 %i.av, ptr %i.r, align 8
  %.pre.i.i = load i32, ptr %2, align 4
  %i.aw = icmp slt i32 %.pre.i.i, 1
  br i1 %i.aw, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i
  %i.ax = and i8 %i.au, 2
  %.not7.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not7.i.i, label %bb.m, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread18.i

bb.m:                                             ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i
  %i.ay = load ptr, ptr %i.p, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 256
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(256) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %2) #17, !inline_history !22
  %i.bb = load i32, ptr %2, align 4
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit

_ZN6icu_788Calendar8completeER10UErrorCode.exit.i: ; preds = %bb.m
  %i.bd = load i8, ptr %i.r, align 8
  %i.be = or i8 %i.bd, 6
  store i8 %i.be, ptr %i.r, align 8
  %.pre.i42 = load i32, ptr %2, align 4
  %i.bf = icmp sgt i32 %.pre.i42, 0
  br i1 %i.bf, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread18.i

_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread18.i: ; preds = %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i
  %i.bg = load i32, ptr %i.w, align 4
  br label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit

_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit: ; preds = %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit, %bb.l, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, %bb.m, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread18.i
  %.0.i = phi i32 [ 0, %_ZN6icu_788Calendar3setE19UCalendarDateFieldsi.exit ], [ 0, %bb.l ], [ %i.bg, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread18.i ], [ 0, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i ], [ 0, %bb.m ], [ 0, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i ]
  %.not38 = icmp eq i32 %.0.i, %.031
  br i1 %.not38, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit
  %i.bh = add nsw i32 %.031, -1                   ; 2 uses
  %.not39 = icmp slt i32 %i.bh, %i.k
  br i1 %.not39, label %bb.o, label %bb.h, !llvm.loop !29

bb.o:                                             ; preds = %bb.n, %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit
  %.1 = phi i32 [ %.0, %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit ], [ %.031, %bb.n ]
  %i.bi = load ptr, ptr %i.p, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(256) %i.p) #17
  %i.bl = load i32, ptr %2, align 4
  %.inv = icmp sgt i32 %i.bl, 0
  %.029 = select i1 %.inv, i32 0, i32 %.1
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.o, %bb.f, %bb.a, %bb.c
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.g, %bb.d ], [ 0, %bb.f ], [ %.029, %bb.o ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_788Calendar14inDaylightTimeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef signext i8 %i.g(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #17
  %.not4 = icmp ne i8 %i.h, 0
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %i.i, 1
  %or.cond = select i1 %.not4, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.l = load i8, ptr %i.k, align 8               ; 2 uses
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #17, !inline_history !16
  %i.q = load i32, ptr %1, align 4
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i: ; preds = %bb.d
  %i.s = load i8, ptr %i.k, align 8               ; 2 uses
  %i.t = and i8 %i.s, 20
  %or.cond.not.i.i = icmp eq i8 %i.t, 4
  %.v.i.i = select i1 %or.cond.not.i.i, i8 -10, i8 -12
  %i.u = and i8 %.v.i.i, %i.s
  %i.v = or disjoint i8 %i.u, 1                   ; 2 uses
  store i8 %i.v, ptr %i.k, align 8
  %.pre.i = load i32, ptr %1, align 4
  %i.w = icmp slt i32 %.pre.i, 1
  br i1 %i.w, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i, %bb.c
  %i.x = phi i8 [ %i.l, %bb.c ], [ %i.v, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i ]
  %i.y = and i8 %i.x, 2
  %.not7.i = icmp eq i8 %i.y, 0
  br i1 %.not7.i, label %bb.e, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread9

bb.e:                                             ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #17, !inline_history !17
  %i.ac = load i32, ptr %1, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread

_ZN6icu_788Calendar8completeER10UErrorCode.exit:  ; preds = %bb.e
  %i.ae = load i8, ptr %i.k, align 8
  %i.af = or i8 %i.ae, 6
  store i8 %i.af, ptr %i.k, align 8
  %.pre = load i32, ptr %1, align 4
  %i.ag = icmp sgt i32 %.pre, 0
  br i1 %i.ag, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread9

_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread9: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i, %_ZN6icu_788Calendar8completeER10UErrorCode.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = zext i1 %i.aj to i8
  br label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread

_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread: ; preds = %bb.e, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i, %bb.d, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread9, %_ZN6icu_788Calendar8completeER10UErrorCode.exit, %bb.a, %bb.b
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.ak, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.thread9 ], [ 0, %_ZN6icu_788Calendar8completeER10UErrorCode.exit ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_788Calendar18inTemporalLeapYearER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 6, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %i.e = icmp eq i32 %i.d, 366
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_788Calendar20getTemporalMonthCodeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  %i.e = trunc i8 %i.d to i1
  br i1 %i.e, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #17, !inline_history !21
  %i.i = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i: ; preds = %bb.c
  %i.k = load i8, ptr %i.c, align 8               ; 2 uses
  %i.l = and i8 %i.k, 20
  %or.cond.not.i.i.i = icmp eq i8 %i.l, 4
  %.v.i.i.i = select i1 %or.cond.not.i.i.i, i8 -10, i8 -12
  %i.m = and i8 %.v.i.i.i, %i.k
  %i.n = or disjoint i8 %i.m, 1                   ; 2 uses
  store i8 %i.n, ptr %i.c, align 8
  %.pre.i.i = load i32, ptr %1, align 4
  %i.o = icmp slt i32 %.pre.i.i, 1
  br i1 %i.o, label %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, %bb.b
  %i.p = phi i8 [ %i.d, %bb.b ], [ %i.n, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i ]
  %i.q = and i8 %i.p, 2
  %.not7.i.i = icmp eq i8 %i.q, 0
  br i1 %.not7.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #17, !inline_history !22
  %i.u = load i32, ptr %1, align 4
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZN6icu_788Calendar8completeER10UErrorCode.exit.i: ; preds = %bb.d
  %i.w = load i8, ptr %i.c, align 8
  %i.x = or i8 %i.w, 6
  store i8 %i.x, ptr %i.c, align 8
  %.pre.i = load i32, ptr %1, align 4
  %i.y = icmp sgt i32 %.pre.i, 0
  br i1 %i.y, label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit._crit_edge.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr @_ZN6icu_78L19gTemporalMonthCodesE, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread

_ZNK6icu_788Calendar3getE19UCalendarDateFieldsR10UErrorCode.exit.thread: ; preds = %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i, %bb.d, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i, %bb.c, %bb.a, %bb.e
  %.0 = phi ptr [ %i.ad, %bb.e ], [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZN6icu_788Calendar8completeER10UErrorCode.exit.i ], [ null, %bb.d ], [ null, %_ZN6icu_788Calendar10updateTimeER10UErrorCode.exit.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_788Calendar20setTemporalMonthCodeEPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %2, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 3
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1
  %i.h = icmp eq i8 %i.g, 77
  br i1 %i.h, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %bb.c
end_hunk_1
