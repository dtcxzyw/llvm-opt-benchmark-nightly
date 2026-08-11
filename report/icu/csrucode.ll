inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZNK6icu_7822CharsetRecog_UTF_16_BE5matchEPNS_9InputTextEPNS_12CharsetMatchE:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 4 uses
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.d, i32 30)
  %i.f = add nsw i32 %i.e, -1
  %i.g = icmp sgt i32 %i.d, 1
  br i1 %i.g, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = load i8, ptr %i.b, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i16
  %i.n = or disjoint i16 %i.j, %i.m               ; 3 uses
  switch i16 %i.n, label %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel [
    i16 -257, label %.thread
    i16 0, label %.thread.fold.split
  ]

_ZN6icu_78L16adjustConfidenceEDsi.exit.peel:      ; preds = %.lr.ph.preheader
  %i.o = add i16 %i.n, -32
  %or.cond.i.peel = icmp ult i16 %i.o, 224
  %i.p = icmp eq i16 %i.n, 10
  %or.cond5.i.peel = or i1 %i.p, %or.cond.i.peel
  %spec.select.i.peel = select i1 %or.cond5.i.peel, i32 20, i32 10 ; 2 uses
  %i.q = icmp samesign ugt i32 %i.d, 3
  br i1 %i.q, label %.lr.ph.peel.next, label %.thread

.lr.ph.peel.next:                                 ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ 2, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 2 uses
  %.036 = phi i32 [ %i.ae, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = zext i8 %i.s to i16
  %i.u = shl nuw i16 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %i.x = zext i8 %i.w to i16
  %i.y = or disjoint i16 %i.u, %i.x               ; 3 uses
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.peel.next
  %i.aa = tail call i32 @llvm.usub.sat.i32(i32 %.036, i32 10)
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

bb.c:                                             ; preds = %.lr.ph.peel.next
  %i.ab = add i16 %i.y, -32
  %or.cond.i = icmp ult i16 %i.ab, 224
  %i.ac = icmp eq i16 %i.y, 10
  %or.cond5.i = or i1 %i.ac, %or.cond.i
  %i.ad = add nuw nsw i32 %.036, 10
  %spec.select.i = select i1 %or.cond5.i, i32 %i.ad, i32 %.036
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

_ZN6icu_78L16adjustConfidenceEDsi.exit:           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.aa, %bb.b ], [ %spec.select.i, %bb.c ]
  %i.ae = tail call noundef range(i32 0, 101) i32 @llvm.umin.i32(i32 %.0.i, i32 100) ; 3 uses
  %.off = add nsw i32 %i.ae, -1
  %switch = icmp ult i32 %.off, 99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = trunc nuw i64 %indvars.iv.next to i32
  %i.ag = icmp sgt i32 %i.f, %i.af
  %or.cond = select i1 %switch, i1 %i.ag, i1 false
  br i1 %or.cond, label %.lr.ph.peel.next, label %.thread, !llvm.loop !15

.thread.fold.split:                               ; preds = %.lr.ph.preheader
  br label %.thread

.thread:                                          ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit, %.lr.ph.preheader, %.thread.fold.split, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %bb.a
  %.2 = phi i32 [ 10, %bb.a ], [ 100, %.lr.ph.preheader ], [ 0, %.thread.fold.split ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ], [ %i.ae, %_ZN6icu_78L16adjustConfidenceEDsi.exit ] ; 2 uses
  %i.ah = icmp slt i32 %i.d, 4
  %i.ai = icmp samesign ult i32 %.2, 100
  %or.cond6 = and i1 %i.ah, %i.ai
  %spec.store.select = select i1 %or.cond6, i32 0, i32 %.2 ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %spec.store.select, ptr noundef null, ptr noundef null)
  %i.aj = icmp ne i32 %spec.store.select, 0
  %i.ak = zext i1 %i.aj to i8
  ret i8 %i.ak
}

