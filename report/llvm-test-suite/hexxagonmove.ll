Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/hexxagonmove?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
begin_hunk_0_@_ZN16HexxagonMoveList7addMoveER12HexxagonMove:bb.a
  %i.t = load i64, ptr %1, align 4
  store i64 %i.t, ptr %i.s, align 4
  %i.u = load i32, ptr %0, align 8, !tbaa !13
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %0, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z7comparePKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = sub nsw i32 %i.b, %i.d
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree uwtable
define dso_local void @_ZN16HexxagonMoveList13sortListQuickEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = load i32, ptr %0, align 8, !tbaa !13
  %i.d = sext i32 %i.c to i64
  tail call void @qsort(ptr noundef %i.b, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @_Z7comparePKvS0_)
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16HexxagonMoveList8sortListEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.preheader, label %.split13.us

.loopexit:                                        ; preds = %bb.c
  %i.d = icmp eq i32 %.2, 0
  br i1 %i.d, label %.split13.us, label %.preheader, !llvm.loop !0

.preheader:                                       ; preds = %bb.a, %.loopexit
  %i.e = phi i32 [ %i.t, %.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph.preheader, label %.split13.us

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre15 = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.g = phi i32 [ %i.e, %.lr.ph.preheader ], [ %i.t, %bb.c ]
  %i.h = phi ptr [ %.pre15, %.lr.ph.preheader ], [ %i.u, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.110 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %bb.c ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !17
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr %i.i, align 4
  %i.q = load i64, ptr %i.l, align 4
  store i64 %i.q, ptr %i.i, align 4
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  store i64 %i.p, ptr %i.s, align 4
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  %.pre16 = load i32, ptr %0, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.t = phi i32 [ %.pre16, %bb.b ], [ %i.g, %.lr.ph ] ; 3 uses
  %i.u = phi ptr [ %.pre, %bb.b ], [ %i.h, %.lr.ph ]
  %.2 = phi i32 [ 1, %bb.b ], [ %.110, %.lr.ph ]  ; 2 uses
  %i.v = add nsw i32 %i.t, -1
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %.loopexit, !llvm.loop !1

.split13.us:                                      ; preds = %.loopexit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z7getTimev() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.timeb, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #13
  %i.a = call i32 @ftime(ptr noundef nonnull %0)  ; 0 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !22
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !23
  %i.f = zext i16 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #13
  ret i32 %i.h
}

declare i32 @ftime(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN16HexxagonMoveList7getMoveEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN16HexxagonMoveList10getNrMovesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z9alphaBetaR13HexxagonBoardiiiPFvvE(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %class.HexxagonBoard, align 4       ; 5 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZN13HexxagonBoard8evaluateEv(ptr noundef nonnull align 4 dereferenceable(16) %0)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN13HexxagonBoard16generateMoveListEv(ptr noundef nonnull align 4 dereferenceable(16) %0) ; 6 uses
  %.not45 = icmp eq ptr %i.b, null
  br i1 %.not45, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @_ZN13HexxagonBoard11countBricksEi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef 0) ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = add nuw nsw i32 %i.c, 20000
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.f = icmp slt i32 %i.c, 0
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = add nsw i32 %i.c, -20000
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.h = tail call noundef i32 @_ZN13HexxagonBoard8evaluateEv(ptr noundef nonnull align 4 dereferenceable(16) %0)
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.i = load i8, ptr @hexx_count, align 1, !tbaa !26
  %i.j = add i8 %i.i, 1                           ; 2 uses
  store i8 %i.j, ptr @hexx_count, align 1, !tbaa !26
  %i.k = icmp eq i8 %i.j, 0
  %i.l = icmp ne ptr %4, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void %4()
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.m = load i32, ptr %i.b, align 8, !tbaa !13
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = icmp sgt i32 %3, -32000
  %i.p = and i1 %i.n, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = add nsw i32 %1, -1
  %i.s = sub nsw i32 0, %3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.03347 = phi i32 [ -32000, %.lr.ph ], [ %.1, %bb.l ] ; 2 uses
  %.03646 = phi i32 [ %2, %.lr.ph ], [ %spec.select, %bb.l ]
  %spec.select = call i32 @llvm.smax.i32(i32 %.03347, i32 %.03646) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN13HexxagonBoardC1ERKS_(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %0)
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = call noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %i.u) ; 0 uses
  %i.w = sub nsw i32 0, %spec.select
  %i.x = call noundef i32 @_Z9alphaBetaR13HexxagonBoardiiiPFvvE(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.w, ptr noundef %4)
  %i.y = sub nsw i32 0, %i.x
  %.1 = call i32 @llvm.smax.i32(i32 %.03347, i32 %i.y) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.b, align 8, !tbaa !13
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  %i.ac = icmp slt i32 %.1, %3
  %6 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %6, label %bb.l, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.033.lcssa = phi i32 [ -32000, %bb.k ], [ %.1, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN16HexxagonMoveListD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 8) #12
  br label %_ZN16HexxagonMoveListD2Ev.exit

_ZN16HexxagonMoveListD2Ev.exit:                   ; preds = %._crit_edge, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #12
  br label %bb.n

bb.n:                                             ; preds = %_ZN16HexxagonMoveListD2Ev.exit, %bb.h, %bb.g, %bb.e, %bb.b
  %.2 = phi i32 [ %i.a, %bb.b ], [ %.033.lcssa, %_ZN16HexxagonMoveListD2Ev.exit ], [ %i.e, %bb.e ], [ %i.g, %bb.g ], [ %i.h, %bb.h ]
  ret i32 %.2
}