declare void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822CharsetRecog_UTF_16_LED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7822CharsetRecog_UTF_16_LED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822CharsetRecog_UTF_16_LE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7822CharsetRecog_UTF_16_LE5matchEPNS_9InputTextEPNS_12CharsetMatchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 5 uses
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.d, i32 30)
  %i.f = add nsw i32 %i.e, -1
  %i.g = icmp sgt i32 %i.d, 1
  br i1 %i.g, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = load i16, ptr %i.b, align 1              ; 3 uses
  switch i16 %i.h, label %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel [
    i16 -257, label %bb.b
    i16 0, label %.thread
  ]

_ZN6icu_78L16adjustConfidenceEDsi.exit.peel:      ; preds = %.lr.ph.preheader
  %i.i = add i16 %i.h, -32
  %or.cond.i.peel = icmp ult i16 %i.i, 224
  %i.j = icmp eq i16 %i.h, 10
  %or.cond5.i.peel = or i1 %i.j, %or.cond.i.peel
  %spec.select.i.peel = select i1 %or.cond5.i.peel, i32 20, i32 10 ; 2 uses
  %i.k = icmp samesign ugt i32 %i.d, 3
  br i1 %i.k, label %.lr.ph.peel.next, label %.thread

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.l = icmp samesign ugt i32 %i.d, 3
  br i1 %i.l, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = icmp eq i8 %i.q, 0
  %spec.select = select i1 %i.r, i32 0, i32 100
  br label %.thread

.lr.ph.peel.next:                                 ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ 2, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 2 uses
  %.039 = phi i32 [ %i.z, %_ZN6icu_78L16adjustConfidenceEDsi.exit ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 1              ; 3 uses
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.peel.next
  %i.v = tail call i32 @llvm.usub.sat.i32(i32 %.039, i32 10)
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

bb.f:                                             ; preds = %.lr.ph.peel.next
  %i.w = add i16 %i.t, -32
  %or.cond.i = icmp ult i16 %i.w, 224
  %i.x = icmp eq i16 %i.t, 10
  %or.cond5.i = or i1 %i.x, %or.cond.i
  %i.y = add nuw nsw i32 %.039, 10
  %spec.select.i = select i1 %or.cond5.i, i32 %i.y, i32 %.039
  br label %_ZN6icu_78L16adjustConfidenceEDsi.exit

_ZN6icu_78L16adjustConfidenceEDsi.exit:           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.v, %bb.e ], [ %spec.select.i, %bb.f ]
  %i.z = tail call noundef range(i32 0, 101) i32 @llvm.umin.i32(i32 %.0.i, i32 100) ; 3 uses
  %.off = add nsw i32 %i.z, -1
  %switch = icmp ult i32 %.off, 99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aa = trunc nuw i64 %indvars.iv.next to i32
  %i.ab = icmp sgt i32 %i.f, %i.aa
  %or.cond = select i1 %switch, i1 %i.ab, i1 false
  br i1 %or.cond, label %.lr.ph.peel.next, label %.thread, !llvm.loop !18

.thread:                                          ; preds = %_ZN6icu_78L16adjustConfidenceEDsi.exit, %.lr.ph.preheader, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel, %bb.a, %bb.c, %bb.d, %bb.b
  %.3 = phi i32 [ %spec.select, %bb.d ], [ 100, %bb.b ], [ 100, %bb.c ], [ 10, %bb.a ], [ 0, %.lr.ph.preheader ], [ %spec.select.i.peel, %_ZN6icu_78L16adjustConfidenceEDsi.exit.peel ], [ %i.z, %_ZN6icu_78L16adjustConfidenceEDsi.exit ] ; 2 uses
  %i.ac = icmp slt i32 %i.d, 4
  %i.ad = icmp samesign ult i32 %.3, 100
  %or.cond6 = and i1 %i.ac, %i.ad
  %spec.store.select = select i1 %or.cond6, i32 0, i32 %.3 ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %1, ptr noundef nonnull %0, i32 noundef %spec.store.select, ptr noundef null, ptr noundef null)
  %i.ae = icmp ne i32 %spec.store.select, 0
  %i.af = zext i1 %i.ae to i8
  ret i8 %i.af
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN6icu_7819CharsetRecog_UTF_32D0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819CharsetRecog_UTF_325matchEPNS_9InputTextEPNS_12CharsetMatchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %3 = sdiv i32 %i.d, 4
  %4 = shl nsw i32 %3, 2
  %i.e = icmp sgt i32 %i.d, 3
  br i1 %i.e, label %.lr.ph.preheader, label %.thread77

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.b, i32 noundef 0)
  %i.j = icmp eq i32 %i.i, 65279                  ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.k = icmp eq i32 %.143, 0                     ; 3 uses
  %or.cond5 = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond5, label %.thread77, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.052 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.03951 = phi i32 [ %i.s, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04250 = phi i32 [ %.143, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.b, i32 noundef %.03951) ; 2 uses
  %or.cond = icmp ugt i32 %i.o, 1114110
  %i.p = and i32 %i.o, 2095104
  %or.cond3 = icmp eq i32 %i.p, 55296
  %or.cond45 = or i1 %or.cond, %or.cond3          ; 2 uses
  %i.q = zext i1 %or.cond45 to i32
  %.143 = add nuw nsw i32 %.04250, %i.q           ; 3 uses
  %not.or.cond45 = xor i1 %or.cond45, true
  %i.r = zext i1 %not.or.cond45 to i32
  %.1 = add nuw nsw i32 %.052, %i.r               ; 4 uses
  %i.s = add nuw nsw i32 %.03951, 4               ; 2 uses
  %i.t = icmp slt i32 %i.s, %4
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !21

bb.b:                                             ; preds = %._crit_edge
  %i.u = mul nuw nsw i32 %.143, 10
  %i.v = icmp samesign ugt i32 %.1, %i.u
  %cond.fr = freeze i1 %i.v                       ; 3 uses
  %or.cond47 = and i1 %i.j, %cond.fr
  br i1 %or.cond47, label %.thread77, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = icmp samesign ugt i32 %.1, 3
  %or.cond7 = select i1 %i.w, i1 %i.k, i1 false
  br i1 %or.cond7, label %.thread77, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp ne i32 %.1, 0
  %or.cond9 = select i1 %i.x, i1 %i.k, i1 false
  br i1 %or.cond9, label %.thread77, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select48 = zext i1 %cond.fr to i8
  %spec.select = select i1 %cond.fr, i32 25, i32 0
  br label %.thread77

.thread77:                                        ; preds = %bb.e, %bb.a, %bb.d, %bb.c, %bb.b, %._crit_edge
  %i.y = phi i8 [ 1, %bb.d ], [ 1, %._crit_edge ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ], [ %spec.select48, %bb.e ]
  %.040 = phi i32 [ 80, %bb.d ], [ 100, %._crit_edge ], [ 80, %bb.b ], [ 100, %bb.c ], [ 0, %bb.a ], [ %spec.select, %bb.e ]
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef %.040, ptr noundef null, ptr noundef null)
  ret i8 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822CharsetRecog_UTF_32_BED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7822CharsetRecog_UTF_32_BED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822CharsetRecog_UTF_32_BE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7822CharsetRecog_UTF_32_BE7getCharEPKhi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 1
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822CharsetRecog_UTF_32_LED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7822CharsetRecog_UTF_32_LED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822CharsetRecog_UTF_32_LE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7822CharsetRecog_UTF_32_LE7getCharEPKhi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = load i32, ptr %i.b, align 1
  ret i32 %i.c
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef ptr @_ZNK6icu_7817CharsetRecognizer11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

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
!8 = !{!9, !10, i64 40}
!9 = !{!"_ZTSN6icu_789InputTextE", !10, i64 0, !5, i64 8, !12, i64 16, !6, i64 24, !10, i64 32, !10, i64 40, !5, i64 48}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!9, !5, i64 48}
!14 = !{!6, !6, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.peeled.count", i32 1}
!18 = distinct !{!18, !16, !17}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !7, i64 0}
!21 = distinct !{!21, !16}
end_hunk_0