declare noundef i32 @_ZN13HexxagonBoard8evaluateEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

declare noundef ptr @_ZN13HexxagonBoard16generateMoveListEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #8

declare noundef i32 @_ZN13HexxagonBoard11countBricksEi(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #8

declare void @_ZN13HexxagonBoardC1ERKS_(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #8

declare noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef dead_on_return %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %struct.timeb, align 8              ; 3 uses
  %6 = alloca %class.HexxagonBoard, align 4       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = call i32 @ftime(ptr noundef nonnull %5)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge30

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !13
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN16HexxagonMoveList8sortListEv.exit
  %i.d = phi i32 [ %.pre, %.preheader.lr.ph ], [ %i.ae, %_ZN16HexxagonMoveList8sortListEv.exit ] ; 2 uses
  %.02329 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.af, %_ZN16HexxagonMoveList8sortListEv.exit ] ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %_ZN16HexxagonMoveList8sortListEv.exit

._crit_edge30:                                    ; preds = %_ZN16HexxagonMoveList8sortListEv.exit, %bb.a
  ret void

._crit_edge:                                      ; preds = %.lr.ph
  %i.f = icmp sgt i32 %i.ap, 1
  br i1 %i.f, label %.preheader.i, label %_ZN16HexxagonMoveList8sortListEv.exit

.loopexit.i:                                      ; preds = %bb.c
  %i.g = icmp eq i32 %.2.i, 0
  br i1 %i.g, label %_ZN16HexxagonMoveList8sortListEv.exit, label %.preheader.i, !llvm.loop !0

.preheader.i:                                     ; preds = %._crit_edge, %.loopexit.i
  %i.h = phi i32 [ %i.y, %.loopexit.i ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.i = phi i32 [ %i.z, %.loopexit.i ], [ %i.ap, %._crit_edge ] ; 2 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZN16HexxagonMoveList8sortListEv.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre15.i = load ptr, ptr %i.c, align 8, !tbaa !14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %i.k = phi i32 [ %i.h, %.lr.ph.preheader.i ], [ %i.y, %bb.c ]
  %i.l = phi i32 [ %i.i, %.lr.ph.preheader.i ], [ %i.z, %bb.c ]
  %i.m = phi ptr [ %.pre15.i, %.lr.ph.preheader.i ], [ %i.aa, %bb.c ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.110.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.2.i, %bb.c ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17
  %i.t = icmp slt i32 %i.p, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.u = load i64, ptr %i.n, align 4
  %i.v = load i64, ptr %i.q, align 4
  store i64 %i.v, ptr %i.n, align 4
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i
  store i64 %i.u, ptr %i.x, align 4
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !14
  %.pre16.i = load i32, ptr %0, align 8, !tbaa !13 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.y = phi i32 [ %.pre16.i, %bb.b ], [ %i.k, %.lr.ph.i ] ; 3 uses
  %i.z = phi i32 [ %.pre16.i, %bb.b ], [ %i.l, %.lr.ph.i ] ; 3 uses
  %i.aa = phi ptr [ %.pre.i, %bb.b ], [ %i.m, %.lr.ph.i ]
  %.2.i = phi i32 [ 1, %bb.b ], [ %.110.i, %.lr.ph.i ] ; 2 uses
  %i.ab = add nsw i32 %i.z, -1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1

_ZN16HexxagonMoveList8sortListEv.exit:            ; preds = %.loopexit.i, %.preheader.i, %.preheader, %._crit_edge
  %i.ae = phi i32 [ %i.d, %.preheader ], [ %i.ap, %._crit_edge ], [ %i.h, %.preheader.i ], [ %i.y, %.loopexit.i ]
  %i.af = add nuw nsw i32 %.02329, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %2
  br i1 %exitcond.not, label %._crit_edge30, label %.preheader, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %.02027 = phi i32 [ %spec.select, %.lr.ph ], [ -32000, %.preheader ]
  %.02126 = phi i32 [ %.122, %.lr.ph ], [ -32000, %.preheader ] ; 2 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %.02126, i32 %.02027) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN13HexxagonBoardC1ERKS_(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = call noundef i32 @_ZN13HexxagonBoard9applyMoveER12HexxagonMove(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(8) %i.ah) ; 0 uses
  %i.aj = sub nsw i32 0, %spec.select
  %i.ak = call noundef i32 @_Z9alphaBetaR13HexxagonBoardiiiPFvvE(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.02329, i32 noundef -32000, i32 noundef %i.aj, ptr noundef %3)
  %i.al = sub nsw i32 0, %i.ak                    ; 2 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !17
  %.122 = call i32 @llvm.smax.i32(i32 %.02126, i32 %i.al) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %0, align 8, !tbaa !13    ; 5 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  %i.as = icmp slt i32 %.122, 32000
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !28
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN16HexxagonMoveList11getBestMoveEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.timeb, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = call i32 @ftime(ptr noundef nonnull %1)  ; 0 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !22
  %i.c = mul nsw i64 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !23
  %i.f = zext i16 %i.e to i64
  %i.g = add nsw i64 %i.c, %i.f
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @srandom(i32 noundef %i.h) #13
  %i.i = load i32, ptr %0, align 8, !tbaa !13
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @srandom(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

end_hunk_0
